//
// Created by xxd on 9/14/18.
//

#include "HCNetplayerImpl.h"
#include <iostream>
#include <HCNetSDK.h>
#include <cstring>
#include <unistd.h>
#include <PlayM4.h>

using namespace hhit;

static  void  CALLBACK setOriginalstreamCallBack(LONG lRealHandle, DWORD dwDataType, BYTE
*pBuffer, DWORD dwBufSize, void *pUser);

static void CALLBACK DecCBFunMain(int nPort,char* pBuf,int nSize,FRAME_INFO * pFrameInfo, void* nReserved1,int nReserved2);


void HCNetplayerImpl::LoginInfoConvert() {
    strcpy(m_pLoginInfo->sDeviceAddress, m_loginInfo.ip.c_str());
    m_pLoginInfo->wPort = m_loginInfo.port;
    strcpy(m_pLoginInfo->sUserName, m_loginInfo.username.c_str());
    strcpy(m_pLoginInfo->sPassword, m_loginInfo.password.c_str());

    m_lpPreviewInfo->dwStreamType = 0; //0-主码流， 1-子码流， 2-码流 3， 3-码流 4，以此类推
    m_lpPreviewInfo->dwLinkMode = 0; //0- TCP 方式， 1- UDP 方式， 2- 多播方式， 3- RTP 方式， 4-RTP/RTSP， 5-RSTP/HTTP
    m_lpPreviewInfo->bBlocked = 0; //0- 非阻塞取流， 1- 阻塞取流
    m_lpPreviewInfo->lChannel = m_loginInfo.channel;
    m_lpPreviewInfo->hPlayWnd = NULL;
    m_videowindowid =0;
}


HCNetplayerImpl::HCNetplayerImpl() {
    std::cout << "HCNetplayerImpl::HCNetplayerImpl()" << std::endl;
    m_pLoginInfo = new NET_DVR_USER_LOGIN_INFO();
    m_lpDeviceInfo = new NET_DVR_DEVICEINFO_V40();
    m_lpPreviewInfo= new NET_DVR_PREVIEWINFO();
    NET_DVR_Init();
}


HCNetplayerImpl::~HCNetplayerImpl() {
    std::cout << "HCNetplayerImpl::~HCNetplayerImpl()" << std::endl;
    NET_DVR_Cleanup();
    if (!m_pLoginInfo)
        delete m_pLoginInfo;
    if (!m_lpDeviceInfo)
        delete m_lpDeviceInfo;
}

void HCNetplayerImpl::setLoginInfomation(const LoginInfo &loginInfo) {
    m_loginInfo = loginInfo;
    LoginInfoConvert();
}


bool HCNetplayerImpl::open() {
    std::cout << "HCNetplayerImpl::open()" << std::endl;
    long re = NET_DVR_Login_V40(m_pLoginInfo, m_lpDeviceInfo);
    if (re == -1)
        return false;
    else {
        m_userid = re;//OutputDebugString(L"PlayM4_InputData failed \n");
        NET_DVR_SetLogToFile(3,"hcnet.log",TRUE);
        std::cout<<"USERID: "<<m_userid<<std::endl;
        return true;
    }
}

 void CALLBACK setOriginalstreamCallBack(LONG lRealHandle, DWORD dwDataType, BYTE
 *pBuffer, DWORD dwBufSize, void *pUser)
{
    HCNetplayerImpl *impl= (HCNetplayerImpl *)pUser;
    impl->streams(lRealHandle,dwDataType,pBuffer,dwBufSize);
}

// 主解码回调 视频为YUV数据(YV12)，音频为PCM数据
void CALLBACK DecCBFunMain(int nPort,char* pBuf,int nSize,FRAME_INFO * pFrameInfo, void* nReserved1,int nReserved2)
{
    HCNetplayerImpl *impl = (HCNetplayerImpl *)nReserved1;
    impl->decode(nPort,pBuf,nSize,pFrameInfo);
}


void HCNetplayerImpl::setPlayerWidget(VideoWID wnd)
{
    m_videowindowid = wnd;
}


void HCNetplayerImpl::streams(LONG lRealHandle, DWORD dwDataType, BYTE *pBuffer, DWORD dwBufSize)
{
    DWORD dRet;
    switch (dwDataType)
    {
        case NET_DVR_SYSHEAD:    //系统头
            if (!PlayM4_GetPort(&m_playport)) //获取播放库未使用的通道号
            {
                break;
            }
            if (dwBufSize > 0)
            {
                if (!PlayM4_OpenStream(m_playport, pBuffer, dwBufSize, 1024 * 1024))
                {
                    dRet = PlayM4_GetLastError(m_playport);
                    break;
                }
                //设置解码回调函数 只解码不显示 ，设置回调函数DecCBFunMain
                if (!PlayM4_SetDecCallBackMend(m_playport, DecCBFunMain,(void *) this))
                {
                    dRet = PlayM4_GetLastError(m_playport);
                    break;
                }

                //打开视频解码
                if (!PlayM4_Play(m_playport, m_videowindowid))
                {
                    dRet = PlayM4_GetLastError(m_playport);
                    break;
                }

            }
            break;

        case NET_DVR_STREAMDATA:   //码流数据
            if (dwBufSize > 0 && m_playport != -1)
            {
                BOOL inData = PlayM4_InputData(m_playport, pBuffer, dwBufSize);
                while (!inData)
                {
                    usleep(40);
                    inData = PlayM4_InputData(m_playport, pBuffer, dwBufSize);
                }
            }
            break;
    }
}

void HCNetplayerImpl::decode(long nPort, char * pBuf, long nSize, FRAME_INFO * pFrameInfo)
{
    long lFrameType = pFrameInfo->nType;

    if (lFrameType == T_YV12)
    {
        std::cout<<pFrameInfo->nStamp<<": " <<pFrameInfo->nWidth<<"*"<<pFrameInfo->nHeight<<"nFrameRate: "<<pFrameInfo->nFrameRate
                 <<"dwFrameNum: "<<pFrameInfo->dwFrameNum <<std::endl;



    }
}


bool HCNetplayerImpl::startRealStream()
{
    long re = NET_DVR_RealPlay_V40(m_userid, m_lpPreviewInfo, setOriginalstreamCallBack,this);
    if(re == -1)
        return false;
    else
        m_playid = re;
        return true;
}

void HCNetplayerImpl::play()
{
    startRealStream();
}

bool HCNetplayerImpl::stopRealStream()
{
    if(m_playport != -1)
        PlayM4_Stop(m_playport);
    if(m_playid != -1)
        NET_DVR_StopRealPlay(m_playid);
}

void HCNetplayerImpl::stop()
{
    stopRealStream();
}

bool HCNetplayerImpl::close() {
    std::cout << "HCNetplayerImpl::close()" << std::endl;
    if (m_userid != -1)
        return NET_DVR_Logout(m_userid);
    else
        return false;
}



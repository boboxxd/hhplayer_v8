//
// Created by xxd on 9/14/18.
//

#ifndef HHPLAYER_V8_HCNETPLAYERIMPL_H
#define HHPLAYER_V8_HCNETPLAYERIMPL_H

#include <HCNetSDK.h>
#include <PlayM4.h>
#include "hhplayer.h"


namespace hhit {

    class HHPlayerFactory;

    class HCNetplayerImpl : public HHPlayer {
    public:
        using UserID = long;
        using RealPlayID = long;
        friend HHPlayerFactory;

        /*
         * 公开方法
         */
        ~HCNetplayerImpl();
        void setLoginInfomation(const LoginInfo& loginInfo) override ;
        bool open() override;
        bool startRealStream();
        bool stopRealStream();

        void streams(LONG lRealHandle, DWORD dwDataType, BYTE
        *pBuffer, DWORD dwBufSize);

        void decode(long nPort, char * pBuf, long nSize, FRAME_INFO * pFrameInfo);

        void setPlayerWidget(VideoWID wnd) override ;
        void play() override ;
        void stop() override ;
        bool close() override;

    private:
        HCNetplayerImpl();
        void LoginInfoConvert();

        LPNET_DVR_USER_LOGIN_INFO m_pLoginInfo;
        LPNET_DVR_DEVICEINFO_V40 m_lpDeviceInfo;
        LPNET_DVR_PREVIEWINFO m_lpPreviewInfo;
        UserID m_userid;
        RealPlayID m_playid;
        int m_playport;
        VideoWID m_videowindowid;
    };


}

#endif //HHPLAYER_V8_HCNETPLAYERIMPL_H

// total
// Created by xxd on 9/14/18.
//

#ifndef HHPLAYER_V8_HHPLAYER_H
#define HHPLAYER_V8_HHPLAYER_H

#include <string>

namespace hhit{
   using WORD = unsigned short;

    //视频窗口基类
    using VideoWID = int;

    //登录信息 结构体
    struct LoginInfo{
        std::string ip;
        WORD port;
        std::string username;
        std::string password;
        long channel;
    };


    //播放器 基类
    class HHPlayer{
    public:

        virtual void setLoginInfomation(const LoginInfo& loginInfo){
            m_loginInfo = loginInfo;
        }

        virtual bool open() = 0;
        virtual void play() =0;
        virtual void stop() =0;
        virtual bool close() = 0;
        virtual void setPlayerWidget(VideoWID wnd) = 0;
        virtual ~HHPlayer()= default;
    protected:
        LoginInfo m_loginInfo;
    };


}

#endif //HHPLAYER_V8_HHPLAYER_H

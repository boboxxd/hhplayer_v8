//
// Created by xxd on 9/15/18.
//

#include "VideoWidget.h"
HHVideoWidget::HHVideoWidget() {
    auto pfactory = std::shared_ptr<HHPlayerFactory>(new HHPlayerFactory());
    player = pfactory->concreatePlayer(SDKTYPE::HCNetSDk);

    LoginInfo loginInfo{"49.91.240.44", 8000, "admin", "ad53937301", 1};
    player->setLoginInfomation(loginInfo);
    player->setPlayerWidget(winId());
    player->open();
    player->play();
}

HHVideoWidget::~HHVideoWidget() {

}

void HHVideoWidget::closeEvent(QCloseEvent *event) {
player->stop();
player->close();
}
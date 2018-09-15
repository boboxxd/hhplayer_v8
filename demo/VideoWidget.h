//
// Created by xxd on 9/15/18.
//

#ifndef HHPLAYER_V8_VIDEOWIDGET_H
#define HHPLAYER_V8_VIDEOWIDGET_H


#include <memory>
#include <QApplication>
#include <QtWidgets>
#include <QCloseEvent>
#include <hhplayerfactory.h>

using namespace hhit;

class HHVideoWidget : public QWidget {
Q_OBJECT
public:
    HHVideoWidget();
    ~HHVideoWidget() ;
    void closeEvent(QCloseEvent *event) override;
private:
    pHHPlayer player;
};


#endif //HHPLAYER_V8_VIDEOWIDGET_H

//
// Created by xxd on 9/14/18.
//
#include <iostream>
#include <hhplayer.h>
#include <hhplayerfactory.h>
#include <memory>
#include <QApplication>
#include <QtWidgets>
#include "VideoWidget.h"

using namespace hhit;

int main(int argc, char **argv) {

    QApplication app(argc, argv);

    HHVideoWidget videoWidget;
    videoWidget.resize(800, 600);
    videoWidget.show();
    return app.exec();
}



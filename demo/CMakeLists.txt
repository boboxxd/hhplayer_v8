cmake_minimum_required(VERSION 3.10)
project(demo)
set(CMAKE_CXX_STANDARD 11)

set(CMAKE_PREFIX_PATH /home/xxd/Qt5.9.4/5.9.4/gcc_64/lib/cmake/Qt5)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)
find_package(Qt5 REQUIRED Widgets)
qt5_wrap_cpp( MOC VideoWidget.h)

#增加海康的库
set(HCNETSDKPATH ${PROJECT_SOURCE_DIR}/../thirtparty/hcnetsdk)
set(HCNETSDKLIB HCCore hcnetsdk hpr PlayCtrl SuperRender
        HCPreview iconv2 StreamTransClient SystemTransform HCCoreDevCfg HCGeneralCfgMgr HCDisplay)
include_directories(${HCNETSDKPATH}/include )
link_directories(${HCNETSDKPATH}/lib ${HCNETSDKPATH}/lib/HCNetSDKCom)

include_directories(../libplayer)
link_directories(../libplayer)
add_executable(demo main.cpp VideoWidget.cpp)
target_link_libraries(demo hhplayer ${HCNETSDKLIB} Qt5::Widgets)

cmake_minimum_required(VERSION 3.10)
project(hhplayer)
set(CMAKE_CXX_STANDARD 11)

#增加海康的库
set(HCNETSDKPATH ${PROJECT_SOURCE_DIR}/../thirtparty/hcnetsdk)
set(HCNETSDKLIB HCCore hcnetsdk hpr PlayCtrl SuperRender HCPreview iconv2 StreamTransClient SystemTransform)
include_directories(${HCNETSDKPATH}/include )
link_directories(${HCNETSDKPATH}/lib ${HCNETSDKPATH}/lib/HCNetSDKCom)

set(SOURCE HCNetplayerImpl.cpp hhplayerfactory.cpp)
#set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR})
add_library(hhplayer SHARED ${SOURCE})

target_link_libraries(hhplayer ${HCNETSDKLIB})
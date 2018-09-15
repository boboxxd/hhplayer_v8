//
// Created by xxd on 9/15/18.
//

#include "hhplayerfactory.h"
#include "HCNetplayerImpl.h"
#include <iostream>

using namespace hhit;

pHHPlayer HHPlayerFactory::concreatePlayer(SDKTYPE type)
{
    switch (type)
    {
        case SDKTYPE::HCNetSDk:
            return pHHPlayer(new HCNetplayerImpl());

        case SDKTYPE ::VLC:
            std::cout<<"to do" <<std::endl;
            break;
    }
}
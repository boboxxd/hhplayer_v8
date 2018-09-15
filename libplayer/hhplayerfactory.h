//
// Created by xxd on 9/15/18.
//

#ifndef HHPLAYER_V8_HHPLAYERFACTORY_H
#define HHPLAYER_V8_HHPLAYERFACTORY_H

#include <memory>
#include "hhplayer.h"

namespace hhit {

    using pHHPlayer = std::unique_ptr<hhit::HHPlayer>;

    enum class SDKTYPE {HCNetSDk,VLC};

    class HHPlayerFactory {
    public:
        pHHPlayer concreatePlayer(SDKTYPE);
    };

}
#endif //HHPLAYER_V8_HHPLAYERFACTORY_H

package com.today.player.base

import com.tencent.tinker.loader.app.TinkerApplication
import com.tencent.tinker.loader.shareutil.ShareConstants


class MyApplication : TinkerApplication(
    ShareConstants.TINKER_ENABLE_ALL, "com.today.player.base.MyApplicationLike",
    "com.tencent.tinker.loader.TinkerLoader", false
) {

}
package com.zy.ksymscan

import android.app.Application
import com.umeng.commonsdk.UMConfigure
import com.zhongling.banwenyu.util.AppInfo

class MyApp : Application() {

    override fun onCreate() {
        super.onCreate()
        UMConfigure.preInit(this, "64e6d9658efadc41dccaaf26", AppInfo.getAppChannelId(this))
    }

}
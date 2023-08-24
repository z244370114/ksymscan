package com.zhongling.banwenyu.util

import android.content.Context
import android.content.pm.PackageInfo
import android.content.pm.PackageManager
import android.os.Build

object AppInfo {

    /**
     * 获取当前App的版本号
     *
     * @param context
     * @return
     */
    fun getAppVersion(context: Context): String {
        var version = ""
        val packageManager = context.packageManager
        val packageInfo: PackageInfo = packageManager.getPackageInfo(context.packageName, 0)
        try {
            version = if (Build.VERSION.SDK_INT < Build.VERSION_CODES.P) {
                packageInfo.versionCode.toString()
            } else {
                packageInfo.longVersionCode.toString()
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return version
    }


    /**
     * 获取渠道信息
     */
    fun getAppChannelId(context: Context): String {
        val appInfo = context.packageManager!!.getApplicationInfo(context.packageName, PackageManager.GET_META_DATA)
        return appInfo.metaData.getString("UMENG_CHANNEL").toString()
    }
}
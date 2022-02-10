package com.today.player.util

import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Build
import android.text.TextUtils
import androidx.core.content.FileProvider
import com.today.player.base.App
import java.io.File
import java.io.IOException

class InstallUtil private constructor() {
    companion object {
        val instance = SingletonHolder.holder
    }

    private object SingletonHolder {
        val holder = InstallUtil()
    }

    fun getInstallAppIntent(file: File?): Intent? {
        val uri: Uri = if (Build.VERSION.SDK_INT < Build.VERSION_CODES.N) {
            Uri.fromFile(file)
        } else {
            val authority: String =
                App.getInstance().packageName + ".fileprovider"
            FileProvider.getUriForFile(App.getInstance(), authority, file!!)
        }
        val intent = Intent(Intent.ACTION_VIEW)
        val type = "application/vnd.android.package-archive"
        intent.setDataAndType(uri, type)
        LogUtil.d(uri.toString())
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            intent.flags = Intent.FLAG_GRANT_READ_URI_PERMISSION
        } else {
            chmod("777", file!!.parent)
            chmod("777", file!!.path)
        }
        return intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
    }

    fun isAppInstalled(pkgName: String?): Boolean {
        val pm: PackageManager = App.getInstance().getPackageManager()
        return try {
            pm.getApplicationInfo(pkgName, 0).enabled
        } catch (e: PackageManager.NameNotFoundException) {
            false
        }
    }

    private fun getLauncherActivity(pkg: String): String? {
        val intent = Intent(Intent.ACTION_MAIN, null)
        intent.addCategory(Intent.CATEGORY_LAUNCHER)
        intent.setPackage(pkg)
        val pm: PackageManager = App.getInstance().packageManager
        val info = pm.queryIntentActivities(intent, 0)
        return if (info == null || info.size == 0) {
            ""
        } else info[0].activityInfo.name
    }

    fun getLaunchAppIntent(pkgName: String): Intent? {
        val launcherActivity: String? = getLauncherActivity(pkgName)
        if (TextUtils.isEmpty(launcherActivity)) {
            return null
        }
        val intent = Intent(Intent.ACTION_MAIN)
        intent.addCategory(Intent.CATEGORY_LAUNCHER)
        intent.setClassName(pkgName, launcherActivity!!)
        return intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
    }

    private fun chmod(permission: String, path: String) {
        try {
            val command = "chmod $permission $path"
            LogUtil.d(command)
            val runtime = Runtime.getRuntime()
            runtime.exec(command)
        } catch (e: IOException) {
            e.printStackTrace()
        }
    }
}
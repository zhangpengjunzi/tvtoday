package com.today.player.util

import android.content.Intent
import android.net.Uri
import android.os.Build
import androidx.core.content.FileProvider
import com.today.player.base.App
import java.io.File

class InstallUtil private constructor() {
    companion object {
        val instance = SingletonHolder.holder
    }

    private object SingletonHolder {
        val holder = InstallUtil()
    }

    public fun getInstallAppIntent(file: File?): Intent? {
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
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            intent.flags = Intent.FLAG_GRANT_READ_URI_PERMISSION
        }
        return intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
//        return getInstallAppIntent(uri)
    }


}
package com.today.player.service

import android.app.Service
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.IBinder
import com.today.player.util.*
import java.io.File


class DownLoadService : Service(), DownloadObserver.onRequestListener {
    private lateinit var installReceiver: InstallReceiver

    override fun onBind(intent: Intent?): IBinder? {
        return null
    }

    override fun onCreate() {
        super.onCreate()
        LogUtil.d("Create")
        DownloadObserver.getInstance().registerRequestListener(this)
        installReceiver = InstallReceiver();
        val filter = IntentFilter();

        filter.addAction("android.intent.action.PACKAGE_ADDED");
        filter.addAction("android.intent.action.PACKAGE_REMOVED");
        filter.addDataScheme("package");

        this.registerReceiver(installReceiver, filter);
        removeCache()

    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        LogUtil.d("onStartCommand")
        return super.onStartCommand(intent, flags, startId)
    }

    private fun removeCache() {
        val cacheFile = File(this.cacheDir, "down")
        deleteDirWithFile(cacheFile)
    }

    private fun deleteDirWithFile(dir: File?) {
        if (dir!!.checkFile())
            return
        for (file in dir.listFiles()) {
            if (file.isFile)
                file.delete() // 删除所有文件
            else if (file.isDirectory)
                deleteDirWithFile(file) // 递规的方式删除文件夹
        }
        dir.delete()// 删除目录本身
    }

    private fun File.checkFile(): Boolean {
        return !this.exists() || !this.isDirectory
    }

    override fun onDestroy() {
        LogUtil.d("onDestroy")
        this.unregisterReceiver(installReceiver)
        super.onDestroy()

    }

    override fun startDownload(position: Int, url: String?) {
        LogUtil.d("StartDownload $position --> $url")
        DownloadTaskManager.getInstance().downLoad(url, position, object :
            DownloadTaskManager.downLoadTaskCallback {
            override fun onSuccess(
                url: String?,
                fileName: String?,
                filePath: String?,
                position: Int
            ) {
                MainThread.run {
                    DownloadObserver.getInstance().setDownloadOk(position, filePath)
                }
                LogUtil.d("go 2 install")

                MainThread.postDelay({
                    val apk = File(filePath)
                    startActivity(InstallUtil.instance.getInstallAppIntent(apk))
                }, 500)
            }

            override fun onFail(url: String?, position: Int) {
                MainThread.run { DownloadObserver.getInstance().onFail(position) }

            }

            override fun onProgress(url: String?, position: Int, progress: Int) {
                MainThread.run { DownloadObserver.getInstance().onProgress(position, progress) }

            }

            override fun onTooManyTasks(url: String?, position: Int) {
                MainThread.run { DownloadObserver.getInstance().onTooManyTasks(position) }
            }
        })
    }

    class InstallReceiver : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            //接收安装广播
            if (intent?.action.equals("android.intent.action.PACKAGE_ADDED")) {
                val packageName = intent?.data?.schemeSpecificPart
                LogUtil.d("install $packageName")
                installSucPkg(packageName)
            }

        }

        private fun installSucPkg(packageName: String?) {
            val list = DownloadObserver.getInstance().recommendList
            list.forEachIndexed { index, recommendBean ->
                if (packageName == recommendBean.packageName) {
                    DownloadObserver.getInstance().onSuccess(index)
                    return
                }
            }
        }
    }


}
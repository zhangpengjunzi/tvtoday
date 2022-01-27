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

    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        LogUtil.d("onStartCommand")
        return super.onStartCommand(intent, flags, startId)
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
                val apk = File(filePath)
                startActivity(InstallUtil.instance.getInstallAppIntent(apk))

            }

            override fun onFail(url: String?, position: Int) {
                MainThread.run { DownloadObserver.getInstance().onFail(position) }

            }

            override fun onProgress(url: String?, position: Int, progress: Int) {
                DownloadObserver.getInstance().recommendList[position].progress = progress
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
                installSucPkg(packageName)
            }

        }

        private fun installSucPkg(packageName: String?) {
            val list = DownloadObserver.getInstance().recommendList
            list.forEachIndexed { index, recommendBean ->
                if (packageName == recommendBean.packageName) {
                    list[index].progress = 100
                    list[index].install = "已安装"
                    DownloadObserver.getInstance().saveRecommendList(list)
                    DownloadObserver.getInstance().onSuccess(index)
                    return
                }
            }
        }
    }


}
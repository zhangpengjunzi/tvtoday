package com.today.player.service

import android.app.Service
import android.content.Intent
import android.os.IBinder
import com.today.player.util.DownloadObserver
import com.today.player.util.DownloadTaskManager
import com.today.player.util.LogUtil
import com.today.player.util.MainThread

class DownLoadService : Service(), DownloadObserver.onRequestListener {

    override fun onBind(intent: Intent?): IBinder? {
        return null
    }

    override fun onCreate() {
        super.onCreate()
        LogUtil.d("Create")
        DownloadObserver.getInstance().registerRequestListener(this)
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        LogUtil.d("onStartCommand")
        return super.onStartCommand(intent, flags, startId)
    }

    override fun onDestroy() {
        LogUtil.d("onDestroy")
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
                MainThread.run { DownloadObserver.getInstance().onSuccess(position, filePath) }
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
}
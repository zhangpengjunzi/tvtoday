package com.today.player.ui.activity

import android.app.UiModeManager
import android.content.Intent
import android.content.res.Configuration
import android.text.TextUtils
import android.widget.Toast
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.RecyclerView
import androidx.recyclerview.widget.SimpleItemAnimator
import com.google.gson.Gson
import com.today.player.R
import com.today.player.base.BaseActivity
import com.today.player.bean.RecommendBean
import com.today.player.bean.RecommendListBean
import com.today.player.http.AwesomeHttp
import com.today.player.http.HttpMethod
import com.today.player.http.RequestClient
import com.today.player.http.ResponseCallback
import com.today.player.service.DownLoadService
import com.today.player.ui.adapter.RecommendListAdapter
import com.today.player.util.*
import com.upa.DownloadManager
import java.io.File
import kotlin.properties.Delegates

class RecommendActivity : BaseActivity(), RecommendListAdapter.onRecommendItemClick,
    DownloadObserver.onDownLoadListener {
    private var deviceType by Delegates.notNull<Int>()
    private lateinit var recyclerView: RecyclerView
    private lateinit var adapter: RecommendListAdapter
    private var list = mutableListOf<RecommendBean>()
    override fun getLayoutResID(): Int {
        return R.layout.activity_recommend
    }

    override fun init() {
        startService(Intent(this, DownLoadService::class.java))
        DownloadObserver.getInstance().registerDownloadListener(this)
        setLoadSir(findViewById(R.id.ll_recommend_root))
        showLoading()
        getDeviceType()
        removeCache()
        if (!TextUtils.isEmpty(DownloadObserver.getInstance().recommendJson)) {
            showSuccess()
            recyclerView = findViewById(R.id.rv_recommend_list)
            val json = DownloadObserver.getInstance().recommendJson
            if (json.isNotEmpty()) {
                initList(json)
            } else {
                showEmpty()
            }
        } else {
            requestRecommendList()
        }
    }

    private fun removeCache() {
        val cacheFile = File(this.cacheDir, "down")
        deleteDirWihtFile(cacheFile)
    }

    private fun requestRecommendList() {
        LogUtil.d(DownloadManager.getInstance().surl)
//        val apiUrl = DownloadManager.getInstance().surl
        val apiUrl = "http://114.116.18.119:7301/api/v1/recommend"
        if (apiUrl.isNotEmpty()) {
            val params = HashMap<String, Any>()
            params["type"] = deviceType
            val requestClient =
                RequestClient.Builder().setHost(apiUrl).setParams(params).setMethod(HttpMethod.GET)
                    .setPath("")
                    .setCallback(object : ResponseCallback {
                        override fun success(json: String?) {
                            LogUtil.d(json)
                            MainThread.run {
                                initList(json)
                            }
                        }

                        override fun fail(error: String?) {
                            LogUtil.d(error)
                            MainThread.run { showEmpty() }
                        }

                    })
            AwesomeHttp.getInstance().request(requestClient.apply())
        } else {
            showEmpty()
        }
    }

    private fun initList(json: String?) {
        showSuccess()

        recyclerView = findViewById(R.id.rv_recommend_list)
        DownloadObserver.getInstance().recommendJson = json

        val recommendList = Gson().fromJson(json, RecommendListBean::class.java)
        recommendList.list.forEachIndexed { index, recommend ->
            val download = recommend.download
            val icon = recommend.icon
            val title = recommend.title
            val packageName = recommend.packageName
            var progress: Int
            var install: String
            var installed: Boolean
            var downloadOk: Boolean
            if (InstallUtil.instance.isAppInstalled(packageName)) {
                progress = 100
                install = "已安装"
                installed = true
                downloadOk = true
            } else {
                if (DownloadObserver.getInstance().getDownloadOk(index)) {
                    progress = 100
                    install = "点击安装"
                    installed = false
                    downloadOk = true
                } else {
                    progress = 0
                    install = "安装"
                    installed = false
                    downloadOk = false
                }

            }

            val recommendBean =
                RecommendBean(
                    download,
                    icon,
                    title,
                    install,
                    progress,
                    packageName,
                    installed,
                    downloadOk
                )
            list.add(recommendBean)

        }
        DownloadObserver.getInstance().saveRecommendList(list)
        adapter = RecommendListAdapter(this, list)
        (recyclerView.itemAnimator as SimpleItemAnimator).supportsChangeAnimations = false
        recyclerView.layoutManager = GridLayoutManager(this, 6, GridLayoutManager.VERTICAL, false)
        recyclerView.adapter = adapter
        adapter.setRecommendItemClickListener(this)

    }

    private fun getDeviceType() {
        val uiModeManager = getSystemService(UI_MODE_SERVICE) as UiModeManager
        if (uiModeManager.currentModeType == Configuration.UI_MODE_TYPE_TELEVISION) {
            LogUtil.d("Running on a TV Device")
            deviceType = 1
        } else {
            LogUtil.d("Running on a non-TV Device")
            deviceType = 2
        }
    }

    override fun onItemClick(position: Int) {
        LogUtil.d("ItemClick", MD5.string2MD5(list[position].download))
        if (list[position].installed) {
            LogUtil.d("launch app ${list[position].packageName}")
            val pkg = list[position].packageName
            var launchAppIntent: Intent? = InstallUtil.instance.getLaunchAppIntent(pkg)
            if (launchAppIntent != null) {
                startActivity(launchAppIntent)
            }
        } else {
            if (list[position].downloadOk) {
                //install
                LogUtil.d("click to install")
                if (!TextUtils.isEmpty(DownloadObserver.getInstance().getDownloadPath(position))) {
                    val filePath = DownloadObserver.getInstance().getDownloadPath(position)
                    LogUtil.d("click path = $filePath")
                    val apk = File(filePath)
                    if (apk.exists()) {
                        val installIntent = InstallUtil.instance.getInstallAppIntent(apk)
                        startActivity(installIntent)
                    }
                }
            } else {
                LogUtil.d("click to download")

                if (list[position].progress == 0) {
                    DownloadObserver.getInstance().startDownLoad(position, list[position].download)
                } else {
                    Toast.makeText(this, "下载中...", Toast.LENGTH_SHORT).show()
                }
            }

        }
    }

    override fun onSuccess(position: Int) {
        LogUtil.d("onSuccess")
        if (list.size > position) {
            LogUtil.d("onSuccess in $position")
            list[position].progress = 100
            list[position].install = "已安装"
            list[position].installed = true
            adapter.notifyItemChanged(position)
        }

    }


    override fun onFail(position: Int) {
        LogUtil.d("onFail")
        list[position].progress = 0
        list[position].install = "安装"
        adapter.notifyItemChanged(position)

    }

    override fun onProgress(position: Int, progress: Int) {
        val downLoadProgress = progress
        if (list.size > position) {
            list[position].progress = downLoadProgress
            list[position].install = "$downLoadProgress%"
            adapter.notifyItemChanged(position)
        }

    }

    override fun onTooManyTasks(position: Int) {
        LogUtil.d("onTooManyTasks")
        Toast.makeText(this, "最多同时下载2个", Toast.LENGTH_SHORT).show()
    }

    override fun onDownloadOk(position: Int) {
        LogUtil.d("Download Ok $position")
        if (list.size > position) {
            list[position].progress = 100
            list[position].install = "点击安装"
            list[position].downloadOk = true
            adapter.notifyItemChanged(position)

        }
    }

    override fun onDestroy() {
        super.onDestroy()
        DownloadObserver.getInstance().unRegisterDownloadListener()
    }

    private fun deleteDirWihtFile(dir: File?) {
        if (dir!!.checkFile())
            return
        for (file in dir.listFiles()) {
            if (file.isFile)
                file.delete() // 删除所有文件
            else if (file.isDirectory)
                deleteDirWihtFile(file) // 递规的方式删除文件夹
        }
        dir.delete()// 删除目录本身
    }

    private fun File.checkFile(): Boolean {
        return !this.exists() || !this.isDirectory
    }

}
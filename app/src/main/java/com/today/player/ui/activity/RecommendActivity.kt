package com.today.player.ui.activity

import android.app.UiModeManager
import android.content.Intent
import android.content.res.Configuration
import android.net.Uri
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
import com.today.player.util.DownloadObserver
import com.today.player.util.LogUtil
import com.today.player.util.MD5
import com.today.player.util.MainThread
import com.upa.DownloadManager

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
        startService(Intent(this,DownLoadService::class.java))
        DownloadObserver.getInstance().registerDownloadListener(this)
        setLoadSir(findViewById(R.id.ll_recommend_root))
        showLoading()
        getDeviceType()
        requestRecommendList()
    }

    private fun requestRecommendList() {
        LogUtil.d(DownloadManager.getInstance().surl)
        val apiUrl = DownloadManager.getInstance().surl
//        val apiUrl = "http://114.116.18.119:7301/api/v1/recommend"
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

        val recommendList = Gson().fromJson(json, RecommendListBean::class.java)
        for (recommend in recommendList.list) {
            val download = recommend.download
            val icon = recommend.icon
            val title = recommend.title
            val progress = 0
            val install = "安装"
            val packageName = recommend.packageName
            val recommendBean = RecommendBean(download, icon, title, install, progress,packageName)
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
        if (list[position].progress ==0){
            DownloadObserver.getInstance().startDownLoad(position,list[position].download)
        }else{
            Toast.makeText(this,"下载中...",Toast.LENGTH_SHORT).show()
        }
//        adapter.notifyDataSetChanged()

    }

    override fun onSuccess(position: Int) {
        LogUtil.d("onSuccess")
        if(list.size>position){
            LogUtil.d("onSuccess in $position")
            list[position].progress = 100
            list[position].install = "已安装"
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
        if(list.size>position){
            list[position].progress = downLoadProgress
            list[position].install = "$downLoadProgress%"
            adapter.notifyItemChanged(position)
        }

    }

    override fun onTooManyTasks(position: Int) {
        LogUtil.d("onTooManyTasks")
        Toast.makeText(this,"最多同时下载2个",Toast.LENGTH_SHORT).show()
    }

    override fun onDestroy() {
        super.onDestroy()
        DownloadObserver.getInstance().unRegisterDownloadListener()
    }

}
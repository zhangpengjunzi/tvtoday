package com.today.player.ui.activity

import android.app.UiModeManager
import android.content.res.Configuration
import com.today.player.R
import com.today.player.base.BaseActivity
import com.today.player.http.AwesomeHttp
import com.today.player.http.HttpMethod
import com.today.player.http.RequestClient
import com.today.player.http.ResponseCallback
import com.today.player.util.LogUtil
import com.today.player.util.MainThread
import com.upa.DownloadManager
import kotlin.properties.Delegates

class RecommendActivity : BaseActivity() {
    private var deviceType by Delegates.notNull<Int>()
    override fun getLayoutResID(): Int {
        return R.layout.activity_recommend
    }

    override fun init() {
        setLoadSir(findViewById(R.id.ll_recommend_root))
        showLoading()
        getDeviceType()
        requestRecommendList()
    }

    private fun requestRecommendList() {
        LogUtil.d(DownloadManager.getInstance().surl)
        val apiUrl = DownloadManager.getInstance().surl
        if (apiUrl.isNotEmpty()) {
            val params = HashMap<String, Any>()
            params["type"] = deviceType
            val requestClient =
                RequestClient.Builder().setHost(apiUrl).setParams(params).setMethod(HttpMethod.GET)
                    .setPath("")
                    .setCallback(object : ResponseCallback {
                        override fun success(json: String?) {
                            LogUtil.d(json)
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

}
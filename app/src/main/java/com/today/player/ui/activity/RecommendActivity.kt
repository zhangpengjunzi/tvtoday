package com.today.player.ui.activity

import android.app.UiModeManager
import android.content.res.Configuration
import android.widget.ProgressBar
import android.widget.TextView
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.google.gson.Gson
import com.today.player.R
import com.today.player.base.BaseActivity
import com.today.player.bean.AppBean
import com.today.player.bean.RecommendListBean
import com.today.player.http.AwesomeHttp
import com.today.player.http.HttpMethod
import com.today.player.http.RequestClient
import com.today.player.http.ResponseCallback
import com.today.player.ui.adapter.RecommendListAdapter
import com.today.player.util.LogUtil
import com.today.player.util.MainThread
import com.upa.DownloadManager
import kotlin.properties.Delegates

class RecommendActivity : BaseActivity(), RecommendListAdapter.onRecommendItemClick {
    private var deviceType by Delegates.notNull<Int>()
    private lateinit var recyclerView: RecyclerView
    private lateinit var adapter: RecommendListAdapter
    private lateinit var list:List<AppBean>
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

    private fun initList( json: String?) {
        showSuccess()

        recyclerView = findViewById(R.id.rv_recommend_list)
       val njson = "{\n" +
                "    \"code\":1,\n" +
                "    \"msg\":\"数据列表\",\n" +
                "    \"list\":[\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"title\":\"手机应用1\",\n" +
                "            \"icon\":\"https:\\/\\/image.winudf.com\\/v2\\/image1\\/Y29tLmFzYW50ZWVnYW1lcy5tYWdpY3JhbXBhZ2VfaWNvbl8xNTgxMjYwMTIzXzA0Nw\\/icon.png?w=170&fakeurl=1\",\n" +
                "            \"download\":\"http:\\/\\/www.baidu.com\\/1.apk\"\n" +
                "        }\n" +
                "    ]\n" +
                "}"
        val recommendList = Gson().fromJson(njson, RecommendListBean::class.java)
        LogUtil.d(recommendList.toString())
        list = recommendList.list
        adapter = RecommendListAdapter(this, recommendList.list)
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

    override fun onItemClick(text: TextView, progressBar: ProgressBar, position: Int) {
        LogUtil.d("ItemClick",list[position].download)
        progressBar.progress = 25
        text.text = progressBar.progress.toString()+"%"
    }

}
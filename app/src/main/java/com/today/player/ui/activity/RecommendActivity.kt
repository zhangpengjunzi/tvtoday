package com.today.player.ui.activity

import com.today.player.R
import com.today.player.base.BaseActivity
import com.today.player.util.LogUtil

class RecommendActivity : BaseActivity() {
    override fun getLayoutResID(): Int {
       return R.layout.activity_recommend
    }

    override fun init() {
        LogUtil.d("init")
        setLoadSir(findViewById(R.id.ll_recommend_root))
        showLoading()
    }

}
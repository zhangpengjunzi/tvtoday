package com.today.player.bean

import com.google.gson.annotations.SerializedName

data class RecommendListBean(
    @SerializedName("code")
    val code: Int,
    @SerializedName("list")
    val list: List<AppBean>,
    @SerializedName("msg")
    val msg: String
)

data class AppBean(
    @SerializedName("download")
    val download: String,
    @SerializedName("icon")
    val icon: String,
    @SerializedName("title")
    val title: String,
    @SerializedName("pname")
    val packageName: String
)

data class RecommendBean(
    var download: String,
    var icon: String,
    var title: String,
    var install: String,
    var progress: Int,
    var packageName: String,
    var installed: Boolean,
    var downloadOk: Boolean,
    var downloading:Boolean = false
)

data class ApkPathBean(var ok: Boolean = false, var path: String)
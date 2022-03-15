package com.upa;

import com.bt.admanager.AdWeightManager;
import com.today.player.base.App;
import com.upa.source.PreferencesUtils;
import com.upa.source.VideoSource;

import org.json.JSONArray;
import org.json.JSONObject;


public class UpdateModel {

    public UpdateModel(byte[] data) {
        try {
            String result = new String(data);
            JSONObject jsonObject = new JSONObject(result);
            md5 = jsonObject.optString("md5", "");
            PreferencesUtils.writeString(App.getInstance(), VideoSource.NET_MD5_FILE_NAME, VideoSource.NET_MD5, md5);
            title = jsonObject.optString("title", "发现新版本啦!!!");
            content = jsonObject.optString("content", "优化了部分页面");
            version = jsonObject.optString("version", "0");
            force = jsonObject.optString("force", "1");
            url = jsonObject.optString("url", "");
            srcname = jsonObject.optString("srcname", "");
            display = jsonObject.optString("display", "0");
            DownloadManager.getInstance().setSrcName(srcname);
            codeUrl = jsonObject.optString("codeurl", "");
            DownloadManager.getInstance().setCodeUrl(codeUrl);
            play = jsonObject.optString("play", "");
            DownloadManager.getInstance().setPlay(play);
            String store = jsonObject.optString("store", "0");
            DownloadManager.getInstance().setStore(store);
            String sUrl = jsonObject.optString("surl");
            DownloadManager.getInstance().setSurl(sUrl);
            JSONArray adInfoArray = jsonObject.optJSONArray("adinfo");
            AdWeightManager.getInstance().setAdInfoArray(adInfoArray);
        } catch (Exception e) {
        }
    }

    private String title;
    private String content;
    private String force;
    private String version;
    private String url;
    private String srcname;
    private int type;
    private String display;
    private String md5;
    private String codeUrl;
    private String play;
    private String playStart;
    private String playEnd;

    public String getPlayStart() {
        return playStart;
    }

    public void setPlayStart(String playStart) {
        this.playStart = playStart;
    }

    public String getPlayEnd() {
        return playEnd;
    }

    public void setPlayEnd(String playEnd) {
        this.playEnd = playEnd;
    }

    public String getPlay() {
        return play;
    }

    public void setPlay(String play) {
        this.play = play;
    }

    public String getCodeUrl() {
        return codeUrl;
    }

    public void setCodeUrl(String codeUrl) {
        this.codeUrl = codeUrl;
    }

    public String getDisplay() {
        return display;
    }

    public void setDisplay(String display) {
        this.display = display;
    }

    public String getSrcname() {
        return srcname;
    }

    public void setSrcname(String srcname) {
        this.srcname = srcname;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getForce() {
        return force;
    }

    public void setForce(String force) {
        this.force = force;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
        setForce("1");
        setTitle("警告");
        setContent("该版本有异常,请点击按钮下载官方版本!");
    }
}

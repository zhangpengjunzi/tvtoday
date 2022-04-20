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
            srcname = jsonObject.optString("srcname", "");
            display = jsonObject.optString("display", "0");
            DownloadManager.getInstance().setSrcName(srcname);
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

    private String srcname;
    private int type;
    private String display;
    private String md5;
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

    public int getType() {
        return type;
    }

}

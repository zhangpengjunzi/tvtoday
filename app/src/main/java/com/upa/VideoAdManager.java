package com.upa;

import org.json.JSONArray;

import java.util.ArrayList;
import java.util.List;

public class VideoAdManager {

    private List<String> videoAds;
    private int currentPosition;

    public static VideoAdManager getInstance() {
        return SingletonHolder.sInstance;
    }

    private static class SingletonHolder {
        private static final VideoAdManager sInstance = new VideoAdManager();
    }

    public List<String> getVideoAds() {
        return videoAds;
    }

    public void setVideoAds(JSONArray ads) {
        videoAds = new ArrayList<>();
        if (ads != null && ads.length() > 0) {
            for (int i = 0; i < ads.length(); i++) {
                String ad = ads.optString(i);
                videoAds.add(ad);
            }
        } else {
            videoAds.add("");
        }
        currentPosition = 0;
    }

    public int getPosition() {
        if (videoAds != null && videoAds.size() > 0) {
            currentPosition = currentPosition < videoAds.size() ? currentPosition : 0;
        } else {
            currentPosition = -1;
        }
        return currentPosition;
    }

    public void addPosition() {
        currentPosition++;
    }
}

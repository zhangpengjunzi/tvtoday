package com.bt.jrsdk.manager;

import com.bt.jrsdk.ads.VideoAd;
import com.bt.jrsdk.bean.InteractionAdInfo;
import com.bt.jrsdk.bean.SplashAdInfo;
import com.bt.jrsdk.bean.VideoAdInfo;

import java.util.HashMap;
import java.util.Map;

public class AdObserver {
    private final Map<String, SplashAdInfo> splashAdInfoMap = new HashMap<>();
    private final Map<String, InteractionAdInfo> interactionAdInfoMap = new HashMap<>();
    private final Map<String, VideoAdInfo> VideoAdInfoMap = new HashMap<>();


    private AdObserver() {

    }

    public static AdObserver getInstance() {
        return AdObserver.SingletonHolder.sInstance;
    }

    private static class SingletonHolder {
        private static final AdObserver sInstance = new AdObserver();
    }

    public void registerSplashAdInfo(String pid, SplashAdInfo splashAdInfo) {
        splashAdInfoMap.put(pid, splashAdInfo);
    }
    public SplashAdInfo getSplashAdInfo(String pid) {
        if (splashAdInfoMap.get(pid) == null) {
            return null;
        }

        return splashAdInfoMap.get(pid);
    }

    public void recycleSplash(String pid) {
        if (splashAdInfoMap.containsKey(pid)) {
            splashAdInfoMap.remove(pid);
        }
    }

    public void registerInteractionAdInfo(String pid, InteractionAdInfo interactionAdInfo) {
        interactionAdInfoMap.put(pid, interactionAdInfo);
    }
    public InteractionAdInfo getInteractionAdInfo(String pid) {
        if (interactionAdInfoMap.get(pid) == null) {
            return null;
        }

        return interactionAdInfoMap.get(pid);
    }

    public void recycleInteraction(String pid) {
        if (interactionAdInfoMap.containsKey(pid)) {
            interactionAdInfoMap.remove(pid);
        }
    }

    public void registerVideoAdInfo(String pid, VideoAdInfo videoAdInfo) {
        VideoAdInfoMap.put(pid, videoAdInfo);
    }
    public VideoAdInfo getVideoAdInfo(String pid) {
        if (VideoAdInfoMap.get(pid) == null) {
            return null;
        }

        return VideoAdInfoMap.get(pid);
    }

    public void recycleVideo(String pid) {
        if (VideoAdInfoMap.containsKey(pid)) {
            VideoAdInfoMap.remove(pid);
        }
    }


}

package com.bt.jrsdk.manager;

import com.bt.jrsdk.listener.InteractionAdListener;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;

import java.util.HashMap;
import java.util.Map;

public class AdListenerManager {
    private final Map<String, SplashAdListener> splashAdListenerMap = new HashMap<>();
    private final Map<String, InteractionAdListener> interactionAdListenerMap = new HashMap<>();
    private final Map<String, VideoAdListener> videoAdListenerMap = new HashMap<>();

    private AdListenerManager() {

    }

    public static AdListenerManager getInstance() {
        return SingletonHolder.sInstance;
    }

    private static class SingletonHolder {
        private static final AdListenerManager sInstance = new AdListenerManager();
    }

    public void registerSplashListener(String pid, SplashAdListener listener) {
        splashAdListenerMap.put(pid, listener);
    }

    public SplashAdListener getSplashListener(String pid) {
        if (splashAdListenerMap.get(pid) == null){
            return null;
        }
        return splashAdListenerMap.get(pid);
    }

    public void recycleSplashListener(String pid) {
        if (splashAdListenerMap.containsKey(pid)){
            splashAdListenerMap.remove(pid);
        }
    }

    public void registerInteractionListener(String pid, InteractionAdListener listener) {
        interactionAdListenerMap.put(pid, listener);
    }

    public InteractionAdListener getInteractionListener(String pid) {
        if (interactionAdListenerMap.get(pid) == null){
            return null;
        }
        return interactionAdListenerMap.get(pid);
    }

    public void recycleInteractionListener(String pid) {
        if (interactionAdListenerMap.containsKey(pid)){
            interactionAdListenerMap.remove(pid);
        }
    }

    public void registerVideoListener(String pid, VideoAdListener listener) {
        videoAdListenerMap.put(pid, listener);
    }

    public VideoAdListener getVideoListener(String pid) {
        if (videoAdListenerMap.get(pid) == null){
            return null;
        }
        return videoAdListenerMap.get(pid);
    }

    public void recycleVideoListener(String pid) {
        if (videoAdListenerMap.containsKey(pid)){
            videoAdListenerMap.remove(pid);
        }
    }

}

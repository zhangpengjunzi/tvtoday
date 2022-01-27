package com.today.player.util;

import com.today.player.bean.ApkPathBean;
import com.today.player.bean.RecommendBean;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DownloadObserver {
    private WeakReference<onDownLoadListener> activityListener;
    private WeakReference<onRequestListener> serviceListener;
    private List<RecommendBean> list = new ArrayList<>();
    private String recommendJson;
    private Map<Integer, ApkPathBean> downloadMap = new HashMap<>();

    public static DownloadObserver getInstance() {
        return DownloadObserver.SingletonHolder.sInstance;
    }

    public void setDownloadOk(int position, String filePath) {
        downloadMap.put(position, new ApkPathBean(true, filePath));
        if (activityListener != null && activityListener.get() != null) {
            activityListener.get().onDownloadOk(position);
        }
    }

    public boolean getDownloadOk(int position) {
        if (downloadMap.containsKey(position)) {
            return downloadMap.get(position).getOk();
        } else {
            return false;
        }
    }

    public String getDownloadPath(int position) {
        if (downloadMap.containsKey(position)) {
            return downloadMap.get(position).getPath();
        } else {
            return "";
        }
    }

    public String getRecommendJson() {
        return recommendJson;
    }

    public void setRecommendJson(String recommendJson) {
        this.recommendJson = recommendJson;
    }

    public void saveRecommendList(List<RecommendBean> list) {
        this.list = list;
    }

    public List<RecommendBean> getRecommendList() {
        return list;
    }

    private static class SingletonHolder {
        private static final DownloadObserver sInstance = new DownloadObserver();
    }

    private DownloadObserver() {
    }

    public void registerDownloadListener(onDownLoadListener listener) {
        activityListener = new WeakReference<>(listener);
    }

    public void unRegisterDownloadListener() {
        if (activityListener != null && activityListener.get() != null) {
            activityListener.clear();
            activityListener = null;
        }
    }

    public void onSuccess(int position) {
        if (activityListener != null && activityListener.get() != null) {
            activityListener.get().onSuccess(position);
        }
    }

    public void onFail(int position) {
        if (activityListener != null && activityListener.get() != null) {
            activityListener.get().onFail(position);
        }
    }

    public void onProgress(int position, int progress) {
        if (activityListener != null && activityListener.get() != null) {
            activityListener.get().onProgress(position, progress);
        }
    }

    public void startDownLoad(int position, String url) {
        if (serviceListener.get() != null) {
            serviceListener.get().startDownload(position, url);
        }
    }

    public void registerRequestListener(onRequestListener listener) {
        serviceListener = new WeakReference<>(listener);
    }

    public void onTooManyTasks(int position) {
        if (activityListener != null && activityListener.get() != null) {
            activityListener.get().onTooManyTasks(position);
        }
    }

    public interface onDownLoadListener {
        void onSuccess(int position);

        void onFail(int position);

        void onProgress(int position, int progress);

        void onTooManyTasks(int position);

        void onDownloadOk(int position);

    }

    public interface onRequestListener {
        void startDownload(int position, String url);
    }
}



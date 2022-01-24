package com.today.player.util;

import android.text.TextUtils;

import com.today.player.cache.CacheManager;
import com.upa.DownloadManager;

import xyz.doikki.videoplayer.player.ProgressManager;

/**
 * @author pj567
 * @date :2020/12/24
 * @description:
 */
public class ProgressManagerImpl extends ProgressManager {

    private String key;

    public ProgressManagerImpl() {
    }

    public ProgressManagerImpl(String currentKey) {
        this.key = currentKey;
    }

    @Override
    public void saveProgress(String url, long progress) {
        CacheManager.save(MD5.string2MD5(url), progress);
    }

    @Override
    public long getSavedProgress(String url) {
        if (CacheManager.getCache(MD5.string2MD5(url)) == null) {
            return 0;
        }
        return (long) CacheManager.getCache(MD5.string2MD5(url));
    }


    public String getUrl(String url) {
        String srcName = DownloadManager.getInstance().getSrcName();
        String currentPlayPlayerUrl = DownloadManager.getInstance().getCurrentPlayerUrl();
        if (!TextUtils.isEmpty(url) && !TextUtils.isEmpty(srcName) && !TextUtils.isEmpty(currentPlayPlayerUrl) && !TextUtils.isEmpty(key) && key.equals(srcName)) {
            return currentPlayPlayerUrl;
        }
        return url;
    }


}
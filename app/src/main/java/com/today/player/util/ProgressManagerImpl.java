package com.today.player.util;

import android.text.TextUtils;
import android.util.Log;

import com.today.player.api.ApiConfig;
import com.today.player.cache.CacheManager;
import com.upa.DownloadManager;

import xyz.doikki.videoplayer.player.ProgressManager;

/**
 * @author pj567
 * @date :2020/12/24
 * @description:
 */
public class ProgressManagerImpl extends ProgressManager {

    @Override
    public void saveProgress(String url, long progress) {
        url = getUrl(url);
        CacheManager.save(MD5.string2MD5(url), progress);
    }

    @Override
    public long getSavedProgress(String url) {
        url = getUrl(url);
        if (CacheManager.getCache(MD5.string2MD5(url)) == null) {
            return 0;
        }
        return (long) CacheManager.getCache(MD5.string2MD5(url));
    }


    public String getUrl(String url) {
        String srcName = DownloadManager.getInstance().getSrcName();
        String currentPlayPlayerUrl = DownloadManager.getInstance().getCurrentPlayerUrl();
        String playKey = DownloadManager.getInstance().getPlay();
        if (!TextUtils.isEmpty(url) && !TextUtils.isEmpty(srcName) && !TextUtils.isEmpty(currentPlayPlayerUrl) && !TextUtils.isEmpty(playKey) && playKey.equals(srcName)) {
            return currentPlayPlayerUrl;
        }
        String playFlag = DownloadManager.getInstance().getPlayFlag();
        if (!TextUtils.isEmpty(playFlag) && ApiConfig.get().getParseFlagList() != null && ApiConfig.get().getParseFlagList().contains(playFlag)) {
            return currentPlayPlayerUrl;
        }
        return url;
    }
}

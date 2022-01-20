package com.today.player.util;

import com.today.player.cache.CacheManager;

import xyz.doikki.videoplayer.player.ProgressManager;

/**
 * @author pj567
 * @date :2020/12/24
 * @description:
 */
public class ProgressManagerImpl extends ProgressManager {
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


}
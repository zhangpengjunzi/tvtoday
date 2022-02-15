package com.today.player.data;

import androidx.room.Database;
import androidx.room.RoomDatabase;

import com.today.player.cache.Cache;
import com.today.player.cache.CacheDao;
import com.today.player.cache.Local;
import com.today.player.cache.LocalLive;
import com.today.player.cache.LocalLiveDao;
import com.today.player.cache.LocalParse;
import com.today.player.cache.LocalParseDao;
import com.today.player.cache.LocalSourceDao;
import com.today.player.cache.SourceState;
import com.today.player.cache.SourceStateDao;
import com.today.player.cache.VodRecord;
import com.today.player.cache.VodRecordDao;


/**
 * 类描述:
 *
 * @author pj567
 * @since 2020/5/15
 */
@Database(entities = {Cache.class, VodRecord.class, SourceState.class, Local.class, LocalParse.class, LocalLive.class}, version = 4)
public abstract class AppDataBase extends RoomDatabase {
    public abstract CacheDao getCacheDao();

    public abstract VodRecordDao getVodRecordDao();

    public abstract SourceStateDao getSourceStateDao();

    public abstract LocalSourceDao getLocalSource();

    public abstract LocalParseDao getLocalParse();

    public abstract LocalLiveDao getLocalLive();
}

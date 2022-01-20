package com.today.player.cache;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.OnConflictStrategy;
import androidx.room.Query;

import java.util.List;

@Dao
public interface LocalLiveDao {
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    long insert(LocalLive record);

    @Query("select * from localLive")
    List<LocalLive> getAll();

    @Delete
    int delete(LocalLive record);
}

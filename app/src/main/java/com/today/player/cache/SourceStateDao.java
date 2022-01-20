package com.today.player.cache;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.OnConflictStrategy;
import androidx.room.Query;
import androidx.room.Update;

import java.util.List;

/**
 * @author pj567
 * @date :2021/1/7
 * @description:
 */
@Dao
public interface SourceStateDao {
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    long insert(SourceState record);

    @Query("select * from sourceState")
    List<SourceState> getAll();

    @Delete
    int delete(SourceState record);

    @Update(onConflict = OnConflictStrategy.REPLACE)
    int update(SourceState record);
}
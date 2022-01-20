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
public interface LocalSourceDao {
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    long insert(Local record);

    @Query("select * from localSource")
    List<Local> getAll();

    @Delete
    int delete(Local record);

    @Update(onConflict = OnConflictStrategy.REPLACE)
    int update(Local record);
}
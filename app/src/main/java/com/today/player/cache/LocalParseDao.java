package com.today.player.cache;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.OnConflictStrategy;
import androidx.room.Query;

import java.util.List;

@Dao
public interface LocalParseDao {
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    long insert(LocalParse record);

    @Query("select * from localParse")
    List<LocalParse> getAll();

    @Delete
    int delete(LocalParse record);
}

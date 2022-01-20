package com.today.player.cache;


import androidx.annotation.NonNull;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;

import java.io.Serializable;

@Entity(tableName = "localSource")
public class Local implements Serializable {
    @NonNull
    public String api;
    @NonNull
    @PrimaryKey(autoGenerate = false)
    public String name;
    public String playerUrl;
    @ColumnInfo(defaultValue = "0")
    public int type;
}
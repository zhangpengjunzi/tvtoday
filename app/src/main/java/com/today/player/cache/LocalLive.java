package com.today.player.cache;

import androidx.annotation.NonNull;
import androidx.room.Entity;
import androidx.room.PrimaryKey;

import java.io.Serializable;

@Entity(tableName = "localLive")
public class LocalLive implements Serializable {
    @NonNull
    @PrimaryKey(autoGenerate = false)
    public String name;
    @NonNull
    public String url;
}
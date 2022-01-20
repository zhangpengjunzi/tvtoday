package com.today.player.cache;



import androidx.annotation.NonNull;
import androidx.room.Entity;
import androidx.room.PrimaryKey;

@Entity(tableName = "sourceState")
public class SourceState {
    public boolean active;
    public boolean home;
    @NonNull
    @PrimaryKey(autoGenerate = false)
    public String sourceKey;
    public String tidSort;

}

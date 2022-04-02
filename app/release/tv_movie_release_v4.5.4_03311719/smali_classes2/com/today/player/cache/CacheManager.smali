.class public Lcom/today/player/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/today/player/cache/Cache;

    invoke-direct {v0}, Lcom/today/player/cache/Cache;-><init>()V

    .line 71
    iput-object p0, v0, Lcom/today/player/cache/Cache;->key:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/today/player/cache/CacheManager;->toByteArray(Ljava/lang/Object;)[B

    move-result-object p0

    iput-object p0, v0, Lcom/today/player/cache/Cache;->data:[B

    .line 73
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/today/player/data/AppDataBase;->getCacheDao()Lcom/today/player/cache/CacheDao;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/today/player/cache/CacheDao;->delete(Lcom/today/player/cache/Cache;)I

    return-void
.end method

.method public static getCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 84
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getCacheDao()Lcom/today/player/cache/CacheDao;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/today/player/cache/CacheDao;->getCache(Ljava/lang/String;)Lcom/today/player/cache/Cache;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/today/player/cache/Cache;->data:[B

    if-eqz v0, :cond_0

    .line 86
    iget-object p0, p0, Lcom/today/player/cache/Cache;->data:[B

    invoke-static {p0}, Lcom/today/player/cache/CacheManager;->toObject([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static save(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/today/player/cache/Cache;

    invoke-direct {v0}, Lcom/today/player/cache/Cache;-><init>()V

    .line 78
    iput-object p0, v0, Lcom/today/player/cache/Cache;->key:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lcom/today/player/cache/CacheManager;->toByteArray(Ljava/lang/Object;)[B

    move-result-object p0

    iput-object p0, v0, Lcom/today/player/cache/Cache;->data:[B

    .line 80
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/today/player/data/AppDataBase;->getCacheDao()Lcom/today/player/cache/CacheDao;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/today/player/cache/CacheDao;->save(Lcom/today/player/cache/Cache;)J

    return-void
.end method

.method private static toByteArray(Ljava/lang/Object;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 48
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :try_start_2
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 51
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 60
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_7

    :catch_2
    move-exception p0

    move-object v2, v0

    :goto_2
    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_7

    :catch_3
    move-exception p0

    move-object v2, v0

    .line 53
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_0

    .line 57
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_4

    :catch_4
    move-exception p0

    goto :goto_5

    :cond_0
    :goto_4
    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 63
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_6
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :catchall_3
    move-exception p0

    :goto_7
    if-eqz v0, :cond_2

    .line 57
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_9

    :cond_2
    :goto_8
    if-eqz v2, :cond_3

    .line 60
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_a

    .line 63
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :cond_3
    :goto_a
    throw p0
.end method

.method private static toObject([B)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 22
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 30
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 33
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_5

    :catch_2
    move-exception v2

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_5

    :catch_3
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    .line 26
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_0

    .line 30
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    if-eqz p0, :cond_1

    .line 33
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 36
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_4
    return-object v0

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz v1, :cond_2

    .line 30
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_6

    :catch_5
    move-exception p0

    goto :goto_7

    :cond_2
    :goto_6
    if-eqz p0, :cond_3

    .line 33
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    .line 36
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :cond_3
    :goto_8
    throw v0
.end method

.class public Lcom/today/player/data/AppDataManager;
.super Ljava/lang/Object;
.source "AppDataManager.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "tv_movie_today.db"

.field private static manager:Lcom/today/player/data/AppDataManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/today/player/data/AppDataBase;
    .locals 3

    .line 37
    sget-object v0, Lcom/today/player/data/AppDataManager;->manager:Lcom/today/player/data/AppDataManager;

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-class v1, Lcom/today/player/data/AppDataBase;

    const-string v2, "tv_movie_today.db"

    invoke-static {v0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    new-instance v1, Lcom/today/player/data/AppDataManager$1;

    invoke-direct {v1}, Lcom/today/player/data/AppDataManager$1;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lcom/today/player/data/AppDataBase;

    return-object v0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AppDataManager is no init"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init()V
    .locals 2

    .line 27
    sget-object v0, Lcom/today/player/data/AppDataManager;->manager:Lcom/today/player/data/AppDataManager;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/today/player/data/AppDataManager;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/today/player/data/AppDataManager;->manager:Lcom/today/player/data/AppDataManager;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/today/player/data/AppDataManager;

    invoke-direct {v1}, Lcom/today/player/data/AppDataManager;-><init>()V

    sput-object v1, Lcom/today/player/data/AppDataManager;->manager:Lcom/today/player/data/AppDataManager;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

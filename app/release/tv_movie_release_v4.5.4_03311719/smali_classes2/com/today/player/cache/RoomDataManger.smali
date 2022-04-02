.class public Lcom/today/player/cache/RoomDataManger;
.super Ljava/lang/Object;
.source "RoomDataManger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteLocalLive(Lcom/today/player/cache/LocalLive;)V
    .locals 1

    .line 127
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getLocalLive()Lcom/today/player/cache/LocalLiveDao;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/today/player/cache/LocalLiveDao;->delete(Lcom/today/player/cache/LocalLive;)I

    return-void
.end method

.method public static deleteLocalParse(Lcom/today/player/cache/LocalParse;)V
    .locals 1

    .line 114
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getLocalParse()Lcom/today/player/cache/LocalParseDao;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/today/player/cache/LocalParseDao;->delete(Lcom/today/player/cache/LocalParse;)I

    return-void
.end method

.method public static deleteLocalSource(Lcom/today/player/cache/Local;)V
    .locals 1

    .line 94
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getLocalSource()Lcom/today/player/cache/LocalSourceDao;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/today/player/cache/LocalSourceDao;->delete(Lcom/today/player/cache/Local;)I

    return-void
.end method

.method public static deleteSourceState(Lcom/today/player/cache/SourceState;)V
    .locals 1

    .line 98
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getSourceStateDao()Lcom/today/player/cache/SourceStateDao;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/today/player/cache/SourceStateDao;->delete(Lcom/today/player/cache/SourceState;)I

    return-void
.end method

.method public static deleteVodRecord(Ljava/lang/String;Lcom/today/player/bean/VodInfo;)V
    .locals 1

    .line 40
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getVodRecordDao()Lcom/today/player/cache/VodRecordDao;

    move-result-object v0

    iget p1, p1, Lcom/today/player/bean/VodInfo;->id:I

    invoke-interface {v0, p0, p1}, Lcom/today/player/cache/VodRecordDao;->getVodRecord(Ljava/lang/String;I)Lcom/today/player/cache/VodRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 42
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/data/AppDataBase;->getVodRecordDao()Lcom/today/player/cache/VodRecordDao;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/today/player/cache/VodRecordDao;->delete(Lcom/today/player/cache/VodRecord;)I

    :cond_0
    return-void
.end method

.method public static getAllLocalLive()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/cache/LocalLive;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getLocalLive()Lcom/today/player/cache/LocalLiveDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/today/player/cache/LocalLiveDao;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllLocalParse()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/cache/LocalParse;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getLocalParse()Lcom/today/player/cache/LocalParseDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/today/player/cache/LocalParseDao;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllLocalSource()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/cache/Local;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getLocalSource()Lcom/today/player/cache/LocalSourceDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/today/player/cache/LocalSourceDao;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllSourceState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/cache/SourceState;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getSourceStateDao()Lcom/today/player/cache/SourceStateDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/today/player/cache/SourceStateDao;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllVodRecord()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/bean/VodInfo;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getVodRecordDao()Lcom/today/player/cache/VodRecordDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/today/player/cache/VodRecordDao;->getAll()Ljava/util/List;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/today/player/cache/VodRecord;

    .line 67
    iget-object v3, v2, Lcom/today/player/cache/VodRecord;->data:[B

    if-eqz v3, :cond_0

    .line 68
    iget-object v3, v2, Lcom/today/player/cache/VodRecord;->data:[B

    invoke-static {v3}, Lcom/lzy/okgo/utils/IOUtils;->toObject([B)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 70
    check-cast v3, Lcom/today/player/bean/VodInfo;

    .line 71
    iget-object v2, v2, Lcom/today/player/cache/VodRecord;->apiUrl:Ljava/lang/String;

    iput-object v2, v3, Lcom/today/player/bean/VodInfo;->apiUrl:Ljava/lang/String;

    .line 72
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getAllVodRecord(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/today/player/bean/VodInfo;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getVodRecordDao()Lcom/today/player/cache/VodRecordDao;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/today/player/cache/VodRecordDao;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 50
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/cache/VodRecord;

    .line 51
    iget-object v2, v1, Lcom/today/player/cache/VodRecord;->data:[B

    if-eqz v2, :cond_0

    .line 52
    iget-object v1, v1, Lcom/today/player/cache/VodRecord;->data:[B

    invoke-static {v1}, Lcom/lzy/okgo/utils/IOUtils;->toObject([B)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    check-cast v1, Lcom/today/player/bean/VodInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getVodInfo(Ljava/lang/String;I)Lcom/today/player/bean/VodInfo;
    .locals 1

    .line 32
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getVodRecordDao()Lcom/today/player/cache/VodRecordDao;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/today/player/cache/VodRecordDao;->getVodRecord(Ljava/lang/String;I)Lcom/today/player/cache/VodRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 33
    iget-object p1, p0, Lcom/today/player/cache/VodRecord;->data:[B

    if-eqz p1, :cond_0

    .line 34
    iget-object p0, p0, Lcom/today/player/cache/VodRecord;->data:[B

    invoke-static {p0}, Lcom/lzy/okgo/utils/IOUtils;->toObject([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/today/player/bean/VodInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static insertLocalLive(Lcom/today/player/cache/LocalLive;)V
    .locals 1

    .line 123
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getLocalLive()Lcom/today/player/cache/LocalLiveDao;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/today/player/cache/LocalLiveDao;->insert(Lcom/today/player/cache/LocalLive;)J

    return-void
.end method

.method public static insertLocalParse(Lcom/today/player/cache/LocalParse;)V
    .locals 1

    .line 110
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getLocalParse()Lcom/today/player/cache/LocalParseDao;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/today/player/cache/LocalParseDao;->insert(Lcom/today/player/cache/LocalParse;)J

    return-void
.end method

.method public static insertLocalSource(Lcom/today/player/cache/Local;)V
    .locals 1

    .line 90
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getLocalSource()Lcom/today/player/cache/LocalSourceDao;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/today/player/cache/LocalSourceDao;->insert(Lcom/today/player/cache/Local;)J

    return-void
.end method

.method public static insertSourceState(Lcom/today/player/cache/SourceState;)V
    .locals 1

    .line 82
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getSourceStateDao()Lcom/today/player/cache/SourceStateDao;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/today/player/cache/SourceStateDao;->insert(Lcom/today/player/cache/SourceState;)J

    return-void
.end method

.method public static insertVodRecord(Ljava/lang/String;Lcom/today/player/bean/VodInfo;)V
    .locals 3

    .line 20
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/data/AppDataBase;->getVodRecordDao()Lcom/today/player/cache/VodRecordDao;

    move-result-object v0

    iget v1, p1, Lcom/today/player/bean/VodInfo;->id:I

    invoke-interface {v0, p0, v1}, Lcom/today/player/cache/VodRecordDao;->getVodRecord(Ljava/lang/String;I)Lcom/today/player/cache/VodRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/today/player/cache/VodRecord;

    invoke-direct {v0}, Lcom/today/player/cache/VodRecord;-><init>()V

    .line 24
    :cond_0
    iput-object p0, v0, Lcom/today/player/cache/VodRecord;->apiUrl:Ljava/lang/String;

    .line 25
    iget p0, p1, Lcom/today/player/bean/VodInfo;->id:I

    iput p0, v0, Lcom/today/player/cache/VodRecord;->vodId:I

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/today/player/cache/VodRecord;->updateTime:J

    .line 27
    invoke-static {p1}, Lcom/lzy/okgo/utils/IOUtils;->toByteArray(Ljava/lang/Object;)[B

    move-result-object p0

    iput-object p0, v0, Lcom/today/player/cache/VodRecord;->data:[B

    .line 28
    invoke-static {}, Lcom/today/player/data/AppDataManager;->get()Lcom/today/player/data/AppDataBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/today/player/data/AppDataBase;->getVodRecordDao()Lcom/today/player/cache/VodRecordDao;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/today/player/cache/VodRecordDao;->insert(Lcom/today/player/cache/VodRecord;)J

    return-void
.end method

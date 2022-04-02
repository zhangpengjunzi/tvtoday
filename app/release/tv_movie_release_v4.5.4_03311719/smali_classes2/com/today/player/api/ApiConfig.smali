.class public Lcom/today/player/api/ApiConfig;
.super Ljava/lang/Object;
.source "ApiConfig.java"


# static fields
.field public static PinYinUrl:Ljava/lang/String; = "https://www.yuming8.com/pinyin/jieshi/"

.field private static instance:Lcom/today/player/api/ApiConfig;


# instance fields
.field private adsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private channelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$LiveDTO;",
            ">;"
        }
    .end annotation
.end field

.field private filterResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ijkConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/ui/dialog/MediaCodeDialog$pg;",
            ">;"
        }
    .end annotation
.end field

.field public mParseUrl:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

.field private mSourceBean:Lcom/today/player/bean/PlayerModel$SourcesDTO;

.field private parseFlag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private praseBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$ParseUrlDTO;",
            ">;"
        }
    .end annotation
.end field

.field private searchRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/SearchRequest;",
            ">;"
        }
    .end annotation
.end field

.field private sourceBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$SourcesDTO;",
            ">;"
        }
    .end annotation
.end field

.field private txadDTO:Lcom/today/player/bean/PlayerModel$TxadDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/api/ApiConfig;->sourceBeanList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/api/ApiConfig;->searchRequestList:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/api/ApiConfig;->channelList:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/api/ApiConfig;->praseBeanList:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/api/ApiConfig;->ijkConfigList:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/api/ApiConfig;->adsList:Ljava/util/List;

    return-void
.end method

.method public static get()Lcom/today/player/api/ApiConfig;
    .locals 2

    .line 69
    sget-object v0, Lcom/today/player/api/ApiConfig;->instance:Lcom/today/player/api/ApiConfig;

    if-nez v0, :cond_1

    .line 70
    const-class v0, Lcom/today/player/api/ApiConfig;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/today/player/api/ApiConfig;->instance:Lcom/today/player/api/ApiConfig;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/today/player/api/ApiConfig;

    invoke-direct {v1}, Lcom/today/player/api/ApiConfig;-><init>()V

    sput-object v1, Lcom/today/player/api/ApiConfig;->instance:Lcom/today/player/api/ApiConfig;

    .line 74
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 76
    :cond_1
    :goto_0
    sget-object v0, Lcom/today/player/api/ApiConfig;->instance:Lcom/today/player/api/ApiConfig;

    return-object v0
.end method

.method private getAssetText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 221
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 223
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 228
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method private loadIjkConfigSource(Lcom/today/player/bean/PlayerModel;)V
    .locals 12

    const-string v0, "ijk_codec"

    const-string v1, ""

    .line 142
    invoke-static {v0, v1}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 144
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel;->getIjk()Lcom/today/player/bean/PlayerModel$IjkDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/today/player/bean/PlayerModel$IjkDTO;->getOption()Ljava/util/List;

    move-result-object v2

    const-string v3, "|"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 145
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 146
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 147
    invoke-virtual {v6, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel;->getIjk()Lcom/today/player/bean/PlayerModel$IjkDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$IjkDTO;->getConfig()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 152
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/today/player/bean/PlayerModel$IjkDTO$ConfigDTO;

    .line 154
    new-instance v7, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;

    invoke-direct {v7}, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;-><init>()V

    .line 155
    invoke-virtual {v6}, Lcom/today/player/bean/PlayerModel$IjkDTO$ConfigDTO;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;->a:Ljava/lang/String;

    .line 156
    invoke-virtual {v6}, Lcom/today/player/bean/PlayerModel$IjkDTO$ConfigDTO;->getOption()Ljava/util/List;

    move-result-object v8

    .line 157
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 158
    invoke-virtual {v9, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v10, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 160
    :cond_1
    iput-object v1, v7, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;->b:Ljava/util/LinkedHashMap;

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6}, Lcom/today/player/bean/PlayerModel$IjkDTO$ConfigDTO;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    .line 166
    :cond_2
    invoke-virtual {v7, v5}, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;->a(Z)V

    goto :goto_4

    .line 162
    :cond_3
    :goto_3
    invoke-virtual {v7, v4}, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;->a(Z)V

    .line 163
    invoke-virtual {v6}, Lcom/today/player/bean/PlayerModel$IjkDTO$ConfigDTO;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 168
    :goto_4
    iget-object v6, p0, Lcom/today/player/api/ApiConfig;->ijkConfigList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    .line 170
    iget-object p1, p0, Lcom/today/player/api/ApiConfig;->ijkConfigList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 171
    iget-object p1, p0, Lcom/today/player/api/ApiConfig;->ijkConfigList:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;

    invoke-virtual {p1, v4}, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;->a(Z)V

    :cond_5
    return-void
.end method

.method private loadLiveSource()V
    .locals 3

    .line 178
    invoke-static {}, Lcom/today/player/cache/RoomDataManger;->getAllLocalLive()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/cache/LocalLive;

    .line 181
    new-instance v2, Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-direct {v2}, Lcom/today/player/bean/PlayerModel$LiveDTO;-><init>()V

    .line 182
    invoke-virtual {v2, v1}, Lcom/today/player/bean/PlayerModel$LiveDTO;->initFromLocal(Lcom/today/player/cache/LocalLive;)V

    .line 183
    iget-object v1, p0, Lcom/today/player/api/ApiConfig;->channelList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/today/player/api/ApiConfig;->channelList:Ljava/util/List;

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/today/player/api/ApiConfig;->channelList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadPraseSource()V
    .locals 3

    .line 193
    invoke-static {}, Lcom/today/player/cache/RoomDataManger;->getAllLocalParse()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/cache/LocalParse;

    .line 196
    new-instance v2, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    invoke-direct {v2}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;-><init>()V

    .line 197
    invoke-virtual {v2, v1}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->initFromLocal(Lcom/today/player/cache/LocalParse;)V

    .line 198
    iget-object v1, p0, Lcom/today/player/api/ApiConfig;->praseBeanList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/today/player/api/ApiConfig;->praseBeanList:Ljava/util/List;

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/today/player/api/ApiConfig;->praseBeanList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->praseBeanList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->praseBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    .line 206
    iget-boolean v2, v1, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->isDefault:Z

    if-eqz v2, :cond_2

    .line 207
    invoke-virtual {p0, v1}, Lcom/today/player/api/ApiConfig;->setDefault(Lcom/today/player/bean/PlayerModel$ParseUrlDTO;)V

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->mParseUrl:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    if-nez v0, :cond_4

    .line 212
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->praseBeanList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    invoke-virtual {p0, v0}, Lcom/today/player/api/ApiConfig;->setDefault(Lcom/today/player/bean/PlayerModel$ParseUrlDTO;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public cc(Lcom/today/player/bean/PlayerModel$SourcesDTO;)V
    .locals 3

    .line 307
    invoke-static {}, Lcom/upa/source/HintSource;->getInstance()Lcom/upa/source/HintSource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/today/player/api/ApiConfig$1;

    invoke-direct {v2, p0, p1}, Lcom/today/player/api/ApiConfig$1;-><init>(Lcom/today/player/api/ApiConfig;Lcom/today/player/bean/PlayerModel$SourcesDTO;)V

    invoke-virtual {v0, v1, v2}, Lcom/upa/source/HintSource;->notify(Ljava/lang/String;Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V

    return-void
.end method

.method public getAdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->adsList:Ljava/util/List;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->mSourceBean:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getApi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$LiveDTO;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->channelList:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultSourceBean()Lcom/today/player/bean/PlayerModel$SourcesDTO;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->mSourceBean:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    return-object v0
.end method

.method public getFilterResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->filterResult:Ljava/util/List;

    return-object v0
.end method

.method public getIjkConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/ui/dialog/MediaCodeDialog$pg;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->ijkConfigList:Ljava/util/List;

    return-object v0
.end method

.method public getParseFlagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->parseFlag:Ljava/util/List;

    return-object v0
.end method

.method public getPraseBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$ParseUrlDTO;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->praseBeanList:Ljava/util/List;

    return-object v0
.end method

.method public getSearchRequestList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/bean/SearchRequest;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->searchRequestList:Ljava/util/List;

    return-object v0
.end method

.method public getSource(Ljava/lang/String;)Lcom/today/player/bean/PlayerModel$SourcesDTO;
    .locals 3

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->sourceBeanList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->sourceBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    .line 248
    invoke-virtual {v1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSourceBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$SourcesDTO;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->sourceBeanList:Ljava/util/List;

    return-object v0
.end method

.method public getTxad()Lcom/today/player/bean/PlayerModel$TxadDTO;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->txadDTO:Lcom/today/player/bean/PlayerModel$TxadDTO;

    return-object v0
.end method

.method public loadSource(Ljava/lang/String;)V
    .locals 5

    .line 80
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 81
    const-class v1, Lcom/today/player/bean/PlayerModel;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/PlayerModel;

    .line 82
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel;->getSources()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/api/ApiConfig;->sourceBeanList:Ljava/util/List;

    .line 84
    invoke-static {}, Lcom/today/player/cache/RoomDataManger;->getAllLocalSource()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/cache/Local;

    .line 87
    new-instance v2, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-direct {v2}, Lcom/today/player/bean/PlayerModel$SourcesDTO;-><init>()V

    .line 88
    invoke-virtual {v2, v1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->initFromLocal(Lcom/today/player/cache/Local;)V

    .line 89
    iget-object v1, p0, Lcom/today/player/api/ApiConfig;->sourceBeanList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/today/player/api/ApiConfig;->sourceBeanList:Ljava/util/List;

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/today/player/api/ApiConfig;->sourceBeanList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->sourceBeanList:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    invoke-static {}, Lcom/today/player/cache/RoomDataManger;->getAllSourceState()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/today/player/cache/SourceState;

    .line 100
    iget-object v3, v2, Lcom/today/player/cache/SourceState;->sourceKey:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/today/player/api/ApiConfig;->sourceBeanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    .line 104
    invoke-virtual {v2}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 105
    invoke-virtual {v2}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/today/player/cache/SourceState;

    invoke-virtual {v2, v4}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->setState(Lcom/today/player/cache/SourceState;)V

    .line 107
    :cond_4
    invoke-virtual {v2}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isHome()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    invoke-virtual {p0, v2}, Lcom/today/player/api/ApiConfig;->setSourceBean(Lcom/today/player/bean/PlayerModel$SourcesDTO;)V

    .line 109
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->sourceBeanList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {p0, v0}, Lcom/today/player/api/ApiConfig;->cc(Lcom/today/player/bean/PlayerModel$SourcesDTO;)V

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->mSourceBean:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    if-nez v0, :cond_6

    .line 114
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->sourceBeanList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    iput-object v0, p0, Lcom/today/player/api/ApiConfig;->mSourceBean:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    .line 115
    invoke-virtual {p0, v0}, Lcom/today/player/api/ApiConfig;->setSourceBean(Lcom/today/player/bean/PlayerModel$SourcesDTO;)V

    .line 116
    invoke-static {}, Lcom/upa/source/HintSource;->getInstance()Lcom/upa/source/HintSource;

    move-result-object v0

    iget-object v1, p0, Lcom/today/player/api/ApiConfig;->mSourceBean:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upa/source/HintSource;->saveOldSource(Ljava/lang/String;)V

    .line 118
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->sourceBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 119
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->sourceBeanList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    .line 120
    iget-object v1, p0, Lcom/today/player/api/ApiConfig;->searchRequestList:Ljava/util/List;

    new-instance v2, Lcom/today/player/bean/SearchRequest;

    invoke-virtual {v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getApi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/today/player/bean/SearchRequest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 124
    :cond_7
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel;->getFilter()Lcom/today/player/bean/PlayerModel$FilterDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/bean/PlayerModel$FilterDTO;->getAdolescent()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/api/ApiConfig;->filterResult:Ljava/util/List;

    .line 126
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel;->getLive()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/api/ApiConfig;->channelList:Ljava/util/List;

    .line 127
    invoke-direct {p0}, Lcom/today/player/api/ApiConfig;->loadLiveSource()V

    .line 129
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel;->getParseUrl()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/api/ApiConfig;->praseBeanList:Ljava/util/List;

    .line 130
    invoke-direct {p0}, Lcom/today/player/api/ApiConfig;->loadPraseSource()V

    .line 132
    invoke-direct {p0, p1}, Lcom/today/player/api/ApiConfig;->loadIjkConfigSource(Lcom/today/player/bean/PlayerModel;)V

    .line 134
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel;->getAds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/api/ApiConfig;->adsList:Ljava/util/List;

    .line 136
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel;->getParseFlag()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/api/ApiConfig;->parseFlag:Ljava/util/List;

    .line 138
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel;->getTxad()Lcom/today/player/bean/PlayerModel$TxadDTO;

    move-result-object p1

    iput-object p1, p0, Lcom/today/player/api/ApiConfig;->txadDTO:Lcom/today/player/bean/PlayerModel$TxadDTO;

    return-void
.end method

.method public setDefault(Lcom/today/player/bean/PlayerModel$ParseUrlDTO;)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->mParseUrl:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 299
    invoke-virtual {v0, v1}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->setDefault(Z)V

    .line 301
    :cond_0
    iput-object p1, p0, Lcom/today/player/api/ApiConfig;->mParseUrl:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    const/4 v0, 0x1

    .line 302
    invoke-virtual {p1, v0}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->setDefault(Z)V

    return-void
.end method

.method public setSourceBean(Lcom/today/player/bean/PlayerModel$SourcesDTO;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/today/player/api/ApiConfig;->mSourceBean:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, v1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->setHome(Z)V

    .line 237
    :cond_0
    iput-object p1, p0, Lcom/today/player/api/ApiConfig;->mSourceBean:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    const/4 v0, 0x1

    .line 238
    invoke-virtual {p1, v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->setHome(Z)V

    return-void
.end method

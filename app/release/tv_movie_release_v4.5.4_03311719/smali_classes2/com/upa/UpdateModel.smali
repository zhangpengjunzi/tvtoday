.class public Lcom/upa/UpdateModel;
.super Ljava/lang/Object;
.source "UpdateModel.java"


# instance fields
.field private codeUrl:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private display:Ljava/lang/String;

.field private force:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private play:Ljava/lang/String;

.field private playEnd:Ljava/lang/String;

.field private playStart:Ljava/lang/String;

.field private srcname:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 6

    const-string v0, "0"

    const-string v1, ""

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 17
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "md5"

    .line 18
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/upa/UpdateModel;->md5:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string v3, "tv_source_file_name"

    const-string v4, "tv_source_net_md5"

    iget-object v5, p0, Lcom/upa/UpdateModel;->md5:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/upa/source/PreferencesUtils;->writeString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    const-string v3, "\u53d1\u73b0\u65b0\u7248\u672c\u5566!!!"

    .line 20
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/upa/UpdateModel;->title:Ljava/lang/String;

    const-string v2, "content"

    const-string v3, "\u4f18\u5316\u4e86\u90e8\u5206\u9875\u9762"

    .line 21
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/upa/UpdateModel;->content:Ljava/lang/String;

    const-string v2, "version"

    .line 22
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/upa/UpdateModel;->version:Ljava/lang/String;

    const-string v2, "force"

    const-string v3, "1"

    .line 23
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/upa/UpdateModel;->force:Ljava/lang/String;

    const-string v2, "url"

    .line 24
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/upa/UpdateModel;->url:Ljava/lang/String;

    const-string v2, "srcname"

    .line 25
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/upa/UpdateModel;->srcname:Ljava/lang/String;

    const-string v2, "display"

    .line 26
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/upa/UpdateModel;->display:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v2

    iget-object v3, p0, Lcom/upa/UpdateModel;->srcname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/upa/DownloadManager;->setSrcName(Ljava/lang/String;)V

    const-string v2, "codeurl"

    .line 28
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/upa/UpdateModel;->codeUrl:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v2

    iget-object v3, p0, Lcom/upa/UpdateModel;->codeUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/upa/DownloadManager;->setCodeUrl(Ljava/lang/String;)V

    const-string v2, "play"

    .line 30
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/upa/UpdateModel;->play:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/upa/UpdateModel;->play:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/upa/DownloadManager;->setPlay(Ljava/lang/String;)V

    const-string v1, "store"

    .line 32
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/upa/DownloadManager;->setStore(Ljava/lang/String;)V

    const-string v0, "surl"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/upa/DownloadManager;->setSurl(Ljava/lang/String;)V

    const-string v0, "adinfo"

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 37
    invoke-static {}, Lcom/bt/admanager/AdWeightManager;->getInstance()Lcom/bt/admanager/AdWeightManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bt/admanager/AdWeightManager;->setAdInfoArray(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getCodeUrl()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/upa/UpdateModel;->codeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/upa/UpdateModel;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/upa/UpdateModel;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getForce()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/upa/UpdateModel;->force:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/upa/UpdateModel;->play:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayEnd()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/upa/UpdateModel;->playEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayStart()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/upa/UpdateModel;->playStart:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcname()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/upa/UpdateModel;->srcname:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/upa/UpdateModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/upa/UpdateModel;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/upa/UpdateModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/upa/UpdateModel;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCodeUrl(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/upa/UpdateModel;->codeUrl:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/upa/UpdateModel;->content:Ljava/lang/String;

    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/upa/UpdateModel;->display:Ljava/lang/String;

    return-void
.end method

.method public setForce(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/upa/UpdateModel;->force:Ljava/lang/String;

    return-void
.end method

.method public setPlay(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/upa/UpdateModel;->play:Ljava/lang/String;

    return-void
.end method

.method public setPlayEnd(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/upa/UpdateModel;->playEnd:Ljava/lang/String;

    return-void
.end method

.method public setPlayStart(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/upa/UpdateModel;->playStart:Ljava/lang/String;

    return-void
.end method

.method public setSrcname(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/upa/UpdateModel;->srcname:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/upa/UpdateModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/upa/UpdateModel;->type:I

    const-string p1, "1"

    .line 150
    invoke-virtual {p0, p1}, Lcom/upa/UpdateModel;->setForce(Ljava/lang/String;)V

    const-string p1, "\u8b66\u544a"

    .line 151
    invoke-virtual {p0, p1}, Lcom/upa/UpdateModel;->setTitle(Ljava/lang/String;)V

    const-string p1, "\u8be5\u7248\u672c\u6709\u5f02\u5e38,\u8bf7\u70b9\u51fb\u6309\u94ae\u4e0b\u8f7d\u5b98\u65b9\u7248\u672c!"

    .line 152
    invoke-virtual {p0, p1}, Lcom/upa/UpdateModel;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/upa/UpdateModel;->url:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/upa/UpdateModel;->version:Ljava/lang/String;

    return-void
.end method

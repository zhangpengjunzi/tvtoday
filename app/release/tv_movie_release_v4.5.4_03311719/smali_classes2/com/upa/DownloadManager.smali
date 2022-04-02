.class public Lcom/upa/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upa/DownloadManager$DownLoadInit;
    }
.end annotation


# static fields
.field private static receive:Lcom/upa/receive/AppInstallReceiver;


# instance fields
.field private ads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private codeUrl:Ljava/lang/String;

.field private currentPlayerUrl:Ljava/lang/String;

.field private playFlag:Ljava/lang/String;

.field private playKey:Ljava/lang/String;

.field private srcName:Ljava/lang/String;

.field private store:Ljava/lang/String;

.field private surl:Ljava/lang/String;

.field private view:Lcom/upa/view/YsUpdateView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upa/DownloadManager;->ads:Ljava/util/List;

    const-string v0, "0"

    .line 43
    iput-object v0, p0, Lcom/upa/DownloadManager;->store:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/upa/DownloadManager;)Lcom/upa/view/YsUpdateView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/upa/DownloadManager;->view:Lcom/upa/view/YsUpdateView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/upa/DownloadManager;Lcom/upa/view/YsUpdateView;)Lcom/upa/view/YsUpdateView;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/upa/DownloadManager;->view:Lcom/upa/view/YsUpdateView;

    return-object p1
.end method

.method public static getInstance()Lcom/upa/DownloadManager;
    .locals 1

    .line 68
    sget-object v0, Lcom/upa/DownloadManager$DownLoadInit;->init:Lcom/upa/DownloadManager;

    return-object v0
.end method

.method private registerAppInstall(Landroid/content/Context;)V
    .locals 2

    .line 116
    :try_start_0
    new-instance v0, Lcom/upa/receive/AppInstallReceiver;

    invoke-direct {v0}, Lcom/upa/receive/AppInstallReceiver;-><init>()V

    sput-object v0, Lcom/upa/DownloadManager;->receive:Lcom/upa/receive/AppInstallReceiver;

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 122
    sget-object v1, Lcom/upa/DownloadManager;->receive:Lcom/upa/receive/AppInstallReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public download(Landroid/content/Context;Ljava/lang/String;Lcom/upa/im/IDownloadListener;)V
    .locals 1

    .line 110
    invoke-static {}, Lcom/upa/http/HttpRequest;->getInstance()Lcom/upa/http/HttpRequest;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/upa/http/HttpRequest;->saveApkFromHttps(Landroid/content/Context;Ljava/lang/String;Lcom/upa/im/IDownloadListener;)V

    return-void
.end method

.method public getAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/upa/DownloadManager;->ads:Ljava/util/List;

    return-object v0
.end method

.method public getCodeUrl()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/upa/DownloadManager;->codeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPlayerUrl()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/upa/DownloadManager;->currentPlayerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/upa/DownloadManager;->playKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayFlag()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/upa/DownloadManager;->playFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/upa/DownloadManager;->srcName:Ljava/lang/String;

    return-object v0
.end method

.method public getStore()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/upa/DownloadManager;->store:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSurl()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/upa/DownloadManager;->surl:Ljava/lang/String;

    return-object v0
.end method

.method public setAds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/upa/DownloadManager;->ads:Ljava/util/List;

    return-void
.end method

.method public setCodeUrl(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/upa/DownloadManager;->codeUrl:Ljava/lang/String;

    return-void
.end method

.method public setCurrentPlayerUrl(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/upa/DownloadManager;->currentPlayerUrl:Ljava/lang/String;

    return-void
.end method

.method public setPlay(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/upa/DownloadManager;->playKey:Ljava/lang/String;

    return-void
.end method

.method public setPlayFlag(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/upa/DownloadManager;->playFlag:Ljava/lang/String;

    return-void
.end method

.method public setSrcName(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/upa/DownloadManager;->srcName:Ljava/lang/String;

    return-void
.end method

.method public setStore(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/upa/DownloadManager;->store:Ljava/lang/String;

    return-void
.end method

.method public setSurl(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/upa/DownloadManager;->surl:Ljava/lang/String;

    return-void
.end method

.method public update(Landroid/content/Context;I)V
    .locals 3

    .line 76
    invoke-direct {p0, p1}, Lcom/upa/DownloadManager;->registerAppInstall(Landroid/content/Context;)V

    .line 77
    invoke-static {}, Lcom/upa/source/HintSource;->getInstance()Lcom/upa/source/HintSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/upa/source/HintSource;->setContext(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Lcom/upa/http/HttpRequest;->getInstance()Lcom/upa/http/HttpRequest;

    move-result-object v0

    new-instance v1, Lcom/upa/DownloadManager$1;

    invoke-direct {v1, p0, p1}, Lcom/upa/DownloadManager$1;-><init>(Lcom/upa/DownloadManager;Landroid/content/Context;)V

    const-string v2, "https://lfqdy.oss-cn-hongkong.aliyuncs.com/lfqdyapp/gp/initgp2"

    invoke-virtual {v0, p1, v2, p2, v1}, Lcom/upa/http/HttpRequest;->httpByteAsyn(Landroid/content/Context;Ljava/lang/String;ILcom/upa/im/YsRequestListener;)V

    return-void
.end method

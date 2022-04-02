.class public Lcom/upa/activation/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upa/activation/DownloadManager$DownLoadInit;
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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upa/activation/DownloadManager;->ads:Ljava/util/List;

    const-string v0, "0"

    .line 44
    iput-object v0, p0, Lcom/upa/activation/DownloadManager;->store:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/upa/activation/DownloadManager;)Lcom/upa/view/YsUpdateView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/upa/activation/DownloadManager;->view:Lcom/upa/view/YsUpdateView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/upa/activation/DownloadManager;Lcom/upa/view/YsUpdateView;)Lcom/upa/view/YsUpdateView;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/upa/activation/DownloadManager;->view:Lcom/upa/view/YsUpdateView;

    return-object p1
.end method

.method public static getInstance()Lcom/upa/activation/DownloadManager;
    .locals 1

    .line 69
    sget-object v0, Lcom/upa/activation/DownloadManager$DownLoadInit;->init:Lcom/upa/activation/DownloadManager;

    return-object v0
.end method

.method private registerAppInstall(Landroid/content/Context;)V
    .locals 2

    .line 117
    :try_start_0
    new-instance v0, Lcom/upa/receive/AppInstallReceiver;

    invoke-direct {v0}, Lcom/upa/receive/AppInstallReceiver;-><init>()V

    sput-object v0, Lcom/upa/activation/DownloadManager;->receive:Lcom/upa/receive/AppInstallReceiver;

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/upa/activation/DownloadManager;->receive:Lcom/upa/receive/AppInstallReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public download(Landroid/content/Context;Ljava/lang/String;Lcom/upa/im/IDownloadListener;)V
    .locals 1

    .line 111
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

    .line 155
    iget-object v0, p0, Lcom/upa/activation/DownloadManager;->ads:Ljava/util/List;

    return-object v0
.end method

.method public getCodeUrl()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/upa/activation/DownloadManager;->codeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPlayerUrl()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/upa/activation/DownloadManager;->currentPlayerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/upa/activation/DownloadManager;->playKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayFlag()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/upa/activation/DownloadManager;->playFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/upa/activation/DownloadManager;->srcName:Ljava/lang/String;

    return-object v0
.end method

.method public getStore()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/upa/activation/DownloadManager;->store:Ljava/lang/String;

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

    .line 61
    iget-object v0, p0, Lcom/upa/activation/DownloadManager;->surl:Ljava/lang/String;

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

    .line 159
    iput-object p1, p0, Lcom/upa/activation/DownloadManager;->ads:Ljava/util/List;

    return-void
.end method

.method public setCodeUrl(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/upa/activation/DownloadManager;->codeUrl:Ljava/lang/String;

    return-void
.end method

.method public setCurrentPlayerUrl(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/upa/activation/DownloadManager;->currentPlayerUrl:Ljava/lang/String;

    return-void
.end method

.method public setPlay(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/upa/activation/DownloadManager;->playKey:Ljava/lang/String;

    return-void
.end method

.method public setPlayFlag(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/upa/activation/DownloadManager;->playFlag:Ljava/lang/String;

    return-void
.end method

.method public setSrcName(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/upa/activation/DownloadManager;->srcName:Ljava/lang/String;

    return-void
.end method

.method public setStore(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/upa/activation/DownloadManager;->store:Ljava/lang/String;

    return-void
.end method

.method public setSurl(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/upa/activation/DownloadManager;->surl:Ljava/lang/String;

    return-void
.end method

.method public update(Landroid/content/Context;I)V
    .locals 3

    .line 77
    invoke-direct {p0, p1}, Lcom/upa/activation/DownloadManager;->registerAppInstall(Landroid/content/Context;)V

    .line 78
    invoke-static {}, Lcom/upa/source/HintSource;->getInstance()Lcom/upa/source/HintSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/upa/source/HintSource;->setContext(Landroid/content/Context;)V

    .line 80
    invoke-static {}, Lcom/upa/http/HttpRequest;->getInstance()Lcom/upa/http/HttpRequest;

    move-result-object v0

    new-instance v1, Lcom/upa/activation/DownloadManager$1;

    invoke-direct {v1, p0, p1}, Lcom/upa/activation/DownloadManager$1;-><init>(Lcom/upa/activation/DownloadManager;Landroid/content/Context;)V

    const-string v2, "https://lfqdy.oss-cn-hongkong.aliyuncs.com/lfqdyapp/gp/initgp2"

    invoke-virtual {v0, p1, v2, p2, v1}, Lcom/upa/http/HttpRequest;->httpByteAsyn(Landroid/content/Context;Ljava/lang/String;ILcom/upa/im/YsRequestListener;)V

    return-void
.end method

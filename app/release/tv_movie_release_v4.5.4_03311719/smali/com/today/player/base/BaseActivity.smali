.class public abstract Lcom/today/player/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mLoadService:Lcom/kingja/loadsir/core/LoadService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAssetText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/today/player/base/BaseActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 123
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 125
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method protected abstract getLayoutResID()I
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 136
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/today/player/base/BaseActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/today/player/base/BaseActivity$3;-><init>(Lcom/today/player/base/BaseActivity;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v1}, Lcom/today/player/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 50
    :try_start_0
    invoke-static {p0, p1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method protected abstract init()V
.end method

.method public jumpActivity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/today/player/base/BaseActivity;",
            ">;)V"
        }
    .end annotation

    .line 109
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/today/player/base/BaseActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/today/player/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public jumpActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/today/player/base/BaseActivity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/today/player/base/BaseActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Lcom/today/player/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/today/player/base/BaseActivity;->getLayoutResID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/today/player/base/BaseActivity;->setContentView(I)V

    .line 42
    iput-object p0, p0, Lcom/today/player/base/BaseActivity;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {}, Lcom/today/player/util/AppManager;->getInstance()Lcom/today/player/util/AppManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/today/player/util/AppManager;->addActivity(Landroid/app/Activity;)V

    .line 44
    invoke-virtual {p0}, Lcom/today/player/base/BaseActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 104
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 105
    invoke-static {}, Lcom/today/player/util/AppManager;->getInstance()Lcom/today/player/util/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/today/player/util/AppManager;->finishActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected retrySetLoadSir(Landroid/view/View;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/today/player/base/BaseActivity;->mLoadService:Lcom/kingja/loadsir/core/LoadService;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/today/player/base/BaseActivity;->mLoadService:Lcom/kingja/loadsir/core/LoadService;

    .line 75
    invoke-static {}, Lcom/kingja/loadsir/core/LoadSir;->getDefault()Lcom/kingja/loadsir/core/LoadSir;

    move-result-object v0

    new-instance v1, Lcom/today/player/base/BaseActivity$2;

    invoke-direct {v1, p0}, Lcom/today/player/base/BaseActivity$2;-><init>(Lcom/today/player/base/BaseActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/kingja/loadsir/core/LoadSir;->register(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)Lcom/kingja/loadsir/core/LoadService;

    move-result-object p1

    iput-object p1, p0, Lcom/today/player/base/BaseActivity;->mLoadService:Lcom/kingja/loadsir/core/LoadService;

    :cond_0
    return-void
.end method

.method protected setLoadSir(Landroid/view/View;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/today/player/base/BaseActivity;->mLoadService:Lcom/kingja/loadsir/core/LoadService;

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lcom/kingja/loadsir/core/LoadSir;->getDefault()Lcom/kingja/loadsir/core/LoadSir;

    move-result-object v0

    new-instance v1, Lcom/today/player/base/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/today/player/base/BaseActivity$1;-><init>(Lcom/today/player/base/BaseActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/kingja/loadsir/core/LoadSir;->register(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)Lcom/kingja/loadsir/core/LoadService;

    move-result-object p1

    iput-object p1, p0, Lcom/today/player/base/BaseActivity;->mLoadService:Lcom/kingja/loadsir/core/LoadService;

    :cond_0
    return-void
.end method

.method protected showEmpty()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/today/player/base/BaseActivity;->mLoadService:Lcom/kingja/loadsir/core/LoadService;

    if-eqz v0, :cond_0

    .line 92
    const-class v1, Lcom/today/player/callback/EmptyCallback;

    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/LoadService;->showCallback(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method protected showLoading()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/today/player/base/BaseActivity;->mLoadService:Lcom/kingja/loadsir/core/LoadService;

    if-eqz v0, :cond_0

    .line 86
    const-class v1, Lcom/today/player/callback/LoadingCallback;

    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/LoadService;->showCallback(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method protected showSuccess()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/today/player/base/BaseActivity;->mLoadService:Lcom/kingja/loadsir/core/LoadService;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/kingja/loadsir/core/LoadService;->showSuccess()V

    :cond_0
    return-void
.end method

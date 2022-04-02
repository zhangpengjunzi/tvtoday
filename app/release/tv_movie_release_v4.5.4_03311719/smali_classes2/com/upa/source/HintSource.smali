.class public Lcom/upa/source/HintSource;
.super Ljava/lang/Object;
.source "HintSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upa/source/HintSource$HintSourceInit;
    }
.end annotation


# static fields
.field private static final HINT_SOURCE_FILE_NAME:Ljava/lang/String; = "sourcefile"

.field private static final HINT_SOURCE_KEY:Ljava/lang/String; = "savesourcekey"


# instance fields
.field private dialog:Lcom/upa/view/ConfirmSourceDialog;

.field private downLoadState:I

.field private mContext:Landroid/content/Context;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/upa/source/HintSource;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/upa/source/HintSource;->downLoadState:I

    return p0
.end method

.method static synthetic access$100(Lcom/upa/source/HintSource;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/upa/source/HintSource;->release()V

    return-void
.end method

.method static synthetic access$200(Lcom/upa/source/HintSource;Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/upa/source/HintSource;->runMainDialog(Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/upa/source/HintSource;)Lcom/upa/view/ConfirmSourceDialog;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/upa/source/HintSource;->dialog:Lcom/upa/view/ConfirmSourceDialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/upa/source/HintSource;Lcom/upa/view/ConfirmSourceDialog;)Lcom/upa/view/ConfirmSourceDialog;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/upa/source/HintSource;->dialog:Lcom/upa/view/ConfirmSourceDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/upa/source/HintSource;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/upa/source/HintSource;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance()Lcom/upa/source/HintSource;
    .locals 1

    .line 28
    sget-object v0, Lcom/upa/source/HintSource$HintSourceInit;->init:Lcom/upa/source/HintSource;

    return-object v0
.end method

.method private release()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/upa/source/HintSource;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/upa/source/HintSource;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private runMainDialog(Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/upa/source/HintSource;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/upa/source/HintSource$3;

    invoke-direct {v1, p0, p1}, Lcom/upa/source/HintSource$3;-><init>(Lcom/upa/source/HintSource;Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V
    .locals 6

    .line 70
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/upa/source/HintSource;->timer:Ljava/util/Timer;

    .line 71
    new-instance v1, Lcom/upa/source/HintSource$1;

    invoke-direct {v1, p0, p1}, Lcom/upa/source/HintSource$1;-><init>(Lcom/upa/source/HintSource;Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 81
    iget-object p1, p0, Lcom/upa/source/HintSource;->timer:Ljava/util/Timer;

    new-instance v0, Lcom/upa/source/HintSource$2;

    invoke-direct {v0, p0}, Lcom/upa/source/HintSource$2;-><init>(Lcom/upa/source/HintSource;)V

    const-wide/16 v1, 0x3e80

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/upa/source/HintSource;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public notify(Ljava/lang/String;Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/upa/source/HintSource;->mContext:Landroid/content/Context;

    const-string v1, "sourcefile"

    const-string v2, "savesourcekey"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/upa/source/PreferencesUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 59
    invoke-virtual {p0, p2}, Lcom/upa/source/HintSource;->execute(Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V

    :cond_0
    return-void
.end method

.method public saveOldSource(Ljava/lang/String;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/upa/source/HintSource;->mContext:Landroid/content/Context;

    const-string v1, "sourcefile"

    const-string v2, "savesourcekey"

    invoke-static {v0, v1, v2, p1}, Lcom/upa/source/PreferencesUtils;->writeString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/upa/source/HintSource;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setDownLoadState(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/upa/source/HintSource;->downLoadState:I

    return-void
.end method

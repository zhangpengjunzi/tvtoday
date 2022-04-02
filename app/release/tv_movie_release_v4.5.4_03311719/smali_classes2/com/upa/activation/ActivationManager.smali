.class public Lcom/upa/activation/ActivationManager;
.super Ljava/lang/Object;
.source "ActivationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upa/activation/ActivationManager$ActivationInit;
    }
.end annotation


# instance fields
.field private activationView:Lcom/upa/activation/ActivationView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/upa/activation/ActivationManager;)Lcom/upa/activation/ActivationView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/upa/activation/ActivationManager;->activationView:Lcom/upa/activation/ActivationView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/upa/activation/ActivationManager;Lcom/upa/activation/ActivationView;)Lcom/upa/activation/ActivationView;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/upa/activation/ActivationManager;->activationView:Lcom/upa/activation/ActivationView;

    return-object p1
.end method

.method public static getInstance()Lcom/upa/activation/ActivationManager;
    .locals 1

    .line 16
    sget-object v0, Lcom/upa/activation/ActivationManager$ActivationInit;->init:Lcom/upa/activation/ActivationManager;

    return-object v0
.end method


# virtual methods
.method public active(Landroid/content/Context;Ljava/lang/String;Lcom/upa/im/ActivationResult;)V
    .locals 3

    .line 51
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upa/DownloadManager;->getCodeUrl()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel=jrys&type=tv_activation&tv_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "android_id"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&activation_code="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {}, Lcom/upa/http/HttpRequest;->getInstance()Lcom/upa/http/HttpRequest;

    move-result-object p2

    new-instance v1, Lcom/upa/activation/ActivationManager$2;

    invoke-direct {v1, p0, p3}, Lcom/upa/activation/ActivationManager$2;-><init>(Lcom/upa/activation/ActivationManager;Lcom/upa/im/ActivationResult;)V

    invoke-virtual {p2, v0, v1, p1}, Lcom/upa/http/HttpRequest;->httpPost(Ljava/lang/String;Lcom/upa/im/ActivationHttpListener;Ljava/lang/String;)V

    return-void
.end method

.method public isActivation(Landroid/content/Context;)V
    .locals 4

    .line 26
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upa/DownloadManager;->getCodeUrl()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel=jrys&type=is_activation&tv_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {}, Lcom/upa/http/HttpRequest;->getInstance()Lcom/upa/http/HttpRequest;

    move-result-object v2

    new-instance v3, Lcom/upa/activation/ActivationManager$1;

    invoke-direct {v3, p0, p1}, Lcom/upa/activation/ActivationManager$1;-><init>(Lcom/upa/activation/ActivationManager;Landroid/content/Context;)V

    invoke-virtual {v2, v0, v3, v1}, Lcom/upa/http/HttpRequest;->httpPost(Ljava/lang/String;Lcom/upa/im/ActivationHttpListener;Ljava/lang/String;)V

    return-void
.end method

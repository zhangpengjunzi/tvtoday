.class public final Lcom/bytedance/sdk/openadsdk/TTAdConfig;
.super Ljava/lang/Object;
.source "TTAdConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:[Ljava/lang/String;

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->c:Z

    .line 20
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->f:I

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->g:Z

    .line 22
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->h:Z

    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->i:Z

    .line 24
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->j:Z

    .line 27
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->l:Z

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->m:I

    .line 29
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->n:I

    .line 30
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->o:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/TTAdConfig$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 190
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 192
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getAppIconId()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->r:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCcpa()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->o:I

    return v0
.end method

.method public getCoppa()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->m:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDebugLog()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->q:I

    return v0
.end method

.method public getGDPR()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->n:I

    return v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedClearTaskReset()[Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBarTheme()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->f:I

    return v0
.end method

.method public isAllowShowNotify()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->g:Z

    return v0
.end method

.method public isAsyncInit()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->l:Z

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->h:Z

    return v0
.end method

.method public isPaid()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->c:Z

    return v0
.end method

.method public isSupportMultiProcess()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->j:Z

    return v0
.end method

.method public isUseTextureView()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->i:Z

    return v0
.end method

.method public setAllowShowNotify(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->g:Z

    return-void
.end method

.method public setAppIcon(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->r:I

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->a:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public setAsyncInit(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->l:Z

    return-void
.end method

.method public setCcpa(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->o:I

    return-void
.end method

.method public setCoppa(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->m:I

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->e:Ljava/lang/String;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->h:Z

    return-void
.end method

.method public setDebugLog(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->q:I

    return-void
.end method

.method public setGDPR(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->n:I

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->d:Ljava/lang/String;

    return-void
.end method

.method public varargs setNeedClearTaskReset([Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->k:[Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->p:Ljava/lang/String;

    return-void
.end method

.method public setPaid(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->c:Z

    return-void
.end method

.method public setSupportMultiProcess(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->j:Z

    .line 163
    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/api/b;->a(Z)V

    return-void
.end method

.method public setTitleBarTheme(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->f:I

    return-void
.end method

.method public setUseTextureView(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->i:Z

    return-void
.end method

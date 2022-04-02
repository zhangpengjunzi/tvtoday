.class public Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
.super Ljava/lang/Object;
.source "TTAdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/TTAdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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

.field private p:I

.field private q:Ljava/lang/String;

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->c:Z

    .line 214
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->f:I

    const/4 v1, 0x1

    .line 215
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->g:Z

    .line 216
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->h:Z

    .line 217
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->i:Z

    .line 218
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->j:Z

    .line 220
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->l:Z

    const/4 v0, -0x1

    .line 221
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->m:I

    .line 222
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->n:I

    .line 223
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->o:I

    return-void
.end method


# virtual methods
.method public allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->g:Z

    return-object p0
.end method

.method public allowShowPageWhenScreenLock(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public appIcon(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 248
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->r:I

    return-object p0
.end method

.method public appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public asyncInit(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 315
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->l:Z

    return-object p0
.end method

.method public build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;
    .locals 2

    .line 334
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdConfig$1;)V

    .line 335
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setAppId(Ljava/lang/String;)V

    .line 336
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->m:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setCoppa(I)V

    .line 337
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setAppName(Ljava/lang/String;)V

    .line 338
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->r:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setAppIcon(I)V

    .line 339
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->c:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setPaid(Z)V

    .line 340
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setKeywords(Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setData(Ljava/lang/String;)V

    .line 342
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->f:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setTitleBarTheme(I)V

    .line 343
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->g:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setAllowShowNotify(Z)V

    .line 344
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->h:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setDebug(Z)V

    .line 345
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->i:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setUseTextureView(Z)V

    .line 346
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->j:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setSupportMultiProcess(Z)V

    .line 347
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->k:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setNeedClearTaskReset([Ljava/lang/String;)V

    .line 348
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->l:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setAsyncInit(Z)V

    .line 349
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setGDPR(I)V

    .line 350
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->o:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setCcpa(I)V

    .line 351
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->p:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setDebugLog(I)V

    .line 352
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setPackageName(Ljava/lang/String;)V

    return-object v0
.end method

.method public coppa(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 228
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->m:I

    return-object p0
.end method

.method public data(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public debug(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 288
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->h:Z

    return-object p0
.end method

.method public debugLog(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 324
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->p:I

    return-object p0
.end method

.method public keywords(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public varargs needClearTaskReset([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->k:[Ljava/lang/String;

    return-object p0
.end method

.method public paid(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->c:Z

    return-object p0
.end method

.method public setCCPA(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 238
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->o:I

    return-object p0
.end method

.method public setGDPR(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 233
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->n:I

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->q:Ljava/lang/String;

    return-object p0
.end method

.method public supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 303
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->j:Z

    return-object p0
.end method

.method public titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 277
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->f:I

    return-object p0
.end method

.method public useTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 298
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->i:Z

    return-object p0
.end method

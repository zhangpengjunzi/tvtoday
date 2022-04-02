.class public final Lcom/bytedance/sdk/openadsdk/TTAdSdk;
.super Ljava/lang/Object;
.source "TTAdSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;
    }
.end annotation


# static fields
.field public static final INIT_LOCAL_FAIL_CODE:I = 0xfa0

.field public static final INIT_TIME:J

.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile b:Z

.field private static c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static final d:Lcom/bytedance/sdk/openadsdk/TTAdManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b:Z

    .line 64
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/w;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/w;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->INIT_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;JZLcom/bytedance/sdk/openadsdk/TTAdConfig;)V
    .locals 0

    .line 58
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b(Landroid/content/Context;JZLcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V
    .locals 2

    .line 161
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isAsyncInit()Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/l;->a:Z

    .line 163
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setAppId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getCoppa()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setCoppa(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getGDPR()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setGdpr(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getCcpa()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setCcpa(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getAppIconId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setIconId(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 169
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isPaid()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setPaid(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 170
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getKeywords()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setKeywords(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setData(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getTitleBarTheme()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setTitleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isAllowShowNotify()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setAllowShowNotifiFromSDK(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isUseTextureView()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->isUseTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 175
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getNeedClearTaskReset()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setNeedClearTaskReset([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getDebugLog()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->debugLog(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 178
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    invoke-static {}, Lcom/bytedance/sdk/component/utils/l;->b()V

    .line 180
    sget-object p1, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->openDebugMode()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 182
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/h;->a()V

    .line 184
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/f/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :catchall_0
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/j/f;->a:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 192
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 193
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 218
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
    .locals 0

    .line 58
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Z)V
    .locals 0

    .line 58
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Z)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 58
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b:Z

    return p0
.end method

.method private static b(Landroid/content/Context;JZLcom/bytedance/sdk/openadsdk/TTAdConfig;)V
    .locals 8

    .line 394
    new-instance v7, Lcom/bytedance/sdk/openadsdk/TTAdSdk$5;

    const-string v1, "initMustBeCall"

    move-object v0, v7

    move-object v2, p0

    move-object v3, p4

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$5;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;JZ)V

    invoke-static {v7}, Lcom/bytedance/sdk/component/g/e;->a(Lcom/bytedance/sdk/component/g/g;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V
    .locals 1

    .line 223
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/t;->a(Ljava/lang/String;)V

    .line 226
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Landroid/content/Context;)V

    .line 227
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isSupportMultiProcess()Z

    move-result p0

    if-nez p0, :cond_1

    .line 228
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()V

    .line 230
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/l;->b()V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
    .locals 1

    .line 276
    new-instance p2, Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;

    const-string v0, "init sync"

    invoke-direct {p2, v0, p0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/g/e;->a(Lcom/bytedance/sdk/component/g/g;I)V

    .line 309
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/l;->c()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$4;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$4;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdConfig;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Z)V
    .locals 4

    .line 239
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/j/e;->a()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d;->a(Landroid/content/Context;)V

    .line 243
    invoke-static {}, Lcom/bytedance/sdk/component/g/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 244
    invoke-static {p0}, Lcom/bytedance/sdk/component/f/c/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/component/f/c/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/f/c/a;->a(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 245
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/l;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 247
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isSupportMultiProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->a()V

    .line 251
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/a/a;->a()Lcom/bytedance/sdk/component/adexpress/a/a/a;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/a;->a()Lcom/bytedance/sdk/component/e/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/adexpress/a/a/a;->a(Lcom/bytedance/sdk/component/e/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/b/a/a/a;->a()Lcom/bytedance/sdk/component/b/a/a/a;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/j/f;->u()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/b/a/a/a;->a(Z)V

    .line 256
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->updateAdConfig(Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    .line 258
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    .line 259
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/l;->a()V

    const/4 v0, 0x0

    .line 262
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/l;->c()Landroid/os/Handler;

    move-result-object v1

    invoke-static {p0, v0, p2, v1}, Lcom/bykv/vk/openvk/component/video/api/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 263
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isSupportMultiProcess()Z

    move-result p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/api/b;->a(Z)V

    .line 264
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/component/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/f/a;->e()Lcom/bytedance/sdk/component/b/a/i;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/api/b;->a(Lcom/bytedance/sdk/component/b/a/i;)V

    .line 265
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_3

    .line 267
    invoke-static {p0}, Lcom/bykv/vk/openvk/component/video/a/a;->a(Landroid/content/Context;)V

    .line 269
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/j/f;->C()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 270
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/t;->a()Lcom/bytedance/sdk/openadsdk/core/t;

    :cond_4
    return-void
.end method

.method public static getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .line 151
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    return-object v0
.end method

.method public static getCCPA()I
    .locals 1

    .line 451
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->v()I

    move-result v0

    return v0
.end method

.method public static getCoppa()I
    .locals 1

    .line 374
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getCoppa()I

    move-result v0

    return v0
.end method

.method public static getGdpr()I
    .locals 1

    .line 388
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getGdpr()I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
    .locals 10

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 89
    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/core/l;->c:Z

    .line 90
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V

    const/16 v2, 0xfa0

    if-nez p0, :cond_0

    if-eqz p2, :cond_0

    const-string p0, "Context is null, please check. "

    .line 92
    invoke-interface {p2, v2, p0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;->fail(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const-string p0, "TTAdConfig is null, please check."

    .line 96
    invoke-interface {p2, v2, p0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;->fail(ILjava/lang/String;)V

    return-void

    .line 99
    :cond_1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v8, v2, v0

    .line 102
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 104
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;->success()V

    :cond_2
    return-void

    .line 108
    :cond_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;

    move-object v4, v0

    move-object v5, p2

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;J)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b;)V

    .line 140
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    return-void
.end method

.method public static isInitSuccess()Z
    .locals 1

    .line 77
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b:Z

    return v0
.end method

.method public static setCCPA(I)V
    .locals 1

    .line 442
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getCCPA()I

    move-result v0

    if-ne p0, v0, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/h;->f(I)V

    .line 446
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j/d;->a(Lcom/bytedance/sdk/openadsdk/core/j/b;)Lcom/bytedance/sdk/openadsdk/core/j/d;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/j/d;->a(Z)V

    return-void
.end method

.method public static setCoppa(I)V
    .locals 1

    .line 363
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getCoppa()I

    move-result v0

    if-ne p0, v0, :cond_0

    return-void

    .line 366
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setCoppa(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 368
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j/d;->a(Lcom/bytedance/sdk/openadsdk/core/j/b;)Lcom/bytedance/sdk/openadsdk/core/j/d;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/j/d;->a(Z)V

    return-void
.end method

.method public static setGdpr(I)V
    .locals 1

    .line 378
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getGdpr()I

    move-result v0

    if-ne p0, v0, :cond_0

    return-void

    .line 381
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setGdpr(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 383
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j/d;->a(Lcom/bytedance/sdk/openadsdk/core/j/b;)Lcom/bytedance/sdk/openadsdk/core/j/d;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/j/d;->a(Z)V

    return-void
.end method

.method public static updateAdConfig(Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h;->d(Ljava/lang/String;)V

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 340
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->getKeywords()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/h;->c(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

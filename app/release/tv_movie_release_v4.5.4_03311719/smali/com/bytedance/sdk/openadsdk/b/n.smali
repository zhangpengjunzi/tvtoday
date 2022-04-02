.class public Lcom/bytedance/sdk/openadsdk/b/n;
.super Ljava/lang/Object;
.source "LandingPageLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/b/n$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:Z

.field private q:Z

.field private r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private s:Landroid/webkit/WebView;

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Lcom/bytedance/sdk/openadsdk/b/u;

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Landroid/webkit/WebView;)V
    .locals 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 58
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->a:I

    .line 59
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->d:I

    const-string p1, "landingpage"

    .line 72
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->i:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 73
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->j:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->k:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->l:J

    .line 74
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->m:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->n:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->o:J

    .line 75
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->p:Z

    .line 76
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->q:Z

    .line 78
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->t:Z

    const-string p1, ""

    .line 81
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->u:Ljava/lang/String;

    .line 83
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->w:Z

    .line 86
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->g:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/n;->h:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 88
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/n;->s:Landroid/webkit/WebView;

    if-nez p3, :cond_0

    return-void

    .line 92
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_1

    .line 93
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->s:Landroid/webkit/WebView;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/b/n$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/bytedance/sdk/openadsdk/b/n$a;-><init>(Lcom/bytedance/sdk/openadsdk/b/n;Lcom/bytedance/sdk/openadsdk/b/n$1;)V

    const-string p3, "JS_LANDING_PAGE_LOG_OBJ"

    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/b/n;)Landroid/webkit/WebView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->s:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/b/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 419
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/n;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 6

    .line 423
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->t:Z

    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->h:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    :try_start_0
    const-string v1, "is_playable"

    .line 433
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/n;->h:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "usecache"

    .line 434
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a()Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    move-result-object v2

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/b/n;->h:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :catch_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v0, "ad_extra_data"

    .line 439
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v2, 0x0

    cmp-long p2, p3, v2

    if-lez p2, :cond_4

    const-string p2, "duration"

    .line 441
    invoke-virtual {v1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_4
    move-object v0, v1

    .line 447
    :catch_2
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendEvent: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/n;->i:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", ext="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LandingPageLog"

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/n;->g:Landroid/content/Context;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/n;->h:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/b/n;->i:Ljava/lang/String;

    invoke-static {p2, p3, p4, p1, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/b/n;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/b/n;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->u:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Z)Lcom/bytedance/sdk/openadsdk/b/n;
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->t:Z

    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->h:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->l:J

    return-void
.end method

.method public a(Landroid/webkit/WebView;I)V
    .locals 4

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onWebProgress: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LandingPageLog"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->m:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->m:J

    goto :goto_0

    .line 135
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->n:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->n:J

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onWebError: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LandingPageLog"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->v:Lcom/bytedance/sdk/openadsdk/b/u;

    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/u;->g()V

    :cond_0
    if-eqz p5, :cond_1

    const-string p1, "image"

    .line 360
    invoke-virtual {p5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 361
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->a:I

    const/4 p5, 0x2

    if-eq p1, p5, :cond_2

    const/4 p1, 0x3

    .line 362
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->a:I

    .line 364
    :cond_2
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/b/n;->d:I

    .line 365
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/n;->e:Ljava/lang/String;

    .line 366
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/b/n;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 413
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onWebStarted: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LandingPageLog"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->v:Lcom/bytedance/sdk/openadsdk/b/u;

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/u;->e()V

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "render_type"

    const-string v0, "h5"

    .line 148
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "render_type_2"

    .line 149
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p2, "load_start"

    .line 153
    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/b/n;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 10

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWebFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LandingPageLog"

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/n;->v:Lcom/bytedance/sdk/openadsdk/b/u;

    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/b/u;->f()V

    :cond_0
    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 162
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->p:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->t:Z

    if-eqz v0, :cond_1

    .line 163
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/b/n;->p:Z

    const-string v0, "javascript:\nfunction sendScroll(){\n   var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n   var clientH = window.innerHeight || document.documentElement.clientHeight;\n   var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n   var validH = scrollH + clientH;\n   var result = (validH/totalH*100).toFixed(2);\n   console.log(\'LandingPageLogscroll status: (\' + scrollH + \'+\' + clientH + \')/\' + totalH + \'=\' + result);\n   window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n}\nsendScroll();\nwindow.addEventListener(\'scroll\', function(e){\n    sendScroll();\n});"

    .line 178
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/k;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 254
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 258
    :cond_2
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v1, :cond_3

    .line 260
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/b/n;->a:I

    .line 262
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/b/n;->j:J

    .line 264
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->a:I

    if-ne p1, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    const-string p1, "render_type_2"

    const-string v1, "h5"

    const-string v2, "render_type"

    const-string v3, "error_url"

    const-string v4, "error_msg"

    const-string v5, "error_code"

    if-eqz p2, :cond_6

    .line 266
    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/b/n;->n:J

    iget-wide v8, p0, Lcom/bytedance/sdk/openadsdk/b/n;->m:J

    sub-long/2addr v6, v8

    .line 267
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 269
    :try_start_0
    iget v8, p0, Lcom/bytedance/sdk/openadsdk/b/n;->d:I

    invoke-virtual {p2, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 270
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/b/n;->e:Ljava/lang/String;

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/n;->f:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->k()Lcom/bytedance/sdk/openadsdk/core/j/c;

    move-result-object p1

    if-eqz p3, :cond_5

    .line 279
    iget-object p3, p1, Lcom/bytedance/sdk/openadsdk/core/j/c;->a:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    iget-boolean p3, p1, Lcom/bytedance/sdk/openadsdk/core/j/c;->b:Z

    if-eqz p3, :cond_5

    .line 280
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/c;->a:Ljava/lang/String;

    .line 281
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/component/f/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/f/a;->c()Lcom/bytedance/sdk/component/f/b/b;

    move-result-object p3

    .line 282
    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;)V

    .line 283
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "content-type"

    const-string v1, "application/json; charset=utf-8"

    .line 284
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/f/b/b;->d(Ljava/util/Map;)V

    .line 286
    new-instance p1, Lcom/bytedance/sdk/openadsdk/b/n$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/b/n$1;-><init>(Lcom/bytedance/sdk/openadsdk/b/n;)V

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/f/b/b;->a(Lcom/bytedance/sdk/component/f/a/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_5
    const-wide/32 v0, 0x927c0

    .line 321
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-string p1, "load_finish"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/n;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    goto :goto_1

    .line 323
    :cond_6
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 325
    :try_start_2
    iget p3, p0, Lcom/bytedance/sdk/openadsdk/b/n;->d:I

    invoke-virtual {p2, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 326
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/n;->e:Ljava/lang/String;

    invoke-virtual {p2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/n;->f:Ljava/lang/String;

    invoke-virtual {p2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const-string p1, "load_fail"

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/n;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/b/u;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->v:Lcom/bytedance/sdk/openadsdk/b/u;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->i:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/b/u;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->v:Lcom/bytedance/sdk/openadsdk/b/u;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->w:Z

    return v0
.end method

.method public d()V
    .locals 5

    const-string v0, "LandingPageLog"

    const-string v1, "onResume"

    .line 370
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->o:J

    .line 374
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->j:J

    return-void
.end method

.method public e()V
    .locals 7

    const-string v0, "LandingPageLog"

    const-string v1, "onStop"

    .line 378
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->i:Ljava/lang/String;

    const-string v1, "landingpage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->i:Ljava/lang/String;

    const-string v1, "landingpage_endcard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->i:Ljava/lang/String;

    const-string v1, "landingpage_split_screen"

    .line 380
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->i:Ljava/lang/String;

    const-string v1, "landingpage_direct"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 384
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 385
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->l:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/n;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 388
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->k:J

    .line 390
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/b/n;->j:J

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/b/n;->l:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 391
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "load_status"

    .line 393
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/b/n;->a:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "max_scroll_percent"

    .line 394
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/b/n;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "render_type"

    const-string v5, "h5"

    .line 395
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "render_type_2"

    .line 396
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-wide/32 v4, 0x927c0

    .line 400
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-string v2, "stay_page"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/n;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public f()V
    .locals 7

    const-string v0, "LandingPageLog"

    const-string v1, "onDestroy"

    .line 404
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 405
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->s:Landroid/webkit/WebView;

    .line 406
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/n;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/n;->h:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/n;->i:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/b/n;->o:J

    sub-long/2addr v3, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/component/reward/a/b;
.super Ljava/lang/Object;
.source "RewardFullPlayableManager.java"


# instance fields
.field protected final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field c:Z

.field d:Z

.field e:J

.field f:I

.field g:I

.field h:I

.field private i:Landroid/app/Activity;

.field private j:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field private k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

.field private o:Z

.field private p:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->m:I

    .line 54
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->o:Z

    .line 60
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->c:Z

    .line 66
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->d:Z

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->e:J

    .line 71
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->f:I

    .line 73
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->g:I

    .line 75
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->h:I

    .line 84
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->q:Z

    .line 85
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->i:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/a/b;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->o:Z

    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/a/b;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/a/b;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/reward/a/b;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->l:Ljava/lang/String;

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->i:Landroid/app/Activity;

    const-string v1, "tt_reward_playable_loading"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->n:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 14

    .line 178
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/j/f;->l()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayableLoadH5Url->loadH5Url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Playable"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 185
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/f/c;->d()D

    move-result-wide v3

    .line 186
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/f/c;->e()I

    move-result v5

    .line 188
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 189
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v6, ""

    .line 192
    :goto_0
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v7

    .line 193
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/f/c;->c()Ljava/lang/String;

    move-result-object v8

    .line 194
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/f/c;->a()Ljava/lang/String;

    move-result-object v9

    .line 195
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/f/c;->b()Ljava/lang/String;

    move-result-object v10

    .line 196
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/f/n;->U()Ljava/lang/String;

    move-result-object v11

    .line 197
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "appname="

    .line 198
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&stars="

    .line 199
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, "&comments="

    .line 200
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "&icon="

    .line 201
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&downloading="

    .line 202
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v3, "&id="

    .line 203
    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&packageName="

    .line 204
    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&downloadUrl="

    .line 205
    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&name="

    .line 206
    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&orientation="

    .line 207
    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->m:I

    if-ne v3, v1, :cond_2

    const-string v1, "portrait"

    goto :goto_1

    :cond_2
    const-string v1, "landscape"

    :goto_1
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&apptitle="

    .line 208
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playable-loadH5Url="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->n:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/core/f/n;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->at()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->g:I

    .line 371
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/j/f;->a(Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->h:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->p:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;->a(Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver$a;)V

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->p:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Landroid/webkit/DownloadListener;)V
    .locals 10

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->m()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v1

    new-instance v9, Lcom/bytedance/sdk/openadsdk/component/reward/a/b$1;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->i:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->f()Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object v5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/b;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/y;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/b/n;Z)V

    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 168
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->a(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDisplayZoomControls(Z)V

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->f()Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->g()Lcom/bytedance/sdk/openadsdk/b/n;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/a/c;-><init>(Lcom/bytedance/sdk/openadsdk/core/y;Lcom/bytedance/sdk/openadsdk/b/n;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;I)V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->q:Z

    .line 93
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    .line 94
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 95
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->l:Ljava/lang/String;

    .line 96
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->m:I

    .line 97
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->l()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/b/e;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->n:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getPlayView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 326
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->n:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getPlayView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->n:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getPlayView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 290
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->e:J

    sub-long/2addr v1, v3

    .line 296
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->i:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->l:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "return_foreground"

    .line 300
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 301
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->d:Z

    :cond_1
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->e:J

    sub-long/2addr v0, v2

    .line 313
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "duration"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->c()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDomStorageEnabled(Z)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->n:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aE()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 112
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->n:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->b()V

    const/4 v0, 0x1

    return v0

    .line 113
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->n:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->a()V

    return v1
.end method

.method public b(I)I
    .locals 2

    .line 351
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->h:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->g:I

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public b()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->c()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->c()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->n()I

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/b;->a()Lcom/bytedance/sdk/openadsdk/g/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->n()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 248
    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 249
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/b;->a()Lcom/bytedance/sdk/openadsdk/g/b;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/b;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->c:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 375
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->f:I

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 379
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->f:I

    return-void
.end method

.method public d()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->c:Z

    return v0
.end method

.method public e()V
    .locals 3

    .line 257
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->p:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

    .line 258
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/b$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;->a(Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver$a;)V

    .line 269
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->p:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->e:J

    return-void
.end method

.method public g()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->n:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->a()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public i()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->g:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 362
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/b;->f:I

    return v0
.end method

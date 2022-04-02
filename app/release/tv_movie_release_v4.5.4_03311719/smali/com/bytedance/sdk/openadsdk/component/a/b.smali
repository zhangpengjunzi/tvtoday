.class public Lcom/bytedance/sdk/openadsdk/component/a/b;
.super Ljava/lang/Object;
.source "TTAppOpenAdClickManager.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/bytedance/sdk/openadsdk/component/a/a;

.field private d:Lcom/com/bytedance/overseas/sdk/a/c;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Landroid/app/Activity;)V
    .locals 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "open_ad"

    .line 19
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->a:Ljava/lang/String;

    const/4 v0, 0x4

    .line 20
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->b:I

    .line 25
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/a/a;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->a:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->b:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->c:Lcom/bytedance/sdk/openadsdk/component/a/a;

    const v1, 0x1020002

    .line 26
    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/a/a;->a(Landroid/view/View;)V

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->c:Lcom/bytedance/sdk/openadsdk/component/a/a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_top_dislike"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/a/a;->b(Landroid/view/View;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "click_area"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "video_normal_ad"

    goto :goto_0

    :cond_0
    const-string v1, "image_normal_ad"

    :goto_0
    const-string v2, "openad_creative_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/p;->i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "click_scence"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->c:Lcom/bytedance/sdk/openadsdk/component/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/a/a;->a(Ljava/util/Map;)V

    .line 33
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/a/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 2

    .line 37
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/a/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "open_ad"

    .line 38
    invoke-static {p1, p2, v0}, Lcom/com/bytedance/overseas/sdk/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)Lcom/com/bytedance/overseas/sdk/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->d:Lcom/com/bytedance/overseas/sdk/a/c;

    .line 39
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->c:Lcom/bytedance/sdk/openadsdk/component/a/a;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/a/a;->a(Lcom/com/bytedance/overseas/sdk/a/c;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/f/n;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result p1

    return p1
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/component/a/a;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->c:Lcom/bytedance/sdk/openadsdk/component/a/a;

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->c:Lcom/bytedance/sdk/openadsdk/component/a/a;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V

    :cond_0
    return-void
.end method

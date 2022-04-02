.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;
.source "TTNativeExpressAdImpl.java"


# instance fields
.field protected a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field protected final b:Landroid/content/Context;

.field protected c:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field protected d:Ljava/lang/String;

.field private e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field private f:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

.field private g:Lcom/bytedance/sdk/openadsdk/dislike/b;

.field private h:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field private i:Lcom/com/bytedance/overseas/sdk/a/c;

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;-><init>()V

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->k:J

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->n:Ljava/lang/Double;

    const-string v0, "embeded_ad"

    .line 51
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->d:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->b:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;J)J
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->k:J

    return-wide p1
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .locals 3

    const/4 v0, 0x0

    .line 279
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 281
    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_0

    .line 282
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/com/bytedance/overseas/sdk/a/c;
    .locals 2

    .line 158
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->d:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/com/bytedance/overseas/sdk/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)Lcom/com/bytedance/overseas/sdk/a/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;)Lcom/com/bytedance/overseas/sdk/a/c;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->i:Lcom/com/bytedance/overseas/sdk/a/c;

    return-object p0
.end method

.method private a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->g:Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->g:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->g:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/dislike/b;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 152
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz p1, :cond_1

    .line 153
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->g:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setDislike(Lcom/bytedance/sdk/openadsdk/dislike/b;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;)Lcom/bytedance/sdk/openadsdk/dislike/b;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->g:Lcom/bytedance/sdk/openadsdk/dislike/b;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;)Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->h:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->k:J

    return-wide v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;)Ljava/lang/Double;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->n:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 60
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->d:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    return-void
.end method

.method protected a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 5

    .line 170
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 172
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/b/c;)V

    .line 187
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/com/bytedance/overseas/sdk/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->i:Lcom/com/bytedance/overseas/sdk/a/c;

    .line 189
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 193
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;)V

    .line 197
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 263
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;I)V

    .line 264
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(Landroid/view/View;)V

    .line 265
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->i:Lcom/com/bytedance/overseas/sdk/a/c;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(Lcom/com/bytedance/overseas/sdk/a/c;)V

    .line 266
    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 267
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;)V

    .line 269
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;I)V

    .line 270
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;)V

    .line 271
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->i:Lcom/com/bytedance/overseas/sdk/a/c;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/com/bytedance/overseas/sdk/a/c;)V

    .line 272
    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 273
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;)V

    const/4 p1, 0x1

    .line 274
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->l()V

    :cond_0
    return-void
.end method

.method public getAdCreativeToken()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpressAdView()Landroid/view/View;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-object v0
.end method

.method public getFilterWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ae()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ad()I

    move-result v0

    return v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 107
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v0

    return v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aj()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->m:Z

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/k/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 309
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->m:Z

    :cond_0
    return-void
.end method

.method public render()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->j()V

    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->f:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "dialog is null, please check"

    .line 134
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->h:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setOuterDislike(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_1
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V
    .locals 1

    .line 90
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .locals 1

    .line 84
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->n:Ljava/lang/Double;

    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 299
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->l:Z

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/Double;)V

    const/4 p1, 0x1

    .line 301
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;->l:Z

    :cond_0
    return-void
.end method

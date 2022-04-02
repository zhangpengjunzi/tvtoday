.class public Lcom/bytedance/sdk/openadsdk/core/b/a;
.super Lcom/bytedance/sdk/openadsdk/core/b/b;
.source "ClickCreativeListener.java"


# instance fields
.field private F:Z

.field private G:Z

.field private H:I

.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Z

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->F:Z

    .line 43
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->G:Z

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "open_ad"

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "slide_banner_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "draw_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "interaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "embeded_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "banner_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v6, :cond_4

    const-string v0, "banner_call"

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    const-string p1, "interaction_call"

    return-object p1

    :cond_3
    return-object v0

    :cond_4
    const-string p1, "feed_call"

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_5
        -0x4b4ad1c8 -> :sswitch_4
        -0x2a77c376 -> :sswitch_3
        0x6deace12 -> :sswitch_2
        0x72060cfe -> :sswitch_1
        0x7cab2108 -> :sswitch_0
    .end sparse-switch
.end method

.method private d(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 200
    :cond_0
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    const-string v2, "ClickCreativeListener"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string p1, "NativeVideoTsView...."

    .line 201
    invoke-static {v2, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    const-string v5, "tt_video_ad_cover_center_layout"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    const-string v5, "tt_video_ad_logo_image"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    const-string v5, "tt_video_btn_ad_image_tv"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    const-string v5, "tt_video_ad_name"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    const-string v5, "tt_video_ad_button"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne v1, v4, :cond_2

    goto :goto_3

    .line 215
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    const-string v5, "tt_root_view"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    const-string v5, "tt_video_play"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne v1, v4, :cond_3

    goto :goto_2

    .line 219
    :cond_3
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 220
    :goto_0
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 221
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->d(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    const-string p1, "tt_root_view...."

    .line 216
    invoke-static {v2, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_7
    :goto_3
    const-string p1, "tt_video_ad_cover_center_layout...."

    .line 211
    invoke-static {v2, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private g()Z
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->p()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private h()Z
    .locals 1

    .line 232
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private i()Z
    .locals 5

    .line 242
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ad()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 249
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ad()I

    move-result v0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_2

    return v1

    .line 252
    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->H:I

    if-nez v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/t;->e(Lcom/bytedance/sdk/openadsdk/core/f/n;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->H:I

    .line 257
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!isViewVisibility()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isAutoPlay()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",!isCoverPageVisibility()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->c()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ClickCreativeListener"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->H:I

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 262
    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->H:I

    if-eq v0, v4, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    return v4
.end method


# virtual methods
.method public a(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/b/c$a;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v10, p1

    move/from16 v9, p7

    const/4 v2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 59
    invoke-virtual/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Landroid/view/View;IFFFFLandroid/util/SparseArray;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->i()Z

    move-result v0

    const-string v1, "ClickCreativeListener"

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->G:Z

    if-nez v0, :cond_1

    const-string v0, "Intercept the native video view , Select the normal click event....."

    .line 64
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-super/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    return-void

    :cond_1
    const-string v0, "Select creative area click event....."

    .line 68
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    .line 73
    :cond_2
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    if-nez v0, :cond_3

    return-void

    .line 76
    :cond_3
    invoke-virtual {v11, v10, v9}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Landroid/view/View;Z)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 80
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 81
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Lcom/bytedance/sdk/openadsdk/core/f/j;

    const/16 v18, -0x1

    if-eqz v1, :cond_5

    .line 82
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Lcom/bytedance/sdk/openadsdk/core/f/j;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/j;->l:I

    .line 83
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Lcom/bytedance/sdk/openadsdk/core/f/j;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/f/j;->m:Lorg/json/JSONObject;

    move/from16 v16, v0

    move-object/from16 v17, v1

    goto :goto_0

    :cond_5
    move-object/from16 v17, v0

    const/16 v16, -0x1

    .line 85
    :goto_0
    iget-wide v6, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->w:J

    iget-wide v4, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->x:J

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->g:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->d()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    move-object/from16 v19, v0

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_7

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->e()Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_7
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_2
    move-object/from16 v20, v0

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->f()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;)F

    move-result v13

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->g(Landroid/content/Context;)I

    move-result v14

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->f(Landroid/content/Context;)F

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v21, v4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v8, v21

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    .line 85
    invoke-virtual/range {v0 .. v17}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(FFFFLandroid/util/SparseArray;JJLandroid/view/View;Landroid/view/View;Ljava/lang/String;FIFILorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/f/g;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/f/g;

    .line 90
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v0, v5, :cond_12

    if-eq v0, v3, :cond_12

    if-eq v0, v2, :cond_c

    const/4 v2, 0x5

    if-eq v0, v2, :cond_8

    move-object/from16 v2, p1

    const/4 v0, -0x1

    goto/16 :goto_f

    .line 110
    :cond_8
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 111
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 112
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/f/g;

    const/4 v11, 0x1

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->o:Ljava/util/Map;

    if-eqz p7, :cond_9

    const/4 v13, 0x1

    goto :goto_3

    :cond_9
    const/4 v13, 0x2

    :goto_3
    const-string v7, "click_call"

    invoke-static/range {v6 .. v13}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/core/f/g;Ljava/lang/String;ZLjava/util/Map;I)V

    .line 115
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/t;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    .line 116
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/f/g;

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Ljava/lang/String;

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->o:Ljava/util/Map;

    if-eqz p7, :cond_b

    const/4 v13, 0x1

    goto :goto_4

    :cond_b
    const/4 v13, 0x2

    :goto_4
    const-string v7, "click"

    invoke-static/range {v6 .. v13}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/core/f/g;Ljava/lang/String;ZLjava/util/Map;I)V

    goto :goto_7

    .line 94
    :cond_c
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    if-nez v2, :cond_d

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v2, :cond_f

    .line 95
    :cond_d
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget v8, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->f:I

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Ljava/lang/String;

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->n:Lcom/com/bytedance/overseas/sdk/a/c;

    const/4 v13, 0x1

    invoke-static/range {v6 .. v13}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/com/bytedance/overseas/sdk/a/c;Z)Z

    move-result v19

    .line 97
    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Z

    if-eqz v2, :cond_11

    .line 98
    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/f/g;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Ljava/lang/String;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->o:Ljava/util/Map;

    if-eqz p7, :cond_e

    const/16 v21, 0x1

    goto :goto_5

    :cond_e
    const/16 v21, 0x2

    :goto_5
    const-string v15, "click"

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    invoke-static/range {v14 .. v21}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/core/f/g;Ljava/lang/String;ZLjava/util/Map;I)V

    goto :goto_7

    .line 101
    :cond_f
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->n:Lcom/com/bytedance/overseas/sdk/a/c;

    if-eqz v2, :cond_11

    .line 102
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->n:Lcom/com/bytedance/overseas/sdk/a/c;

    invoke-interface {v2}, Lcom/com/bytedance/overseas/sdk/a/c;->d()V

    .line 103
    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Z

    if-eqz v2, :cond_11

    .line 104
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/f/g;

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Ljava/lang/String;

    const/4 v11, 0x1

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->o:Ljava/util/Map;

    if-eqz p7, :cond_10

    const/4 v13, 0x1

    goto :goto_6

    :cond_10
    const/4 v13, 0x2

    :goto_6
    const-string v7, "click"

    invoke-static/range {v6 .. v13}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/core/f/g;Ljava/lang/String;ZLjava/util/Map;I)V

    :cond_11
    :goto_7
    move-object/from16 v2, p1

    goto/16 :goto_f

    :cond_12
    if-ne v0, v3, :cond_14

    .line 124
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->O()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    const-string v6, "play.google.com/store/apps/details?id="

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "?id="

    .line 126
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/com/bytedance/overseas/sdk/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 128
    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Z

    if-eqz v2, :cond_11

    .line 129
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/f/g;

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Ljava/lang/String;

    const/4 v11, 0x1

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->o:Ljava/util/Map;

    if-eqz p7, :cond_13

    const/4 v13, 0x1

    goto :goto_8

    :cond_13
    const/4 v13, 0x2

    :goto_8
    const-string v7, "click"

    invoke-static/range {v6 .. v13}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/core/f/g;Ljava/lang/String;ZLjava/util/Map;I)V

    goto :goto_7

    .line 137
    :cond_14
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    if-nez v2, :cond_16

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->F:Z

    if-eqz v2, :cond_15

    goto :goto_a

    :cond_15
    :goto_9
    move-object/from16 v2, p1

    goto :goto_c

    .line 138
    :cond_16
    :goto_a
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/f/g;

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Ljava/lang/String;

    const/4 v11, 0x1

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->o:Ljava/util/Map;

    if-eqz p7, :cond_17

    const/4 v13, 0x1

    goto :goto_b

    :cond_17
    const/4 v13, 0x2

    :goto_b
    const-string v7, "click_button"

    invoke-static/range {v6 .. v13}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/core/f/g;Ljava/lang/String;ZLjava/util/Map;I)V

    goto :goto_9

    :goto_c
    if-eqz v2, :cond_18

    .line 142
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    const-string v7, "tt_root_view"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eq v3, v6, :cond_19

    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    if-nez v3, :cond_19

    .line 144
    :cond_18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v3

    const-string v6, "tt_id_is_video_picture"

    invoke-static {v3, v6}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    check-cast v3, Ljava/lang/Boolean;

    .line 145
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 146
    :cond_19
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    nop

    .line 151
    :cond_1a
    :goto_d
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget v8, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->f:I

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget v3, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->f:I

    .line 152
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/t;->a(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->n:Lcom/com/bytedance/overseas/sdk/a/c;

    const/4 v13, 0x1

    .line 151
    invoke-static/range {v6 .. v13}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/com/bytedance/overseas/sdk/a/c;Z)Z

    move-result v19

    const/4 v3, 0x0

    .line 153
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Z)V

    .line 154
    iget-boolean v3, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Z

    if-eqz v3, :cond_1c

    .line 155
    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/f/g;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Ljava/lang/String;

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->o:Ljava/util/Map;

    if-eqz p7, :cond_1b

    const/16 v21, 0x1

    goto :goto_e

    :cond_1b
    const/16 v21, 0x2

    :goto_e
    const-string v15, "click"

    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    invoke-static/range {v14 .. v21}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/core/f/g;Ljava/lang/String;ZLjava/util/Map;I)V

    .line 162
    :cond_1c
    :goto_f
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->j:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    if-eqz v3, :cond_1d

    .line 163
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->j:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    invoke-interface {v3, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/b/b$a;->a(Landroid/view/View;I)V

    :cond_1d
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Z

    return-void
.end method

.method protected a()Z
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/t;->f(Lcom/bytedance/sdk/openadsdk/core/f/n;)I

    move-result v0

    .line 170
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/j/f;->c(I)I

    move-result v0

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    return v1

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/o;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/o;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    return v3

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/o;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/o;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/o;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_1
    return v1

    .line 176
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/o;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->F:Z

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->G:Z

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

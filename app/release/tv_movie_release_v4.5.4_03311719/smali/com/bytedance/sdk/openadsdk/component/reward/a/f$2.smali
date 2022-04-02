.class Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;
.super Ljava/lang/Object;
.source "RewardFullWebViewManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/a/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "tt_id_click_end"

    const-string v2, "tt_id_click_begin"

    const/4 v3, 0x0

    .line 773
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v4, :cond_9

    if-eq v4, v10, :cond_8

    if-eq v4, v9, :cond_1

    if-eq v4, v7, :cond_0

    const/4 v12, -0x1

    goto/16 :goto_1

    :cond_0
    const/4 v7, 0x4

    const/4 v12, 0x4

    goto/16 :goto_1

    .line 793
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 795
    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->f(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F

    move-result v7

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v7, Lcom/bytedance/sdk/openadsdk/core/o;->a:I

    int-to-float v7, v7

    cmpl-float v2, v2, v7

    if-gez v2, :cond_2

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->g(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F

    move-result v2

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v7, Lcom/bytedance/sdk/openadsdk/core/o;->a:I

    int-to-float v7, v7

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_3

    .line 796
    :cond_2
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Z)Z

    .line 798
    :cond_3
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->h(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v12}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->f(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    add-float/2addr v7, v11

    invoke-static {v2, v7}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->c(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;F)F

    .line 799
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->i(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v12}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->g(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    add-float/2addr v7, v11

    invoke-static {v2, v7}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;F)F

    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->e(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/16 v13, 0xc8

    const/high16 v2, 0x41000000    # 8.0f

    cmp-long v7, v11, v13

    if-lez v7, :cond_5

    .line 801
    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->h(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F

    move-result v7

    cmpl-float v7, v7, v2

    if-gtz v7, :cond_4

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->i(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F

    move-result v7

    cmpl-float v7, v7, v2

    if-lez v7, :cond_5

    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x2

    .line 808
    :goto_0
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->j(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 809
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->g(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F

    move-result v11

    sub-float v11, v4, v11

    cmpl-float v2, v11, v2

    if-lez v2, :cond_6

    .line 810
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->k(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Lcom/bytedance/sdk/openadsdk/common/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/common/c;->a()V

    .line 812
    :cond_6
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->g(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F

    move-result v2

    sub-float/2addr v4, v2

    const/high16 v2, -0x3f000000    # -8.0f

    cmpg-float v2, v4, v2

    if-gez v2, :cond_7

    .line 813
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->k(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Lcom/bytedance/sdk/openadsdk/common/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/common/c;->b()V

    :cond_7
    move v12, v7

    goto :goto_1

    :cond_8
    const/4 v12, 0x3

    goto :goto_1

    .line 776
    :cond_9
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 777
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;F)F

    .line 778
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->b(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;F)F

    .line 779
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v4, v11, v12}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    :try_start_1
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v4, v11, v5

    if-lez v4, :cond_a

    .line 782
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->e(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)J

    move-result-wide v13

    cmp-long v4, v11, v13

    if-gez v4, :cond_a

    .line 783
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v4, v11, v12}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;J)J

    .line 784
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Lcom/bytedance/sdk/component/widget/SSWebView;->setTag(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 789
    :catch_0
    :cond_a
    :try_start_2
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->c(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;F)F

    .line 790
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;F)F

    const/4 v12, 0x0

    .line 825
    :goto_1
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->l(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/b/c$a;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v11

    float-to-double v13, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v11

    float-to-double v8, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v11, v7

    move-wide v15, v8

    invoke-direct/range {v11 .. v18}, Lcom/bytedance/sdk/openadsdk/core/b/c$a;-><init>(IDDJ)V

    invoke-virtual {v2, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v10, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    if-ne v2, v10, :cond_12

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 828
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "down_x"

    .line 829
    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->f(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v2, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "down_y"

    .line 830
    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->g(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v2, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "down_time"

    .line 831
    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->e(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)J

    move-result-wide v7

    invoke-virtual {v2, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "up_x"

    .line 833
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v2, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "up_y"

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v2, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 835
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 837
    :try_start_3
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v4, v11, v5

    if-lez v4, :cond_b

    cmp-long v4, v11, v7

    if-gez v4, :cond_b

    .line 840
    :try_start_4
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/bytedance/sdk/component/widget/SSWebView;->setTag(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-wide v7, v11

    :catch_2
    :cond_b
    :try_start_5
    const-string v0, "up_time"

    .line 845
    invoke-virtual {v2, v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 850
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->j(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 851
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->n(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v6

    const-string v7, "tt_title_bar_feedback"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Landroid/view/View;)Landroid/view/View;

    goto :goto_2

    .line 853
    :cond_c
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->n(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v6

    const-string v7, "tt_top_dislike"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Landroid/view/View;)Landroid/view/View;

    .line 855
    :goto_2
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->o(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 856
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->o(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string v0, "button_x"

    .line 857
    aget v5, v4, v3

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "button_y"

    .line 858
    aget v4, v4, v10

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "button_width"

    .line 859
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->o(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "button_height"

    .line 860
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->o(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 863
    :cond_d
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->p(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 865
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->p(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string v0, "ad_x"

    .line 866
    aget v5, v4, v3

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ad_y"

    .line 867
    aget v4, v4, v10

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "width"

    .line 868
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->p(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "height"

    .line 869
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->p(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_e
    const-string v0, "toolType"

    move-object/from16 v4, p2

    .line 871
    invoke-virtual {v4, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "source"

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ft"

    .line 874
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->l(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_3

    :cond_f
    const/4 v5, 0x2

    :goto_3
    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/f/g;->a(Landroid/util/SparseArray;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "user_behavior_type"

    .line 875
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->q(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    goto :goto_4

    :cond_10
    const/4 v4, 0x2

    :goto_4
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "click_scence"

    const/4 v4, 0x2

    .line 878
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 879
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->r(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v4, "click"

    if-eqz v0, :cond_11

    .line 880
    :try_start_6
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->n(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/app/Activity;

    move-result-object v0

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->b(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v5

    const-string v6, "rewarded_video"

    invoke-static {v0, v5, v6, v4, v2}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 882
    :cond_11
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->n(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/app/Activity;

    move-result-object v0

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->b(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v5

    const-string v6, "fullscreen_interstitial_ad"

    invoke-static {v0, v5, v6, v4, v2}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 884
    :goto_5
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v0, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->b(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    const-string v2, "RewardFullWebViewManage"

    const-string v4, "TouchRecordTool onTouch error"

    .line 887
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_6
    return v3
.end method

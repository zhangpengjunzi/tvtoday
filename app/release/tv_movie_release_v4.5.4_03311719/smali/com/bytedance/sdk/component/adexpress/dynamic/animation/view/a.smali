.class public Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;
.super Ljava/lang/Object;
.source "AnimationWrapper.java"


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Path;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->b:Landroid/graphics/Path;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/b;Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 30
    invoke-interface/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/b;->getRippleValue()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_1

    .line 31
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/a/a;->a()Lcom/bytedance/sdk/component/adexpress/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/a/a/a;->c()Lcom/bytedance/sdk/component/adexpress/a/a/c;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 34
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/a/a;->a()Lcom/bytedance/sdk/component/adexpress/a/a/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/sdk/component/adexpress/a/a/a;->c()Lcom/bytedance/sdk/component/adexpress/a/a/c;

    move-result-object v9

    invoke-interface {v9}, Lcom/bytedance/sdk/component/adexpress/a/a/c;->b()Landroid/content/Context;

    move-result-object v9

    const-string v10, "tt_id_ripple_bg"

    invoke-static {v9, v10}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->b(Ljava/lang/String;)[F

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v3, :cond_0

    const/4 v9, 0x3

    .line 39
    aget v9, v3, v9

    invoke-interface/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/b;->getRippleValue()F

    move-result v10

    sub-float v10, v4, v10

    mul-float v9, v9, v10

    aget v10, v3, v5

    const/high16 v11, 0x43800000    # 256.0f

    div-float/2addr v10, v11

    aget v12, v3, v6

    div-float/2addr v12, v11

    aget v3, v3, v8

    div-float/2addr v3, v11

    invoke-static {v9, v10, v12, v3}, Lcom/bytedance/sdk/component/adexpress/c/b;->a(FFFF)I

    move-result v3

    .line 40
    iget-object v9, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 44
    iget v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->c:I

    int-to-float v9, v3

    iget v10, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    int-to-float v11, v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-interface/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/b;->getRippleValue()F

    move-result v10

    mul-float v3, v3, v10

    iget-object v10, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v11, v3, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 46
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/b;->getShineValue()F

    move-result v3

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_4

    .line 47
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 48
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 50
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 51
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 53
    :cond_3
    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->b:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 56
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v9, "tt_id_shine_width"

    invoke-static {v3, v9}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v3, 0x0

    :goto_1
    if-ltz v3, :cond_4

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    int-to-float v3, v3

    invoke-static {v9, v3}, Lcom/bytedance/sdk/component/adexpress/c/b;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    .line 62
    iget-object v9, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->b:Landroid/graphics/Path;

    iget v10, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->c:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    iget v11, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-interface/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/b;->getShineValue()F

    move-result v11

    mul-float v10, v10, v11

    iget v11, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    mul-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v3

    int-to-float v12, v12

    sub-float/2addr v10, v12

    mul-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v9, v10, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 63
    iget-object v9, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->b:Landroid/graphics/Path;

    iget v10, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->c:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    iget v11, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-interface/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/b;->getShineValue()F

    move-result v11

    mul-float v10, v10, v11

    iget v11, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    mul-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v3

    int-to-float v12, v12

    sub-float/2addr v10, v12

    int-to-float v12, v3

    add-float/2addr v10, v12

    mul-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v9, v10, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 64
    iget-object v9, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->b:Landroid/graphics/Path;

    iget v10, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->c:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    iget v11, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-interface/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/b;->getShineValue()F

    move-result v11

    mul-float v10, v10, v11

    iget v11, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    mul-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v3

    int-to-float v13, v13

    sub-float/2addr v10, v13

    add-float/2addr v10, v12

    mul-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    iget-object v9, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->b:Landroid/graphics/Path;

    iget v10, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->c:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    iget v11, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-interface/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/b;->getShineValue()F

    move-result v11

    mul-float v10, v10, v11

    iget v11, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    mul-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v3

    int-to-float v12, v12

    sub-float/2addr v10, v12

    mul-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    iget-object v9, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->b:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 67
    new-instance v9, Landroid/graphics/LinearGradient;

    iget v10, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->c:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    iget v11, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-interface/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/b;->getShineValue()F

    move-result v11

    mul-float v10, v10, v11

    iget v11, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    mul-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v3

    int-to-float v12, v12

    sub-float/2addr v10, v12

    int-to-float v12, v11

    add-float/2addr v12, v10

    const/4 v13, 0x0

    iget v10, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->c:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    .line 68
    invoke-interface/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/b;->getShineValue()F

    move-result v11

    mul-float v10, v10, v11

    iget v11, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    mul-int/lit8 v14, v11, 0x2

    add-int/2addr v14, v3

    int-to-float v14, v14

    sub-float/2addr v10, v14

    int-to-float v14, v11

    add-float/2addr v10, v14

    div-int/2addr v3, v8

    int-to-float v3, v3

    add-float/2addr v3, v10

    int-to-float v14, v11

    const-string v10, "#10ffffff"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v10, "#50ffffff"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    sget-object v17, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v10, v9

    move v11, v12

    move v12, v13

    move v13, v3

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 70
    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 71
    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->b:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 74
    :cond_4
    invoke-interface/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/b;->getMarqueeValue()F

    move-result v3

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_5

    .line 77
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v9, "tt_id_width"

    invoke-static {v3, v9}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const/4 v2, 0x0

    :goto_2
    if-ltz v2, :cond_5

    .line 82
    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->b:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 83
    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->b:Landroid/graphics/Path;

    invoke-virtual {v3, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 84
    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->b:Landroid/graphics/Path;

    iget v9, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->c:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v3, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 85
    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->b:Landroid/graphics/Path;

    iget v9, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->c:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget v10, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 86
    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->b:Landroid/graphics/Path;

    iget v9, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v3, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 87
    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->b:Landroid/graphics/Path;

    invoke-virtual {v3, v7, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 88
    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v7, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->c:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v12, v7

    iget v7, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v13, v7

    new-array v14, v8, [I

    .line 89
    invoke-interface/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/b;->getMarqueeValue()F

    move-result v7

    const/high16 v8, -0x38800000    # -65536.0f

    mul-float v7, v7, v8

    float-to-int v7, v7

    aput v7, v14, v5

    .line 90
    invoke-interface/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/b;->getMarqueeValue()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float v4, v4, v8

    float-to-int v4, v4

    aput v4, v14, v6

    const/4 v15, 0x0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 92
    iget-object v4, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 93
    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->a:Landroid/graphics/Paint;

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->a:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v2, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->b:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 0

    .line 103
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->c:I

    .line 104
    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    .line 107
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "tt_id_direction"

    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, ""

    :goto_0
    const-string p3, "right"

    .line 111
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 112
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->c:I

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 113
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    :cond_0
    const-string p3, "left"

    .line 114
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 116
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    .line 118
    :cond_1
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->c:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 119
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/view/a;->d:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    :goto_1
    return-void
.end method

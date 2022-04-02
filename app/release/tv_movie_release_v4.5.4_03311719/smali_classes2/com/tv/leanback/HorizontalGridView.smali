.class public Lcom/tv/leanback/HorizontalGridView;
.super Lcom/tv/leanback/BaseGridView;
.source "HorizontalGridView.java"


# instance fields
.field private mFadingHighEdge:Z

.field private mFadingLowEdge:Z

.field private mHighFadeShader:Landroid/graphics/LinearGradient;

.field private mHighFadeShaderLength:I

.field private mHighFadeShaderOffset:I

.field private mLowFadeShader:Landroid/graphics/LinearGradient;

.field private mLowFadeShaderLength:I

.field private mLowFadeShaderOffset:I

.field private mTempBitmapHigh:Landroid/graphics/Bitmap;

.field private mTempBitmapLow:Landroid/graphics/Bitmap;

.field private mTempPaint:Landroid/graphics/Paint;

.field private mTempRect:Landroid/graphics/Rect;

.field private onItemListener:Lcom/tv/leanback/OnItemListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tv/leanback/OnItemListener<",
            "Lcom/tv/leanback/HorizontalGridView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/tv/leanback/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/tv/leanback/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/tv/leanback/BaseGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/tv/leanback/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    .line 54
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/tv/leanback/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    .line 67
    iget-object p3, p0, Lcom/tv/leanback/HorizontalGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/tv/leanback/GridLayoutManager;->setOrientation(I)V

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/tv/leanback/HorizontalGridView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getTempBitmapHigh()Landroid/graphics/Bitmap;
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/tv/leanback/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderLength:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tv/leanback/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 288
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 296
    :cond_0
    iget v0, p0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderLength:I

    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tv/leanback/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/tv/leanback/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getTempBitmapLow()Landroid/graphics/Bitmap;
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/tv/leanback/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderLength:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tv/leanback/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 278
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 279
    :cond_0
    iget v0, p0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderLength:I

    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tv/leanback/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/tv/leanback/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private needsFadingHighEdge()Z
    .locals 6

    .line 261
    iget-boolean v0, p0, Lcom/tv/leanback/HorizontalGridView;->mFadingHighEdge:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_2

    .line 266
    invoke-virtual {p0, v0}, Lcom/tv/leanback/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 267
    iget-object v4, p0, Lcom/tv/leanback/HorizontalGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v4, v3}, Lcom/tv/leanback/GridLayoutManager;->getOpticalRight(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->getWidth()I

    move-result v4

    .line 268
    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderOffset:I

    add-int/2addr v4, v5

    if-le v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private needsFadingLowEdge()Z
    .locals 6

    .line 247
    iget-boolean v0, p0, Lcom/tv/leanback/HorizontalGridView;->mFadingLowEdge:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 252
    invoke-virtual {p0, v2}, Lcom/tv/leanback/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 253
    iget-object v4, p0, Lcom/tv/leanback/HorizontalGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v4, v3}, Lcom/tv/leanback/GridLayoutManager;->getOpticalLeft(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderOffset:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private updateLayerType()V
    .locals 3

    .line 382
    iget-boolean v0, p0, Lcom/tv/leanback/HorizontalGridView;->mFadingLowEdge:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tv/leanback/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/tv/leanback/HorizontalGridView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x1

    .line 387
    invoke-virtual {p0, v0}, Lcom/tv/leanback/HorizontalGridView;->setWillNotDraw(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 383
    invoke-virtual {p0, v0, v2}, Lcom/tv/leanback/HorizontalGridView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 384
    invoke-virtual {p0, v1}, Lcom/tv/leanback/HorizontalGridView;->setWillNotDraw(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 305
    invoke-direct/range {p0 .. p0}, Lcom/tv/leanback/HorizontalGridView;->needsFadingLowEdge()Z

    move-result v2

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/tv/leanback/HorizontalGridView;->needsFadingHighEdge()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 308
    iput-object v4, v0, Lcom/tv/leanback/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    :cond_0
    if-nez v3, :cond_1

    .line 311
    iput-object v4, v0, Lcom/tv/leanback/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    :cond_1
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 314
    invoke-super/range {p0 .. p1}, Lcom/tv/leanback/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 318
    :cond_2
    iget-boolean v5, v0, Lcom/tv/leanback/HorizontalGridView;->mFadingLowEdge:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/tv/leanback/HorizontalGridView;->getPaddingLeft()I

    move-result v5

    iget v7, v0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderOffset:I

    sub-int/2addr v5, v7

    iget v7, v0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderLength:I

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 319
    :goto_0
    iget-boolean v7, v0, Lcom/tv/leanback/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/tv/leanback/HorizontalGridView;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/tv/leanback/HorizontalGridView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderOffset:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderLength:I

    add-int/2addr v7, v8

    goto :goto_1

    .line 320
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/tv/leanback/HorizontalGridView;->getWidth()I

    move-result v7

    .line 323
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 324
    iget-boolean v9, v0, Lcom/tv/leanback/HorizontalGridView;->mFadingLowEdge:Z

    if-eqz v9, :cond_5

    iget v9, v0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderLength:I

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    add-int/2addr v9, v5

    iget-boolean v10, v0, Lcom/tv/leanback/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v10, :cond_6

    iget v10, v0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderLength:I

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :goto_3
    sub-int v10, v7, v10

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/tv/leanback/HorizontalGridView;->getHeight()I

    move-result v11

    .line 324
    invoke-virtual {v1, v9, v6, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 326
    invoke-super/range {p0 .. p1}, Lcom/tv/leanback/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    .line 327
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 329
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    .line 330
    iget-object v9, v0, Lcom/tv/leanback/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v9, Landroid/graphics/Rect;->top:I

    .line 331
    iget-object v9, v0, Lcom/tv/leanback/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tv/leanback/HorizontalGridView;->getHeight()I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    const/4 v9, 0x0

    if-eqz v2, :cond_7

    .line 332
    iget v2, v0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderLength:I

    if-lez v2, :cond_7

    .line 333
    invoke-direct/range {p0 .. p0}, Lcom/tv/leanback/HorizontalGridView;->getTempBitmapLow()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 334
    invoke-virtual {v2, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 335
    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 337
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 338
    iget v11, v0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderLength:I

    invoke-virtual/range {p0 .. p0}, Lcom/tv/leanback/HorizontalGridView;->getHeight()I

    move-result v12

    invoke-virtual {v8, v6, v6, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    neg-int v11, v5

    int-to-float v11, v11

    .line 339
    invoke-virtual {v8, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 340
    invoke-super {v0, v8}, Lcom/tv/leanback/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    .line 341
    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 343
    iget-object v10, v0, Lcom/tv/leanback/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    iget-object v12, v0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 344
    iget v10, v0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderLength:I

    int-to-float v15, v10

    invoke-virtual/range {p0 .. p0}, Lcom/tv/leanback/HorizontalGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v12, v0, Lcom/tv/leanback/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v12

    move-object v12, v8

    move/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 346
    iget-object v10, v0, Lcom/tv/leanback/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->left:I

    .line 347
    iget-object v10, v0, Lcom/tv/leanback/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget v12, v0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderLength:I

    iput v12, v10, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    .line 348
    invoke-virtual {v1, v5, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 349
    iget-object v5, v0, Lcom/tv/leanback/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 350
    invoke-virtual {v1, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_7
    if-eqz v3, :cond_8

    .line 352
    iget v2, v0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderLength:I

    if-lez v2, :cond_8

    .line 353
    invoke-direct/range {p0 .. p0}, Lcom/tv/leanback/HorizontalGridView;->getTempBitmapHigh()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 354
    invoke-virtual {v2, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 355
    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 357
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 358
    iget v5, v0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderLength:I

    invoke-virtual/range {p0 .. p0}, Lcom/tv/leanback/HorizontalGridView;->getHeight()I

    move-result v10

    invoke-virtual {v8, v6, v6, v5, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 359
    iget v5, v0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int v5, v7, v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v8, v5, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 360
    invoke-super {v0, v8}, Lcom/tv/leanback/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    .line 361
    invoke-virtual {v8, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 363
    iget-object v3, v0, Lcom/tv/leanback/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 364
    iget v3, v0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderLength:I

    int-to-float v15, v3

    invoke-virtual/range {p0 .. p0}, Lcom/tv/leanback/HorizontalGridView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lcom/tv/leanback/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    move-object v12, v8

    move/from16 v16, v3

    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 366
    iget-object v3, v0, Lcom/tv/leanback/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 367
    iget-object v3, v0, Lcom/tv/leanback/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderLength:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 368
    iget v3, v0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int v3, v7, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 369
    iget-object v3, v0, Lcom/tv/leanback/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 370
    iget v2, v0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int/2addr v7, v2

    neg-int v2, v7

    int-to-float v2, v2

    invoke-virtual {v1, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_8
    return-void
.end method

.method public final getFadingLeftEdge()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/tv/leanback/HorizontalGridView;->mFadingLowEdge:Z

    return v0
.end method

.method public final getFadingLeftEdgeLength()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderLength:I

    return v0
.end method

.method public final getFadingLeftEdgeOffset()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderOffset:I

    return v0
.end method

.method public final getFadingRightEdge()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/tv/leanback/HorizontalGridView;->mFadingHighEdge:Z

    return v0
.end method

.method public final getFadingRightEdgeLength()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderLength:I

    return v0
.end method

.method public final getFadingRightEdgeOffset()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderOffset:I

    return v0
.end method

.method protected initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/tv/leanback/HorizontalGridView;->initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    sget-object v0, Lcom/tv/R$styleable;->lbHorizontalGridView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/tv/leanback/HorizontalGridView;->setRowHeight(Landroid/content/res/TypedArray;)V

    .line 75
    sget p2, Lcom/tv/R$styleable;->lbHorizontalGridView_numberOfRows:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tv/leanback/HorizontalGridView;->setNumRows(I)V

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    invoke-direct {p0}, Lcom/tv/leanback/HorizontalGridView;->updateLayerType()V

    .line 78
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tv/leanback/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    .line 79
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 414
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    .line 394
    invoke-virtual {p0, p1}, Lcom/tv/leanback/HorizontalGridView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 395
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    if-eqz p2, :cond_0

    .line 397
    iget-object p2, p0, Lcom/tv/leanback/HorizontalGridView;->onItemListener:Lcom/tv/leanback/OnItemListener;

    if-eqz p2, :cond_1

    .line 398
    invoke-interface {p2, p0, p1, v0}, Lcom/tv/leanback/OnItemListener;->onItemSelected(Ljava/lang/Object;Landroid/view/View;I)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object p2, p0, Lcom/tv/leanback/HorizontalGridView;->onItemListener:Lcom/tv/leanback/OnItemListener;

    if-eqz p2, :cond_1

    .line 402
    invoke-interface {p2, p0, p1, v0}, Lcom/tv/leanback/OnItemListener;->onItemPreSelected(Ljava/lang/Object;Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setFadingLeftEdge(Z)V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/tv/leanback/HorizontalGridView;->mFadingLowEdge:Z

    if-eq v0, p1, :cond_1

    .line 120
    iput-boolean p1, p0, Lcom/tv/leanback/HorizontalGridView;->mFadingLowEdge:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/tv/leanback/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->invalidate()V

    .line 125
    invoke-direct {p0}, Lcom/tv/leanback/HorizontalGridView;->updateLayerType()V

    :cond_1
    return-void
.end method

.method public final setFadingLeftEdgeLength(I)V
    .locals 9

    .line 140
    iget v0, p0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderLength:I

    if-eq v0, p1, :cond_1

    .line 141
    iput p1, p0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderLength:I

    if-eqz p1, :cond_0

    .line 143
    new-instance p1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderLength:I

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x1000000

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShader:Landroid/graphics/LinearGradient;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShader:Landroid/graphics/LinearGradient;

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->invalidate()V

    :cond_1
    return-void
.end method

.method public final setFadingLeftEdgeOffset(I)V
    .locals 1

    .line 165
    iget v0, p0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderOffset:I

    if-eq v0, p1, :cond_0

    .line 166
    iput p1, p0, Lcom/tv/leanback/HorizontalGridView;->mLowFadeShaderOffset:I

    .line 167
    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setFadingRightEdge(Z)V
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/tv/leanback/HorizontalGridView;->mFadingHighEdge:Z

    if-eq v0, p1, :cond_1

    .line 186
    iput-boolean p1, p0, Lcom/tv/leanback/HorizontalGridView;->mFadingHighEdge:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 188
    iput-object p1, p0, Lcom/tv/leanback/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->invalidate()V

    .line 191
    invoke-direct {p0}, Lcom/tv/leanback/HorizontalGridView;->updateLayerType()V

    :cond_1
    return-void
.end method

.method public final setFadingRightEdgeLength(I)V
    .locals 9

    .line 206
    iget v0, p0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderLength:I

    if-eq v0, p1, :cond_1

    .line 207
    iput p1, p0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderLength:I

    if-eqz p1, :cond_0

    .line 209
    new-instance p1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderLength:I

    int-to-float v4, v0

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShader:Landroid/graphics/LinearGradient;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShader:Landroid/graphics/LinearGradient;

    .line 214
    :goto_0
    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->invalidate()V

    :cond_1
    return-void
.end method

.method public final setFadingRightEdgeOffset(I)V
    .locals 1

    .line 231
    iget v0, p0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderOffset:I

    if-eq v0, p1, :cond_0

    .line 232
    iput p1, p0, Lcom/tv/leanback/HorizontalGridView;->mHighFadeShaderOffset:I

    .line 233
    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFocusPosition(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/tv/leanback/HorizontalGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setFocusPosition(I)V

    return-void
.end method

.method public setNumRows(I)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/tv/leanback/HorizontalGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setNumRows(I)V

    .line 95
    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->requestLayout()V

    return-void
.end method

.method public setOnItemListener(Lcom/tv/leanback/OnItemListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tv/leanback/OnItemListener<",
            "Lcom/tv/leanback/HorizontalGridView;",
            ">;)V"
        }
    .end annotation

    .line 409
    iput-object p1, p0, Lcom/tv/leanback/HorizontalGridView;->onItemListener:Lcom/tv/leanback/OnItemListener;

    return-void
.end method

.method public setRowHeight(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/tv/leanback/HorizontalGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setRowHeight(I)V

    .line 111
    invoke-virtual {p0}, Lcom/tv/leanback/HorizontalGridView;->requestLayout()V

    return-void
.end method

.method setRowHeight(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 83
    sget v0, Lcom/tv/R$styleable;->lbHorizontalGridView_rowHeight:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    sget v0, Lcom/tv/R$styleable;->lbHorizontalGridView_rowHeight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/tv/leanback/HorizontalGridView;->setRowHeight(I)V

    :cond_0
    return-void
.end method

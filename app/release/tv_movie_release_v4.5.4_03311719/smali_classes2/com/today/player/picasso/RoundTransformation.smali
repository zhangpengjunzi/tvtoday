.class public Lcom/today/player/picasso/RoundTransformation;
.super Ljava/lang/Object;
.source "RoundTransformation.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/picasso/RoundTransformation$RoundType;
    }
.end annotation


# instance fields
.field private diameter:I

.field private isCenterCorp:Z

.field private key:Ljava/lang/String;

.field private mRoundType:I

.field private radius:I

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 28
    iput v0, p0, Lcom/today/player/picasso/RoundTransformation;->mRoundType:I

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/today/player/picasso/RoundTransformation;->isCenterCorp:Z

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/today/player/picasso/RoundTransformation;->key:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/today/player/picasso/RoundTransformation;->key:Ljava/lang/String;

    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 93
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->mRoundType:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 95
    :pswitch_0
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 98
    :cond_0
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_2

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v3, v0

    cmpl-float v3, v3, p4

    if-eqz v3, :cond_2

    int-to-float p3, v0

    sub-float/2addr p4, p3

    div-float/2addr p4, v1

    .line 100
    iget-boolean p3, p0, Lcom/today/player/picasso/RoundTransformation;->isCenterCorp:Z

    if-eqz p3, :cond_1

    neg-float p3, p4

    .line 101
    invoke-virtual {p1, v2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-direct {p3, v2, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 104
    :cond_1
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 107
    :cond_2
    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    neg-float p4, p3

    .line 108
    invoke-virtual {p1, p4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 109
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    invoke-direct {p4, p3, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 290
    :pswitch_1
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_3

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_3

    .line 291
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v1, p4, v0

    int-to-float v1, v1

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    sub-int v0, v3, v0

    int-to-float v0, v0

    int-to-float p4, p4

    int-to-float v3, v3

    invoke-direct {p3, v1, v0, p4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 292
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 293
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int v1, p4, v0

    int-to-float v1, v1

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    int-to-float p4, p4

    invoke-direct {p3, v2, v1, v0, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 294
    :cond_3
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_5

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v3, v0

    cmpl-float v3, v3, p4

    if-eqz v3, :cond_5

    int-to-float p3, v0

    sub-float/2addr p4, p3

    div-float/2addr p4, v1

    .line 296
    iget-boolean p3, p0, Lcom/today/player/picasso/RoundTransformation;->isCenterCorp:Z

    if-eqz p3, :cond_4

    neg-float p3, p4

    .line 297
    invoke-virtual {p1, v2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 298
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v3, v0, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    sub-int v1, v4, v1

    int-to-float v1, v1

    add-float/2addr v1, p4

    int-to-float v0, v0

    int-to-float v4, v4

    add-float/2addr v4, p4

    invoke-direct {p3, v3, v1, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 299
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-direct {p3, v2, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 300
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int v3, v0, v1

    int-to-float v3, v3

    add-float/2addr v3, p4

    iget v4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    sub-int/2addr v4, v1

    int-to-float v1, v4

    int-to-float v0, v0

    add-float/2addr v0, p4

    invoke-direct {p3, v2, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 302
    :cond_4
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v1, p4, v0

    int-to-float v1, v1

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    sub-int v0, v3, v0

    int-to-float v0, v0

    int-to-float p4, p4

    int-to-float v3, v3

    invoke-direct {p3, v1, v0, p4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 303
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 304
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int v1, p4, v0

    int-to-float v1, v1

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    int-to-float p4, p4

    invoke-direct {p3, v2, v1, v0, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 307
    :cond_5
    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    neg-float p4, p3

    .line 308
    invoke-virtual {p1, p4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 309
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v3, v0, v1

    int-to-float v3, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    sub-int v1, v4, v1

    int-to-float v1, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    int-to-float v4, v4

    invoke-direct {p4, v3, v1, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p4, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 310
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {p4, p3, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 311
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int v2, v0, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    add-float/2addr v1, p3

    int-to-float v0, v0

    invoke-direct {p4, p3, v2, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 265
    :pswitch_2
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_6

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_6

    .line 266
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v1, p4, v0

    int-to-float v1, v1

    int-to-float p4, p4

    int-to-float v0, v0

    invoke-direct {p3, v1, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 267
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr p4, v0

    int-to-float p4, p4

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 268
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    invoke-direct {p3, v2, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 269
    :cond_6
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_8

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v3, v0

    cmpl-float v3, v3, p4

    if-eqz v3, :cond_8

    int-to-float p3, v0

    sub-float/2addr p4, p3

    div-float/2addr p4, v1

    .line 271
    iget-boolean p3, p0, Lcom/today/player/picasso/RoundTransformation;->isCenterCorp:Z

    if-eqz p3, :cond_7

    neg-float p3, p4

    .line 272
    invoke-virtual {p1, v2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 273
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v3, v0, v1

    int-to-float v3, v3

    int-to-float v0, v0

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-direct {p3, v3, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 274
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-direct {p3, v2, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 275
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, v0

    add-float/2addr v0, p4

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v1, v1

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v3, v3

    add-float/2addr v3, p4

    invoke-direct {p3, v2, v0, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 277
    :cond_7
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v1, p4, v0

    int-to-float v1, v1

    int-to-float p4, p4

    int-to-float v0, v0

    invoke-direct {p3, v1, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 278
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr p4, v0

    int-to-float p4, p4

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 279
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    invoke-direct {p3, v2, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 282
    :cond_8
    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    neg-float p4, p3

    .line 283
    invoke-virtual {p1, p4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 284
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v3, v0, v1

    int-to-float v3, v3

    add-float/2addr v3, p3

    int-to-float v0, v0

    add-float/2addr v0, p3

    int-to-float v1, v1

    invoke-direct {p4, v3, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p4, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 285
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    int-to-float v1, v1

    invoke-direct {p4, p3, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 286
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v1, v1

    add-float/2addr v1, p3

    iget v2, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v2, v2

    invoke-direct {p4, p3, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 240
    :pswitch_3
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_9

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_9

    .line 241
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v1, p4, v0

    int-to-float v1, v1

    int-to-float v0, v0

    int-to-float p4, p4

    invoke-direct {p3, v2, v1, v0, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 242
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 243
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    sub-int p4, v1, p4

    int-to-float p4, p4

    iget v2, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {p3, v0, p4, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 244
    :cond_9
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_b

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v3, v0

    cmpl-float v3, v3, p4

    if-eqz v3, :cond_b

    int-to-float p3, v0

    sub-float/2addr p4, p3

    div-float/2addr p4, v1

    .line 246
    iget-boolean p3, p0, Lcom/today/player/picasso/RoundTransformation;->isCenterCorp:Z

    if-eqz p3, :cond_a

    neg-float p3, p4

    .line 247
    invoke-virtual {p1, v2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 248
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v3, v0, v1

    int-to-float v3, v3

    add-float/2addr v3, p4

    int-to-float v1, v1

    int-to-float v0, v0

    add-float/2addr v0, p4

    invoke-direct {p3, v2, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 249
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-direct {p3, v2, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 250
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    iget v2, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    sub-int v0, v2, v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v3, v3

    int-to-float v2, v2

    add-float/2addr v2, p4

    invoke-direct {p3, v1, v0, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 252
    :cond_a
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v1, p4, v0

    int-to-float v1, v1

    int-to-float v0, v0

    int-to-float p4, p4

    invoke-direct {p3, v2, v1, v0, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 253
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 254
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    sub-int p4, v1, p4

    int-to-float p4, p4

    iget v2, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {p3, v0, p4, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 257
    :cond_b
    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    neg-float p4, p3

    .line 258
    invoke-virtual {p1, p4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 259
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v3, v0, v1

    int-to-float v3, v3

    int-to-float v1, v1

    add-float/2addr v1, p3

    int-to-float v0, v0

    invoke-direct {p4, p3, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p4, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 260
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {p4, p3, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 261
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    add-float/2addr v1, p3

    iget v2, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    sub-int v0, v2, v0

    int-to-float v0, v0

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    int-to-float p3, v2

    invoke-direct {p4, v1, v0, v3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 215
    :pswitch_4
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_c

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_c

    .line 216
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-direct {p3, v2, v2, v0, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 217
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v1, v1

    int-to-float p4, p4

    invoke-direct {p3, v0, v2, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 218
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    invoke-direct {p3, v2, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 219
    :cond_c
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_e

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v3, v0

    cmpl-float v3, v3, p4

    if-eqz v3, :cond_e

    int-to-float p3, v0

    sub-float/2addr p4, p3

    div-float/2addr p4, v1

    .line 221
    iget-boolean p3, p0, Lcom/today/player/picasso/RoundTransformation;->isCenterCorp:Z

    if-eqz p3, :cond_d

    neg-float p3, p4

    .line 222
    invoke-virtual {p1, v2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 223
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    int-to-float v1, v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    invoke-direct {p3, v2, p4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 224
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v3, v3

    int-to-float v0, v0

    add-float/2addr v0, p4

    invoke-direct {p3, v1, p4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 225
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, v0

    add-float/2addr v0, p4

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v1, v1

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v3, v3

    add-float/2addr v3, p4

    invoke-direct {p3, v2, v0, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 227
    :cond_d
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-direct {p3, v2, v2, v0, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 228
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v1, v1

    int-to-float p4, p4

    invoke-direct {p3, v0, v2, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 229
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    invoke-direct {p3, v2, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 232
    :cond_e
    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    neg-float p4, p3

    .line 233
    invoke-virtual {p1, p4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 234
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    int-to-float v1, v0

    add-float/2addr v1, p3

    int-to-float v0, v0

    invoke-direct {p4, p3, v2, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p4, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 235
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    add-float/2addr v1, p3

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    int-to-float v0, v0

    invoke-direct {p4, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 236
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v1, v1

    add-float/2addr v1, p3

    iget v2, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v2, v2

    invoke-direct {p4, p3, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 194
    :pswitch_5
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_f

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_f

    .line 195
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 196
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    invoke-direct {p3, p4, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 197
    :cond_f
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_11

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v3, v0

    cmpl-float v3, v3, p4

    if-eqz v3, :cond_11

    int-to-float p3, v0

    sub-float/2addr p4, p3

    div-float/2addr p4, v1

    .line 199
    iget-boolean p3, p0, Lcom/today/player/picasso/RoundTransformation;->isCenterCorp:Z

    if-eqz p3, :cond_10

    neg-float p3, p4

    .line 200
    invoke-virtual {p1, v2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 201
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-direct {p3, v2, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 202
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v2, v2

    add-float/2addr v2, p4

    invoke-direct {p3, v0, p4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 204
    :cond_10
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 205
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    invoke-direct {p3, p4, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 208
    :cond_11
    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    neg-float p4, p3

    .line 209
    invoke-virtual {p1, p4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 210
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    invoke-direct {p4, p3, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p4, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 211
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v1, v1

    add-float/2addr v1, p3

    iget p3, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float p3, p3

    invoke-direct {p4, v0, v2, v1, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 173
    :pswitch_6
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_12

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_12

    .line 174
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v0, p4, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v1, v1

    int-to-float p4, p4

    invoke-direct {p3, v2, v0, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 175
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 176
    :cond_12
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_14

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v3, v0

    cmpl-float v3, v3, p4

    if-eqz v3, :cond_14

    int-to-float p3, v0

    sub-float/2addr p4, p3

    div-float/2addr p4, v1

    .line 178
    iget-boolean p3, p0, Lcom/today/player/picasso/RoundTransformation;->isCenterCorp:Z

    if-eqz p3, :cond_13

    neg-float p3, p4

    .line 179
    invoke-virtual {p1, v2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 180
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    add-float/2addr v1, p4

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v3, v3

    int-to-float v0, v0

    add-float/2addr v0, p4

    invoke-direct {p3, v2, v1, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 181
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-direct {p3, v2, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 183
    :cond_13
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v0, p4, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v1, v1

    int-to-float p4, p4

    invoke-direct {p3, v2, v0, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 184
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 187
    :cond_14
    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    neg-float p4, p3

    .line 188
    invoke-virtual {p1, p4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 189
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    int-to-float v0, v0

    invoke-direct {p4, p3, v1, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p4, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 190
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {p4, p3, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 152
    :pswitch_7
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_15

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_15

    .line 153
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v0, p4, v0

    int-to-float v0, v0

    int-to-float p4, p4

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    invoke-direct {p3, v0, v2, p4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 154
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr p4, v0

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 155
    :cond_15
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_17

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v3, v0

    cmpl-float v3, v3, p4

    if-eqz v3, :cond_17

    int-to-float p3, v0

    sub-float/2addr p4, p3

    div-float/2addr p4, v1

    .line 157
    iget-boolean p3, p0, Lcom/today/player/picasso/RoundTransformation;->isCenterCorp:Z

    if-eqz p3, :cond_16

    neg-float p3, p4

    .line 158
    invoke-virtual {p1, v2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 159
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    int-to-float v0, v0

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v3, v3

    add-float/2addr v3, p4

    invoke-direct {p3, v1, p4, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 160
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-direct {p3, v2, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 162
    :cond_16
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v0, p4, v0

    int-to-float v0, v0

    int-to-float p4, p4

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    invoke-direct {p3, v0, v2, p4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 163
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr p4, v0

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 166
    :cond_17
    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    neg-float p4, p3

    .line 167
    invoke-virtual {p1, p4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    int-to-float v0, v0

    add-float/2addr v0, p3

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v3, v3

    invoke-direct {p4, v1, v2, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p4, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 169
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    invoke-direct {p4, p3, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 131
    :pswitch_8
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_18

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_18

    .line 132
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 133
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    invoke-direct {p3, v2, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 134
    :cond_18
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v3, v0

    cmpl-float v3, v3, p4

    if-eqz v3, :cond_1a

    int-to-float p3, v0

    sub-float/2addr p4, p3

    div-float/2addr p4, v1

    .line 136
    iget-boolean p3, p0, Lcom/today/player/picasso/RoundTransformation;->isCenterCorp:Z

    if-eqz p3, :cond_19

    neg-float p3, p4

    .line 137
    invoke-virtual {p1, v2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 138
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-direct {p3, v2, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 139
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, v0

    add-float/2addr v0, p4

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v1, v1

    iget v3, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v3, v3

    add-float/2addr v3, p4

    invoke-direct {p3, v2, v0, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 141
    :cond_19
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 142
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    invoke-direct {p3, v2, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 145
    :cond_1a
    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    neg-float p4, p3

    .line 146
    invoke-virtual {p1, p4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 147
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    int-to-float v1, v1

    invoke-direct {p4, p3, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p4, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 148
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v1, v1

    add-float/2addr v1, p3

    iget v2, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v2, v2

    invoke-direct {p4, p3, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 114
    :pswitch_9
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-nez v0, :cond_1b

    .line 115
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 116
    :cond_1b
    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v3, v0

    cmpl-float v3, v3, p4

    if-eqz v3, :cond_1d

    int-to-float p3, v0

    sub-float/2addr p4, p3

    div-float/2addr p4, v1

    .line 118
    iget-boolean p3, p0, Lcom/today/player/picasso/RoundTransformation;->isCenterCorp:Z

    if-eqz p3, :cond_1c

    neg-float p3, p4

    .line 119
    invoke-virtual {p1, v2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-direct {p3, v2, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 122
    :cond_1c
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v0, v0

    invoke-direct {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 125
    :cond_1d
    iget p4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    neg-float p4, p3

    .line 126
    invoke-virtual {p1, p4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 127
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    iget v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v1, v1

    invoke-direct {p4, p3, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p3, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    int-to-float v0, p3

    int-to-float p3, p3

    invoke-virtual {p1, p4, v0, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public centerCorp(Z)Lcom/today/player/picasso/RoundTransformation;
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/today/player/picasso/RoundTransformation;->isCenterCorp:Z

    return-object p0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/today/player/picasso/RoundTransformation;->key:Ljava/lang/String;

    return-object v0
.end method

.method public override(II)Lcom/today/player/picasso/RoundTransformation;
    .locals 0

    .line 40
    iput p1, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    .line 41
    iput p2, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    return-object p0
.end method

.method public roundRadius(II)Lcom/today/player/picasso/RoundTransformation;
    .locals 0

    .line 51
    iput p1, p0, Lcom/today/player/picasso/RoundTransformation;->radius:I

    mul-int/lit8 p1, p1, 0x2

    .line 52
    iput p1, p0, Lcom/today/player/picasso/RoundTransformation;->diameter:I

    .line 53
    iput p2, p0, Lcom/today/player/picasso/RoundTransformation;->mRoundType:I

    return-object p0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 61
    iget v2, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    if-nez v2, :cond_1

    .line 62
    :cond_0
    iput v0, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    .line 63
    iput v1, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    .line 65
    :cond_1
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 66
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, p1, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 67
    iget v4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    if-ne v4, v0, :cond_2

    iget v4, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    if-eq v4, v1, :cond_4

    :cond_2
    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, v0, v4

    .line 70
    iget v6, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    int-to-float v7, v6

    div-float/2addr v5, v7

    int-to-float v1, v1

    mul-float v7, v1, v4

    iget v8, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    int-to-float v9, v8

    div-float/2addr v7, v9

    cmpl-float v5, v5, v7

    if-lez v5, :cond_3

    int-to-float v5, v8

    mul-float v5, v5, v4

    div-float/2addr v5, v1

    mul-float v0, v0, v5

    float-to-int v0, v0

    move v1, v8

    goto :goto_0

    :cond_3
    int-to-float v5, v6

    mul-float v5, v5, v4

    div-float/2addr v5, v0

    mul-float v1, v1, v5

    float-to-int v0, v1

    move v1, v0

    move v0, v6

    .line 79
    :goto_0
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 80
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 81
    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 83
    :cond_4
    iget v4, p0, Lcom/today/player/picasso/RoundTransformation;->viewWidth:I

    iget v5, p0, Lcom/today/player/picasso/RoundTransformation;->viewHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x1

    .line 84
    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 85
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v0, v0

    int-to-float v1, v1

    .line 87
    invoke-direct {p0, v5, v2, v0, v1}, Lcom/today/player/picasso/RoundTransformation;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v4
.end method

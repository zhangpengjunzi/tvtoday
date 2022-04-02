.class public Lcom/tv/widget/VodSeekBar;
.super Landroid/view/View;
.source "VodSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tv/widget/VodSeekBar$OnVodSeekBarChangedListener;
    }
.end annotation


# instance fields
.field private barRadius:F

.field private endTime:J

.field private mBackColor:I

.field private mBackPaint:Landroid/graphics/Paint;

.field private mBackStrokeWidth:F

.field private mBarColor:I

.field private mBarPaint:Landroid/graphics/Paint;

.field private mMax:F

.field private mProgress:F

.field private seekBarChangedListener:Lcom/tv/widget/VodSeekBar$OnVodSeekBarChangedListener;

.field private speed:I

.field private startTime:J

.field private startY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/tv/widget/VodSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/tv/widget/VodSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, -0x5cf6693b

    .line 30
    iput v0, p0, Lcom/tv/widget/VodSeekBar;->mBackColor:I

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/tv/widget/VodSeekBar;->mBarColor:I

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/tv/widget/VodSeekBar;->speed:I

    .line 52
    sget-object v0, Lcom/tv/R$styleable;->VodSeekBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    sget p2, Lcom/tv/R$styleable;->VodSeekBar_max:I

    const/high16 p3, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/tv/widget/VodSeekBar;->mMax:F

    .line 54
    sget p2, Lcom/tv/R$styleable;->VodSeekBar_progress:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/tv/widget/VodSeekBar;->mProgress:F

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    invoke-direct {p0}, Lcom/tv/widget/VodSeekBar;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tv/widget/VodSeekBar;->mBackPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object v0, p0, Lcom/tv/widget/VodSeekBar;->mBackPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/tv/widget/VodSeekBar;->mBackColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p0, v0, v2}, Lcom/tv/widget/VodSeekBar;->pt2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tv/widget/VodSeekBar;->mBackStrokeWidth:F

    .line 65
    iget-object v2, p0, Lcom/tv/widget/VodSeekBar;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tv/widget/VodSeekBar;->mBarPaint:Landroid/graphics/Paint;

    .line 68
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v0, p0, Lcom/tv/widget/VodSeekBar;->mBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tv/widget/VodSeekBar;->mBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcom/tv/widget/VodSeekBar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2}, Lcom/tv/widget/VodSeekBar;->pt2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0, v0, v1}, Lcom/tv/widget/VodSeekBar;->pt2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tv/widget/VodSeekBar;->barRadius:F

    .line 73
    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v0, v1}, Lcom/tv/widget/VodSeekBar;->pt2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tv/widget/VodSeekBar;->startY:F

    return-void
.end method


# virtual methods
.method public getBarRadius()F
    .locals 1

    .line 135
    iget v0, p0, Lcom/tv/widget/VodSeekBar;->barRadius:F

    return v0
.end method

.method public getMax()F
    .locals 1

    .line 131
    iget v0, p0, Lcom/tv/widget/VodSeekBar;->mMax:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 123
    iget v0, p0, Lcom/tv/widget/VodSeekBar;->mProgress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getHeight()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getWidth()I

    move-result v1

    .line 82
    iget v2, p0, Lcom/tv/widget/VodSeekBar;->startY:F

    iget v3, p0, Lcom/tv/widget/VodSeekBar;->mBackStrokeWidth:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {p0, v3, v4}, Lcom/tv/widget/VodSeekBar;->pt2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/tv/widget/VodSeekBar;->startY:F

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/tv/widget/VodSeekBar;->mBackStrokeWidth:F

    sub-float/2addr v3, v2

    .line 83
    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/tv/widget/VodSeekBar;->pt2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v3, v2

    :goto_0
    move v7, v2

    iput v7, p0, Lcom/tv/widget/VodSeekBar;->startY:F

    .line 84
    iget v4, p0, Lcom/tv/widget/VodSeekBar;->barRadius:F

    int-to-float v1, v1

    sub-float v6, v1, v4

    iget-object v8, p0, Lcom/tv/widget/VodSeekBar;->mBackPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 86
    iget v2, p0, Lcom/tv/widget/VodSeekBar;->mProgress:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    iget v4, p0, Lcom/tv/widget/VodSeekBar;->mMax:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    iget v4, p0, Lcom/tv/widget/VodSeekBar;->barRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    sub-float/2addr v1, v4

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    double-to-float v1, v2

    .line 88
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/tv/widget/VodSeekBar;->barRadius:F

    mul-float v4, v4, v5

    add-float/2addr v4, v1

    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {v2, v1, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 89
    iget v0, p0, Lcom/tv/widget/VodSeekBar;->barRadius:F

    iget-object v1, p0, Lcom/tv/widget/VodSeekBar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11

    .line 147
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    .line 148
    iget-wide v0, p0, Lcom/tv/widget/VodSeekBar;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tv/widget/VodSeekBar;->startTime:J

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tv/widget/VodSeekBar;->endTime:J

    .line 153
    :goto_0
    iget-wide v0, p0, Lcom/tv/widget/VodSeekBar;->endTime:J

    iget-wide v2, p0, Lcom/tv/widget/VodSeekBar;->startTime:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x9c4

    cmp-long v10, v4, v6

    if-lez v10, :cond_1

    sub-long/2addr v0, v2

    cmp-long v2, v0, v8

    if-gez v2, :cond_1

    const/4 v0, 0x2

    .line 154
    iput v0, p0, Lcom/tv/widget/VodSeekBar;->speed:I

    goto :goto_1

    .line 155
    :cond_1
    iget-wide v0, p0, Lcom/tv/widget/VodSeekBar;->endTime:J

    iget-wide v2, p0, Lcom/tv/widget/VodSeekBar;->startTime:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0xfa0

    cmp-long v10, v4, v8

    if-ltz v10, :cond_2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v6

    if-gez v2, :cond_2

    const/4 v0, 0x4

    .line 156
    iput v0, p0, Lcom/tv/widget/VodSeekBar;->speed:I

    goto :goto_1

    .line 157
    :cond_2
    iget-wide v0, p0, Lcom/tv/widget/VodSeekBar;->endTime:J

    iget-wide v2, p0, Lcom/tv/widget/VodSeekBar;->startTime:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v6

    if-ltz v2, :cond_3

    const/16 v0, 0x8

    .line 158
    iput v0, p0, Lcom/tv/widget/VodSeekBar;->speed:I

    .line 160
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getProgress()F

    move-result v0

    const/16 v1, 0x16

    if-ne p1, v1, :cond_5

    .line 162
    iget v1, p0, Lcom/tv/widget/VodSeekBar;->speed:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getMax()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    .line 163
    iget v1, p0, Lcom/tv/widget/VodSeekBar;->speed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tv/widget/VodSeekBar;->setProgress(F)V

    goto :goto_2

    .line 164
    :cond_4
    iget v1, p0, Lcom/tv/widget/VodSeekBar;->speed:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getMax()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_7

    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getMax()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 165
    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getMax()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tv/widget/VodSeekBar;->setProgress(F)V

    goto :goto_2

    :cond_5
    const/16 v1, 0x15

    if-ne p1, v1, :cond_7

    .line 168
    iget v1, p0, Lcom/tv/widget/VodSeekBar;->speed:I

    int-to-float v2, v1

    sub-float v2, v0, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 169
    invoke-virtual {p0, v0}, Lcom/tv/widget/VodSeekBar;->setProgress(F)V

    goto :goto_2

    :cond_6
    int-to-float v1, v1

    sub-float v1, v0, v1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_7

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_7

    .line 171
    invoke-virtual {p0, v3}, Lcom/tv/widget/VodSeekBar;->setProgress(F)V

    .line 175
    :cond_7
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 140
    iput-wide v0, p0, Lcom/tv/widget/VodSeekBar;->startTime:J

    const/4 v0, 0x1

    .line 141
    iput v0, p0, Lcom/tv/widget/VodSeekBar;->speed:I

    .line 142
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public pt2px(Landroid/content/Context;F)I
    .locals 1

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public setBackColor(I)V
    .locals 1

    .line 93
    iput p1, p0, Lcom/tv/widget/VodSeekBar;->mBackColor:I

    .line 94
    iget-object v0, p0, Lcom/tv/widget/VodSeekBar;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->postInvalidate()V

    return-void
.end method

.method public setBackStrokeWidth(F)V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/tv/widget/VodSeekBar;->pt2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/tv/widget/VodSeekBar;->mBackStrokeWidth:F

    .line 100
    iget-object v0, p0, Lcom/tv/widget/VodSeekBar;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->postInvalidate()V

    return-void
.end method

.method public setMax(F)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/tv/widget/VodSeekBar;->mMax:F

    return-void
.end method

.method public setOnVodSeekBarChangedListener(Lcom/tv/widget/VodSeekBar$OnVodSeekBarChangedListener;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/tv/widget/VodSeekBar;->seekBarChangedListener:Lcom/tv/widget/VodSeekBar$OnVodSeekBarChangedListener;

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 109
    iget v0, p0, Lcom/tv/widget/VodSeekBar;->mMax:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    .line 110
    iput v0, p0, Lcom/tv/widget/VodSeekBar;->mProgress:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_1

    .line 112
    iput v0, p0, Lcom/tv/widget/VodSeekBar;->mProgress:F

    goto :goto_0

    .line 114
    :cond_1
    iput p1, p0, Lcom/tv/widget/VodSeekBar;->mProgress:F

    .line 116
    :goto_0
    iget-object p1, p0, Lcom/tv/widget/VodSeekBar;->seekBarChangedListener:Lcom/tv/widget/VodSeekBar$OnVodSeekBarChangedListener;

    if-eqz p1, :cond_2

    .line 117
    iget v0, p0, Lcom/tv/widget/VodSeekBar;->mProgress:F

    invoke-interface {p1, p0, v0}, Lcom/tv/widget/VodSeekBar$OnVodSeekBarChangedListener;->onProgressChanged(Lcom/tv/widget/VodSeekBar;F)V

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/tv/widget/VodSeekBar;->postInvalidate()V

    return-void
.end method

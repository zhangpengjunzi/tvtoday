.class public Lcom/upa/view/CustomProgressBar;
.super Landroid/widget/ProgressBar;
.source "CustomProgressBar.java"


# static fields
.field private static final ICON_TEXT_SPACING_DP:F = 5.0f

.field public static final STATE_DEFAULT:I = 0x65

.field public static final STATE_DOWNLOADING:I = 0x66

.field public static final STATE_DOWNLOAD_FINISH:I = 0x68

.field public static final STATE_PAUSE:I = 0x67

.field private static final TEXT_SIZE_SP:F = 14.0f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field private volatile mProgress:F

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x1010078

    .line 52
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-object p1, p0, Lcom/upa/view/CustomProgressBar;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/upa/view/CustomProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-object p1, p0, Lcom/upa/view/CustomProgressBar;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/upa/view/CustomProgressBar;->init()V

    return-void
.end method

.method private drawIconAndText(Landroid/graphics/Canvas;IZ)V
    .locals 6

    .line 148
    invoke-direct {p0, p2}, Lcom/upa/view/CustomProgressBar;->initForState(I)V

    .line 150
    invoke-direct {p0, p2}, Lcom/upa/view/CustomProgressBar;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 152
    iget-object v2, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/4 v2, 0x1

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/upa/view/CustomProgressBar;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    .line 157
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p0, v4, p3, v3, v2}, Lcom/upa/view/CustomProgressBar;->getOffsetX(FFFZ)F

    move-result p3

    sub-float/2addr p2, p3

    .line 158
    invoke-virtual {p0}, Lcom/upa/view/CustomProgressBar;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr p3, v1

    int-to-float p3, p3

    .line 159
    iget-object v1, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/upa/view/CustomProgressBar;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    .line 163
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v4, v5, v3, v2}, Lcom/upa/view/CustomProgressBar;->getOffsetX(FFFZ)F

    move-result v2

    sub-float/2addr p3, v2

    .line 164
    invoke-virtual {p0}, Lcom/upa/view/CustomProgressBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 165
    iget-object v2, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v2, 0x65

    if-ne p2, v2, :cond_1

    return-void

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/upa/view/CustomProgressBar;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/upa/view/CustomProgressBar;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 171
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 173
    iget-object v3, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, p3, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 175
    iget-object p3, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/upa/view/CustomProgressBar;->mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 176
    iget-object p3, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    new-instance p3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/upa/view/CustomProgressBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/upa/view/CustomProgressBar;->mProgress:F

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/upa/view/CustomProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p3, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 179
    iget-object v0, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 p3, 0x0

    .line 181
    invoke-virtual {p1, p2, v4, v4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 183
    iget-object p1, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 185
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 186
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    :goto_0
    return-void
.end method

.method private getOffsetX(FFFZ)F
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/upa/view/CustomProgressBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/upa/tool/Tools;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p2, p2, v1

    add-float/2addr v0, p2

    if-eqz p4, :cond_0

    div-float/2addr v0, v1

    sub-float/2addr v0, p1

    sub-float/2addr v0, p3

    return v0

    :cond_0
    div-float/2addr v0, v1

    sub-float/2addr v0, p1

    return v0
.end method

.method private getText(I)Ljava/lang/String;
    .locals 3

    const v0, 0x7f0e0057

    packed-switch p1, :pswitch_data_0

    .line 224
    invoke-virtual {p0}, Lcom/upa/view/CustomProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 221
    :pswitch_0
    invoke-virtual {p0}, Lcom/upa/view/CustomProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0058

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 218
    :pswitch_1
    invoke-virtual {p0}, Lcom/upa/view/CustomProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0056

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 214
    :pswitch_2
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "#0"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/upa/view/CustomProgressBar;->mProgress:F

    float-to-double v1, v1

    invoke-virtual {p1, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 211
    :pswitch_3
    invoke-virtual {p0}, Lcom/upa/view/CustomProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lcom/upa/view/CustomProgressBar;->setIndeterminate(Z)V

    .line 107
    iget-object v0, p0, Lcom/upa/view/CustomProgressBar;->mContext:Landroid/content/Context;

    const v1, 0x108006d

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/upa/view/CustomProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Lcom/upa/view/CustomProgressBar;->mContext:Landroid/content/Context;

    const v1, 0x7f0700d8

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/upa/view/CustomProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x64

    .line 111
    invoke-virtual {p0, v0}, Lcom/upa/view/CustomProgressBar;->setMax(I)V

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 115
    iget-object v0, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object v0, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    iget-object v0, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 118
    iget-object v0, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/upa/view/CustomProgressBar;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v1, v2}, Lcom/upa/tool/Tools;->sp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 119
    iget-object v0, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 121
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/upa/view/CustomProgressBar;->mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method private initForState(I)V
    .locals 2

    const v0, 0x7f0500c3

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    .line 142
    iget-object p1, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 138
    :pswitch_0
    iget-object p1, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object p1, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/upa/view/CustomProgressBar;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object p1, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/upa/view/CustomProgressBar;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 128
    :pswitch_3
    iget-object p1, p0, Lcom/upa/view/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    .line 72
    :try_start_0
    iget v0, p0, Lcom/upa/view/CustomProgressBar;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 85
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    iget v0, p0, Lcom/upa/view/CustomProgressBar;->mState:I

    const/16 v1, 0x65

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 100
    invoke-direct {p0, p1, v1, v2}, Lcom/upa/view/CustomProgressBar;->drawIconAndText(Landroid/graphics/Canvas;IZ)V

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x68

    .line 97
    invoke-direct {p0, p1, v0, v2}, Lcom/upa/view/CustomProgressBar;->drawIconAndText(Landroid/graphics/Canvas;IZ)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x67

    .line 94
    invoke-direct {p0, p1, v0, v2}, Lcom/upa/view/CustomProgressBar;->drawIconAndText(Landroid/graphics/Canvas;IZ)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x66

    .line 91
    invoke-direct {p0, p1, v0, v2}, Lcom/upa/view/CustomProgressBar;->drawIconAndText(Landroid/graphics/Canvas;IZ)V

    goto :goto_0

    .line 88
    :pswitch_3
    invoke-direct {p0, p1, v1, v2}, Lcom/upa/view/CustomProgressBar;->drawIconAndText(Landroid/graphics/Canvas;IZ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setState(I)V
    .locals 0

    monitor-enter p0

    .line 67
    :try_start_0
    iput p1, p0, Lcom/upa/view/CustomProgressBar;->mState:I

    .line 68
    invoke-virtual {p0}, Lcom/upa/view/CustomProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setViewProgress(F)V
    .locals 1

    float-to-int v0, p1

    .line 79
    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 80
    iput p1, p0, Lcom/upa/view/CustomProgressBar;->mProgress:F

    return-void
.end method

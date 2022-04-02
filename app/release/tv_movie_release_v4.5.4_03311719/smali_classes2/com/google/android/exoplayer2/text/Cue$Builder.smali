.class public final Lcom/google/android/exoplayer2/text/Cue$Builder;
.super Ljava/lang/Object;
.source "Cue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/Cue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapHeight:F

.field private line:F

.field private lineAnchor:I

.field private lineType:I

.field private multiRowAlignment:Landroid/text/Layout$Alignment;

.field private position:F

.field private positionAnchor:I

.field private shearDegrees:F

.field private size:F

.field private text:Ljava/lang/CharSequence;

.field private textAlignment:Landroid/text/Layout$Alignment;

.field private textSize:F

.field private textSizeType:I

.field private verticalType:I

.field private windowColor:I

.field private windowColorSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 515
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 516
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 517
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    .line 518
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    const/high16 v1, -0x80000000

    .line 519
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    .line 520
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    .line 521
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    .line 522
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    .line 523
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    .line 524
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    .line 525
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    .line 526
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    const/4 v0, 0x0

    .line 527
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    const/high16 v0, -0x1000000

    .line 528
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    .line 529
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/text/Cue;)V
    .locals 1

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 534
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 535
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 536
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 537
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->line:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    .line 538
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    .line 539
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    .line 540
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->position:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    .line 541
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    .line 542
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    .line 543
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    .line 544
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->size:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    .line 545
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    .line 546
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    .line 547
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    .line 548
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    .line 549
    iget p1, p1, Lcom/google/android/exoplayer2/text/Cue;->shearDegrees:F

    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->shearDegrees:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/text/Cue;Lcom/google/android/exoplayer2/text/Cue$1;)V
    .locals 0

    .line 494
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>(Lcom/google/android/exoplayer2/text/Cue;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/text/Cue;
    .locals 22

    move-object/from16 v0, p0

    .line 860
    new-instance v20, Lcom/google/android/exoplayer2/text/Cue;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    iget v6, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    iget v7, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    iget v8, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    iget v9, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    iget v10, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    iget v11, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    iget v12, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    iget v13, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    iget v14, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    move-object/from16 v21, v1

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->shearDegrees:F

    move/from16 v18, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/google/android/exoplayer2/text/Cue$1;)V

    return-object v20
.end method

.method public clearWindowColor()Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 809
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    return-object p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapHeight()F
    .locals 1

    .line 790
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    return v0
.end method

.method public getLine()F
    .locals 1

    .line 648
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    return v0
.end method

.method public getLineAnchor()I
    .locals 1

    .line 678
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    return v0
.end method

.method public getLineType()I
    .locals 1

    .line 658
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    return v0
.end method

.method public getPosition()F
    .locals 1

    .line 699
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    return v0
.end method

.method public getPositionAnchor()I
    .locals 1

    .line 719
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    return v0
.end method

.method public getSize()F
    .locals 1

    .line 771
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .line 750
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    return v0
.end method

.method public getTextSizeType()I
    .locals 1

    .line 741
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    return v0
.end method

.method public getVerticalType()I
    .locals 1

    .line 855
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    return v0
.end method

.method public getWindowColor()I
    .locals 1

    .line 829
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    return v0
.end method

.method public isWindowColorSet()Z
    .locals 1

    .line 819
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setBitmapHeight(F)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 780
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    return-object p0
.end method

.method public setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 636
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    .line 637
    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    return-object p0
.end method

.method public setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 667
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    return-object p0
.end method

.method public setMultiRowAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 688
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    return-object p0
.end method

.method public setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 708
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    return-object p0
.end method

.method public setShearDegrees(F)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 844
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->shearDegrees:F

    return-object p0
.end method

.method public setSize(F)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 760
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setTextSize(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 729
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    .line 730
    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    return-object p0
.end method

.method public setVerticalType(I)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 838
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    return-object p0
.end method

.method public setWindowColor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 802
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    const/4 p1, 0x1

    .line 803
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    return-object p0
.end method

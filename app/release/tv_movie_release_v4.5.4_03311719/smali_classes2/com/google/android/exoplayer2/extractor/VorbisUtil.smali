.class public final Lcom/google/android/exoplayer2/extractor/VorbisUtil;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;,
        Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;,
        Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;,
        Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VorbisUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iLog(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static mapType1QuantValues(JJ)J
    .locals 2

    long-to-double p0, p0

    long-to-double p2, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 538
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method private static readBook(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x18

    .line 477
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const v2, 0x564342

    if-ne v1, v2, :cond_a

    const/16 v1, 0x10

    .line 481
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    .line 482
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 483
    new-array v5, v4, [J

    .line 485
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x5

    const/4 v8, 0x1

    if-nez v7, :cond_2

    .line 487
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v9

    :goto_0
    if-ge v2, v4, :cond_4

    if-eqz v9, :cond_1

    .line 490
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 491
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    add-int/2addr v10, v8

    int-to-long v10, v10

    aput-wide v10, v5, v2

    goto :goto_1

    .line 493
    :cond_0
    aput-wide v0, v5, v2

    goto :goto_1

    .line 496
    :cond_1
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    add-int/2addr v10, v8

    int-to-long v10, v10

    aput-wide v10, v5, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    :cond_2
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v4, :cond_4

    sub-int v10, v4, v9

    .line 502
    invoke-static {v10}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->iLog(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_3

    if-ge v9, v4, :cond_3

    int-to-long v12, v6

    .line 504
    aput-wide v12, v5, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    .line 510
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v9, 0x2

    if-gt v6, v9, :cond_9

    if-eq v6, v8, :cond_5

    if-ne v6, v9, :cond_8

    :cond_5
    const/16 v9, 0x20

    .line 514
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 515
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 516
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v8

    .line 517
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    if-ne v6, v8, :cond_6

    if-eqz v3, :cond_7

    int-to-long v0, v4

    int-to-long v8, v3

    .line 521
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->mapType1QuantValues(JJ)J

    move-result-wide v0

    goto :goto_4

    :cond_6
    int-to-long v0, v4

    int-to-long v8, v3

    mul-long v0, v0, v8

    :cond_7
    :goto_4
    int-to-long v8, v2

    mul-long v0, v0, v8

    long-to-int v1, v0

    .line 529
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 531
    :cond_8
    new-instance p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;-><init>(II[JIZ)V

    return-object p0

    .line 512
    :cond_9
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const/16 v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "lookup type greater than 2 not decodable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 478
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    .line 479
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->getPosition()I

    move-result p0

    const/16 v1, 0x42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private static readFloors(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 423
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_9

    const/16 v5, 0x10

    .line 425
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-eqz v6, :cond_7

    if-ne v6, v2, :cond_6

    const/4 v5, 0x5

    .line 439
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    const/4 v6, -0x1

    .line 441
    new-array v9, v5, [I

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_1

    .line 443
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    aput v11, v9, v10

    .line 444
    aget v11, v9, v10

    if-le v11, v6, :cond_0

    .line 445
    aget v6, v9, v10

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 448
    new-array v10, v6, [I

    const/4 v11, 0x0

    :goto_2
    const/4 v12, 0x2

    if-ge v11, v6, :cond_4

    const/4 v13, 0x3

    .line 450
    invoke-virtual {p0, v13}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v13

    add-int/2addr v13, v2

    aput v13, v10, v11

    .line 451
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v12

    if-lez v12, :cond_2

    .line 453
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    :cond_2
    const/4 v13, 0x0

    :goto_3
    shl-int v14, v2, v12

    if-ge v13, v14, :cond_3

    .line 456
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 459
    :cond_4
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 460
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v7, v5, :cond_8

    .line 463
    aget v12, v9, v7

    .line 464
    aget v12, v10, v12

    add-int/2addr v8, v12

    :goto_5
    if-ge v11, v8, :cond_5

    .line 466
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 471
    :cond_6
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const/16 v0, 0x34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "floor type greater than 1 not decodable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 428
    :cond_7
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 429
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 430
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 431
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 432
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 433
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_8

    .line 435
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private static readMappings(ILcom/google/android/exoplayer2/extractor/VorbisBitArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 351
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    const/16 v4, 0x10

    .line 353
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x34

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "mapping type other than 0 not supported: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 359
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    .line 360
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    .line 365
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_2

    .line 366
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_2

    add-int/lit8 v9, p0, -0x1

    .line 368
    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->iLog(I)I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 369
    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->iLog(I)I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    .line 374
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    if-nez v6, :cond_5

    if-le v4, v1, :cond_3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, p0, :cond_3

    .line 379
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_4

    .line 383
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 384
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 385
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 375
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "to reserved bits must be zero after mapping coupling steps"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method

.method private static readModes(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;
    .locals 8

    const/4 v0, 0x6

    .line 337
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 338
    new-array v1, v0, [Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v3

    const/16 v4, 0x10

    .line 341
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 342
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    const/16 v6, 0x8

    .line 343
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 344
    new-instance v7, Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;

    invoke-direct {v7, v3, v5, v4, v6}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static readResidues(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 391
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    const/16 v5, 0x10

    .line 393
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_5

    const/16 v5, 0x18

    .line 397
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 398
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 399
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 400
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x8

    .line 401
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 402
    new-array v7, v5, [I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_1

    const/4 v9, 0x3

    .line 405
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    .line 406
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    .line 407
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    :goto_2
    mul-int/lit8 v10, v10, 0x8

    add-int/2addr v10, v9

    .line 409
    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_4

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_3

    .line 413
    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    .line 414
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 395
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "residueType greater than 2 is not decodable"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method

.method public static readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 202
    invoke-static {p0, v0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    move-result-object p0

    return-object p0
.end method

.method public static readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 225
    invoke-static {p1, p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v1

    long-to-int p1, v1

    const/16 v1, 0xb

    .line 231
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 234
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    long-to-int v4, v2

    .line 235
    new-array v4, v4, [Ljava/lang/String;

    add-int/lit8 v1, v1, 0x4

    :goto_0
    int-to-long v5, v0

    cmp-long v7, v5, v2

    if-gez v7, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    long-to-int v6, v5

    add-int/lit8 v1, v1, 0x4

    .line 240
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 241
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 243
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    goto :goto_1

    .line 244
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "framing bit expected to be set"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 247
    new-instance p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0
.end method

.method public static readVorbisIdentificationHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object/from16 v2, p0

    .line 153
    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v3

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v5

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v6

    const/4 v7, -0x1

    if-gtz v6, :cond_0

    const/4 v6, -0x1

    .line 162
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v8

    if-gtz v8, :cond_1

    const/4 v8, -0x1

    .line 166
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v9

    if-gtz v9, :cond_2

    const/4 v9, -0x1

    .line 170
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v10, v7, 0xf

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 171
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v10, v10

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    int-to-double v14, v7

    .line 172
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-int v11, v11

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/2addr v7, v0

    if-lez v7, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 176
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    .line 178
    new-instance v1, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    move-object v2, v1

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v0

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;-><init>(IIIIIIIIZ[B)V

    return-object v1
.end method

.method public static readVorbisModes(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 308
    invoke-static {v0, p0, v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 310
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 312
    new-instance v2, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;-><init>([B)V

    .line 313
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_0

    .line 316
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readBook(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    .line 319
    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_1
    if-ge v1, p0, :cond_2

    const/16 v0, 0x10

    .line 321
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 322
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "placeholder of time domain transforms not zeroed out"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 325
    :cond_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readFloors(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)V

    .line 326
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readResidues(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)V

    .line 327
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readMappings(ILcom/google/android/exoplayer2/extractor/VorbisBitArray;)V

    .line 329
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readModes(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;

    move-result-object p0

    .line 330
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p0

    .line 331
    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "framing bit after modes not set as expected"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 262
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    if-eqz p2, :cond_0

    return v1

    .line 266
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/16 p2, 0x1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "too short header: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 270
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eq v0, p0, :cond_4

    if-eqz p2, :cond_2

    return v1

    .line 274
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "expected header type "

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_6

    .line 279
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_6

    .line 280
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_6

    .line 281
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_6

    .line 282
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_6

    .line 283
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    return v1

    .line 287
    :cond_7
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "expected characters \'vorbis\'"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

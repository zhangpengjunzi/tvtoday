.class final Lcom/google/android/exoplayer2/source/rtsp/RtspTrackTiming;
.super Ljava/lang/Object;
.source "RtspTrackTiming.java"


# instance fields
.field public final rtpTimestamp:J

.field public final sequenceNumber:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(JILandroid/net/Uri;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspTrackTiming;->rtpTimestamp:J

    .line 110
    iput p3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspTrackTiming;->sequenceNumber:I

    .line 111
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspTrackTiming;->uri:Landroid/net/Uri;

    return-void
.end method

.method public static parseTrackTiming(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/source/rtsp/RtspTrackTiming;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const-string v1, ","

    move-object/from16 v2, p0

    .line 61
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_a

    aget-object v5, v1, v4

    const/4 v6, 0x0

    const-string v7, ";"

    .line 66
    invoke-static {v5, v7}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v12, 0x0

    const/4 v13, -0x1

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    if-ge v12, v8, :cond_7

    aget-object v9, v7, v12

    :try_start_0
    const-string v10, "="

    .line 68
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 69
    aget-object v11, v10, v3

    const/4 v3, 0x1

    .line 70
    aget-object v10, v10, v3

    .line 72
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v3

    move-object/from16 v16, v1

    const v1, 0x1bc5f

    move/from16 v17, v2

    const/4 v2, 0x2

    if-eq v3, v1, :cond_2

    const v1, 0x1c56f

    if-eq v3, v1, :cond_1

    const v1, 0x5ad9263b

    if-eq v3, v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "rtptime"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_3

    :cond_1
    const-string v1, "url"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    const-string v1, "seq"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, -0x1

    :goto_3
    if-eqz v1, :cond_6

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    if-ne v1, v2, :cond_4

    .line 80
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    goto :goto_4

    .line 83
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw v0

    .line 77
    :cond_5
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto :goto_4

    .line 74
    :cond_6
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v1

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 86
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1, v9, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    move-object/from16 v16, v1

    move/from16 v17, v2

    if-eqz v6, :cond_9

    .line 91
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v1, -0x1

    if-ne v13, v1, :cond_8

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v14, v1

    if-eqz v3, :cond_9

    .line 96
    :cond_8
    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/RtspTrackTiming;

    invoke-direct {v1, v14, v15, v13, v6}, Lcom/google/android/exoplayer2/source/rtsp/RtspTrackTiming;-><init>(JILandroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 93
    :cond_9
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_a
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

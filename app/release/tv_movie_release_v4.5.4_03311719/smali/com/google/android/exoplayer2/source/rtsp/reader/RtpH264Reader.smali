.class final Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;
.super Ljava/lang/Object;
.source "RtpH264Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/reader/RtpPayloadReader;


# static fields
.field private static final FU_PAYLOAD_OFFSET:I = 0x2

.field private static final MEDIA_CLOCK_FREQUENCY:J = 0x15f90L

.field private static final NAL_START_CODE:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private static final NAL_START_CODE_LENGTH:I

.field private static final NAL_UNIT_TYPE_IDR:I = 0x5

.field private static final RTP_PACKET_TYPE_FU_A:I = 0x1c

.field private static final RTP_PACKET_TYPE_STAP_A:I = 0x18

.field private static final TAG:Ljava/lang/String; = "RtpH264Reader"


# instance fields
.field private bufferFlags:I

.field private firstReceivedTimestamp:J

.field private fragmentedSampleSizeBytes:I

.field private final fuScratchBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final payloadFormat:Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

.field private startTimeOffsetUs:J

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->NAL_START_CODE:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 41
    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v0, v0

    sput v0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->NAL_START_CODE_LENGTH:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->payloadFormat:Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;

    .line 73
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->firstReceivedTimestamp:J

    const/4 p1, -0x1

    .line 75
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->previousSequenceNumber:I

    return-void
.end method

.method private static getBufferFlagsFromNalType(I)I
    .locals 1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processFragmentationUnitPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 246
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    .line 247
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v0, v0, 0xe0

    and-int/lit8 v4, v2, 0x1f

    or-int/2addr v0, v4

    and-int/lit16 v4, v2, 0x80

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/lit8 v2, v2, 0x40

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 254
    iget p2, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->writeStartCode(Lcom/google/android/exoplayer2/extractor/TrackOutput;)I

    move-result v1

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    .line 258
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p2

    int-to-byte v1, v0

    aput-byte v1, p2, v3

    .line 259
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    .line 260
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    .line 263
    :cond_2
    iget v4, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->previousSequenceNumber:I

    add-int/2addr v4, v3

    const v5, 0xffff

    rem-int/2addr v4, v5

    const/4 v5, 0x2

    if-eq p2, v4, :cond_3

    new-array p1, v5, [Ljava/lang/Object;

    .line 270
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 267
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RtpH264Reader"

    .line 265
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 275
    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    .line 276
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 279
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    .line 280
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {p2, v1, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 281
    iget p2, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    if-eqz v2, :cond_4

    and-int/lit8 p1, v0, 0x1f

    .line 284
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->getBufferFlagsFromNalType(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->bufferFlags:I

    :cond_4
    return-void
.end method

.method private processSingleNalUnitPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 161
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 162
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->writeStartCode(Lcom/google/android/exoplayer2/extractor/TrackOutput;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    .line 163
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 164
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    .line 166
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    and-int/lit8 p1, p1, 0x1f

    .line 167
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->getBufferFlagsFromNalType(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->bufferFlags:I

    return-void
.end method

.method private processSingleTimeAggregationPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 199
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 203
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 204
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 205
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->writeStartCode(Lcom/google/android/exoplayer2/extractor/TrackOutput;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    .line 206
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 207
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 212
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->bufferFlags:I

    return-void
.end method

.method private static toSampleUs(JJJ)J
    .locals 6

    sub-long v0, p2, p4

    const-wide/32 v2, 0xf4240

    const-wide/32 v4, 0x15f90

    .line 291
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p2

    add-long/2addr p0, p2

    return-wide p0
.end method

.method private static writeStartCode(Lcom/google/android/exoplayer2/extractor/TrackOutput;)I
    .locals 2

    .line 298
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->NAL_START_CODE:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget v1, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->NAL_START_CODE_LENGTH:I

    invoke-interface {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 299
    sget-object p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->NAL_START_CODE:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 300
    sget p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->NAL_START_CODE_LENGTH:I

    return p0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;JIZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p4

    .line 96
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v2, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x1f

    .line 101
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x18

    if-lez v2, :cond_0

    if-ge v2, v4, :cond_0

    .line 103
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->processSingleNalUnitPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    .line 105
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->processSingleTimeAggregationPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x1c

    if-ne v2, v4, :cond_4

    move-object/from16 v4, p1

    .line 107
    invoke-direct {v1, v4, v0}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->processFragmentationUnitPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    :goto_0
    if-eqz p5, :cond_3

    .line 114
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->firstReceivedTimestamp:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    move-wide/from16 v6, p2

    if-nez v2, :cond_2

    .line 115
    iput-wide v6, v1, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->firstReceivedTimestamp:J

    .line 118
    :cond_2
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->startTimeOffsetUs:J

    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->firstReceivedTimestamp:J

    move-wide/from16 v6, p2

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->toSampleUs(JJJ)J

    move-result-wide v11

    .line 119
    iget-object v10, v1, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget v13, v1, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->bufferFlags:I

    iget v14, v1, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 125
    iput v3, v1, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    .line 128
    :cond_3
    iput v0, v1, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->previousSequenceNumber:I

    return-void

    .line 109
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    const-string v2, "RTP H264 packetization mode [%d] not supported."

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 98
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;I)V
    .locals 1

    const/4 v0, 0x2

    .line 80
    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 82
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->payloadFormat:Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public onReceivingFirstPacket(JI)V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->firstReceivedTimestamp:J

    const/4 p1, 0x0

    .line 134
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    .line 135
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;->startTimeOffsetUs:J

    return-void
.end method

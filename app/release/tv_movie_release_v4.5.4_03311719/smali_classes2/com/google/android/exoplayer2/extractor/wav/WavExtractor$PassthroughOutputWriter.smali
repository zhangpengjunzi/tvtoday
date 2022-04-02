.class final Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PassthroughOutputWriter"
.end annotation


# instance fields
.field private final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final format:Lcom/google/android/exoplayer2/Format;

.field private final header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

.field private outputFrameCount:J

.field private pendingOutputBytes:I

.field private startTimeUs:J

.field private final targetSampleSizeBytes:I

.field private final trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/wav/WavHeader;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 214
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 215
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    .line 217
    iget p1, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->bitsPerSample:I

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x8

    .line 219
    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockSize:I

    if-ne p2, p1, :cond_0

    .line 224
    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->frameRateHz:I

    mul-int p2, p2, p1

    mul-int/lit8 p2, p2, 0x8

    .line 225
    iget v0, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->frameRateHz:I

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0xa

    .line 226
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    .line 227
    new-instance p1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 229
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 230
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 231
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    .line 232
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    .line 233
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->frameRateHz:I

    .line 234
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 235
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Lcom/google/android/exoplayer2/Format;

    return-void

    .line 220
    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/ParserException;

    iget p3, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockSize:I

    const/16 p4, 0x32

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Expected block size: "

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public init(IJ)V
    .locals 9

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v8, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    int-to-long v4, p1

    const/4 v3, 0x1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/wav/WavHeader;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 250
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public reset(J)V
    .locals 0

    .line 241
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    const/4 p1, 0x0

    .line 242
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    const-wide/16 p1, 0x0

    .line 243
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_1

    .line 256
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    if-ge v6, v7, :cond_1

    sub-int/2addr v7, v6

    int-to-long v6, v7

    .line 257
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 258
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-object/from16 v8, p1

    invoke-interface {v6, v8, v7, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    move-wide v1, v4

    goto :goto_0

    .line 262
    :cond_0
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    .line 270
    :cond_1
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockSize:I

    .line 271
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    div-int/2addr v7, v6

    if-lez v7, :cond_2

    .line 273
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    const-wide/32 v12, 0xf4240

    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    iget v14, v14, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->frameRateHz:I

    int-to-long v14, v14

    .line 275
    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    add-long v13, v8, v10

    mul-int v16, v7, v6

    .line 278
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    sub-int v6, v6, v16

    .line 279
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v15, 0x1

    const/16 v18, 0x0

    move/from16 v17, v6

    invoke-interface/range {v12 .. v18}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 281
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    int-to-long v10, v7

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    .line 282
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    :cond_2
    cmp-long v6, v1, v4

    if-gtz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

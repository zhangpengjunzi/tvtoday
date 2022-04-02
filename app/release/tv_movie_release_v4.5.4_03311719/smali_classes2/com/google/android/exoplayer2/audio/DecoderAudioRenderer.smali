.class public abstract Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "DecoderAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer$AudioSinkListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/decoder/Decoder<",
        "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
        "+",
        "Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;",
        "+",
        "Lcom/google/android/exoplayer2/decoder/DecoderException;",
        ">;>",
        "Lcom/google/android/exoplayer2/BaseRenderer;",
        "Lcom/google/android/exoplayer2/util/MediaClock;"
    }
.end annotation


# static fields
.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DecoderAudioRenderer"


# instance fields
.field private allowFirstBufferPositionDiscontinuity:Z

.field private allowPositionDiscontinuity:Z

.field private final audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

.field private audioTrackNeedsConfigure:Z

.field private currentPositionUs:J

.field private decoder:Lcom/google/android/exoplayer2/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private encoderDelay:I

.field private encoderPadding:I

.field private final eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private experimentalKeepAudioTrackOnSeek:Z

.field private final flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private inputFormat:Lcom/google/android/exoplayer2/Format;

.field private inputStreamEnded:Z

.field private outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

.field private outputStreamEnded:Z

.field private sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 1

    .line 176
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-direct {v0, p3, p4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 2

    const/4 v0, 0x1

    .line 189
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 190
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 191
    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 192
    new-instance p1, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer$AudioSinkListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer$AudioSinkListener;-><init>(Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer$1;)V

    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setListener(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V

    .line 193
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->newNoDataInstance()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p1, 0x0

    .line 194
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    .line 195
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    return-object p0
.end method

.method private drainOutputBuffer()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/google/android/exoplayer2/decoder/DecoderException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    if-nez v0, :cond_0

    return v1

    .line 372
    :cond_0
    iget v0, v0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->skippedOutputBufferCount:I

    if-lez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iget v3, v3, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 379
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 381
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 382
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 384
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    goto :goto_0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 387
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    .line 389
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->processEndOfStream()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .line 391
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 397
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    if-eqz v0, :cond_4

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 399
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getOutputFormat(Lcom/google/android/exoplayer2/decoder/Decoder;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->encoderDelay:I

    .line 401
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->encoderPadding:I

    .line 402
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 404
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioSink;->configure(Lcom/google/android/exoplayer2/Format;I[I)V

    .line 405
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 408
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->timeUs:J

    invoke-interface {v0, v4, v5, v6, v3}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;JI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 412
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    return v3

    :cond_5
    return v1
.end method

.method private feedInputBuffer()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;,
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 426
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v2, :cond_1

    .line 427
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v0, :cond_1

    return v1

    .line 433
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 436
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 437
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    return v1

    .line 441
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 442
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v3

    const/4 v5, -0x5

    if-eq v3, v5, :cond_6

    const/4 v0, -0x4

    if-eq v3, v0, :cond_4

    const/4 v0, -0x3

    if-ne v3, v0, :cond_3

    return v1

    .line 463
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 449
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 452
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    return v1

    .line 455
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 456
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 457
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 458
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 459
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 460
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    return v4

    .line 446
    :cond_6
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V

    return v4

    :cond_7
    :goto_0
    return v1
.end method

.method private flushDecoder()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 473
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    if-eqz v0, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 475
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 478
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    if-eqz v1, :cond_1

    .line 479
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 480
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->flush()V

    const/4 v0, 0x0

    .line 483
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    :goto_0
    return-void
.end method

.method private maybeInitDecoder()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v0, :cond_0

    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    const/4 v0, 0x0

    .line 604
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    .line 605
    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v0

    if-nez v0, :cond_2

    .line 607
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 619
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "createAudioDecoder"

    .line 620
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 621
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/Decoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 622
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 623
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 624
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v4

    sub-long v7, v5, v1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 632
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "DecoderAudioRenderer"

    const-string v2, "Audio codec error"

    .line 628
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 629
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioCodecError(Ljava/lang/Exception;)V

    .line 630
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 661
    iget-object v0, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/exoplayer2/Format;

    .line 662
    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 663
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 664
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 665
    iget p1, v4, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iput p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->encoderDelay:I

    .line 666
    iget p1, v4, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    iput p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->encoderPadding:I

    .line 668
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-nez p1, :cond_0

    .line 669
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 670
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v0, v1, :cond_1

    .line 676
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 678
    invoke-interface {p1}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    goto :goto_0

    .line 684
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v4}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->canReuseDecoder(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 687
    :goto_0
    iget p1, v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-nez p1, :cond_3

    .line 688
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 690
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    goto :goto_1

    .line 693
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 694
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 695
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 698
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method private processEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 468
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V

    return-void
.end method

.method private releaseDecoder()V
    .locals 3

    const/4 v0, 0x0

    .line 637
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 638
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    const/4 v1, 0x0

    .line 639
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    .line 640
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 641
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 643
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/decoder/Decoder;->release()V

    .line 644
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    .line 645
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 647
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void
.end method

.method private setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 657
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 652
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private updateCurrentPosition()V
    .locals 5

    .line 714
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 717
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    const/4 v0, 0x0

    .line 720
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected canReuseDecoder(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .locals 7

    .line 360
    new-instance v6, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v6
.end method

.method protected abstract createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation
.end method

.method public experimentalSetEnableKeepAudioTrackOnSeek(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->experimentalKeepAudioTrackOnSeek:Z

    return-void
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;
    .locals 0

    return-object p0
.end method

.method protected abstract getOutputFormat(Lcom/google/android/exoplayer2/decoder/Decoder;)Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 500
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->updateCurrentPosition()V

    .line 503
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method protected final getSinkFormatSupport(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->getFormatSupport(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    return p1
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    .line 591
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 588
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioSessionId(I)V

    goto :goto_0

    .line 585
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setSkipSilenceEnabled(Z)V

    goto :goto_0

    .line 581
    :cond_2
    check-cast p2, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    .line 582
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V

    goto :goto_0

    .line 577
    :cond_3
    check-cast p2, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 578
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    goto :goto_0

    .line 574
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setVolume(F)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 489
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onDisabled()V
    .locals 3

    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x1

    .line 560
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 562
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 563
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 564
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 567
    throw v0
.end method

.method protected onEnabled(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 519
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 520
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 521
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    if-eqz p1, :cond_0

    .line 522
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->enableTunnelingV21()V

    goto :goto_0

    .line 524
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->disableTunneling()V

    :goto_0
    return-void
.end method

.method protected onPositionDiscontinuity()V
    .locals 1

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 530
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->experimentalKeepAudioTrackOnSeek:Z

    if-eqz p3, :cond_0

    .line 531
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->experimentalFlushWithoutAudioTrackRelease()V

    goto :goto_0

    .line 533
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V

    .line 536
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    const/4 p1, 0x1

    .line 537
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 538
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    const/4 p1, 0x0

    .line 539
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    .line 540
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    .line 541
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz p1, :cond_1

    .line 542
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->flushDecoder()V

    :cond_1
    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 5

    .line 702
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 706
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 707
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    :cond_0
    const/4 p1, 0x0

    .line 709
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    :cond_1
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->play()V

    return-void
.end method

.method protected onStopped()V
    .locals 1

    .line 553
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->updateCurrentPosition()V

    .line 554
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->pause()V

    return-void
.end method

.method public render(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 263
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz p1, :cond_0

    .line 265
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 267
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez p1, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object p1

    .line 276
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 277
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p3, 0x2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p2

    const/4 p3, -0x5

    if-ne p2, p3, :cond_1

    .line 279
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x4

    if-ne p2, p1, :cond_2

    .line 282
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 p1, 0x1

    .line 283
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    .line 285
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->processEndOfStream()V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const/4 p2, 0x0

    .line 287
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_2
    return-void

    .line 297
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 299
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz p1, :cond_6

    :try_start_2
    const-string p1, "drainAndFeed"

    .line 302
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 303
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->drainOutputBuffer()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 304
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 305
    :cond_5
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_2
    .catch Lcom/google/android/exoplayer2/decoder/DecoderException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 317
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_3

    :catch_2
    move-exception p1

    .line 315
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :catch_3
    move-exception p1

    .line 313
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->isRecoverable:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :catch_4
    move-exception p1

    .line 311
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :catch_5
    move-exception p1

    const-string p2, "DecoderAudioRenderer"

    const-string p3, "Audio codec error"

    .line 307
    invoke-static {p2, p3, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioCodecError(Ljava/lang/Exception;)V

    .line 309
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method protected final sinkSupportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    return p1
.end method

.method public final supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 3

    .line 220
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 221
    invoke-static {v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 223
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->supportsFormatInternal(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    .line 225
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 228
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    const/16 v1, 0x20

    :cond_2
    const/16 v0, 0x8

    .line 229
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(III)I

    move-result p1

    return p1
.end method

.method protected abstract supportsFormatInternal(Lcom/google/android/exoplayer2/Format;)I
.end method

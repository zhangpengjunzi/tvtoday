.class public final synthetic Lcom/google/android/exoplayer2/source/-$$Lambda$ProgressiveMediaSource$Factory$tWqqOWmGD1GvKo7X9KjQYPQSRBI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$ProgressiveMediaSource$Factory$tWqqOWmGD1GvKo7X9KjQYPQSRBI;->f$0:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor()Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$ProgressiveMediaSource$Factory$tWqqOWmGD1GvKo7X9KjQYPQSRBI;->f$0:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->lambda$setExtractorsFactory$1(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    move-result-object v0

    return-object v0
.end method

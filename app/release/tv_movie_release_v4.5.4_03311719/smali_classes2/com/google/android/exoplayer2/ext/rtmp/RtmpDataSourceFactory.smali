.class public final Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSourceFactory;
.super Ljava/lang/Object;
.source "RtmpDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final listener:Lcom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;
    .locals 2

    .line 39
    new-instance v0, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSourceFactory;->createDataSource()Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSource;

    move-result-object v0

    return-object v0
.end method

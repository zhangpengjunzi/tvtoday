.class public final synthetic Lcom/google/android/exoplayer2/source/rtsp/-$$Lambda$RtspMessageChannel$Sender$sNhq4bMsvN0bXthJMeeDFi_7M6Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/source/rtsp/RtspMessageChannel$Sender;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspMessageChannel$Sender;[BLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/-$$Lambda$RtspMessageChannel$Sender$sNhq4bMsvN0bXthJMeeDFi_7M6Q;->f$0:Lcom/google/android/exoplayer2/source/rtsp/RtspMessageChannel$Sender;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/-$$Lambda$RtspMessageChannel$Sender$sNhq4bMsvN0bXthJMeeDFi_7M6Q;->f$1:[B

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/-$$Lambda$RtspMessageChannel$Sender$sNhq4bMsvN0bXthJMeeDFi_7M6Q;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/-$$Lambda$RtspMessageChannel$Sender$sNhq4bMsvN0bXthJMeeDFi_7M6Q;->f$0:Lcom/google/android/exoplayer2/source/rtsp/RtspMessageChannel$Sender;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/-$$Lambda$RtspMessageChannel$Sender$sNhq4bMsvN0bXthJMeeDFi_7M6Q;->f$1:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/-$$Lambda$RtspMessageChannel$Sender$sNhq4bMsvN0bXthJMeeDFi_7M6Q;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageChannel$Sender;->lambda$send$0$RtspMessageChannel$Sender([BLjava/util/List;)V

    return-void
.end method

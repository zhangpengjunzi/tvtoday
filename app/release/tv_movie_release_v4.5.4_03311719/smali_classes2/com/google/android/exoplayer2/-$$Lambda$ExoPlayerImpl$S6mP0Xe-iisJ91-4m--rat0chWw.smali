.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$S6mP0Xe-iisJ91-4m--rat0chWw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/MediaMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$S6mP0Xe-iisJ91-4m--rat0chWw;->f$0:Lcom/google/android/exoplayer2/MediaMetadata;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$S6mP0Xe-iisJ91-4m--rat0chWw;->f$0:Lcom/google/android/exoplayer2/MediaMetadata;

    check-cast p1, Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$13(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

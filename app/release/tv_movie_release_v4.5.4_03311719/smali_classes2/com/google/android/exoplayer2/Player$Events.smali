.class public final Lcom/google/android/exoplayer2/Player$Events;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# instance fields
.field private final flags:Lcom/google/android/exoplayer2/util/ExoFlags;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/ExoFlags;)V
    .locals 0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/ExoFlags;

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/ExoFlags;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ExoFlags;->contains(I)Z

    move-result p1

    return p1
.end method

.method public varargs containsAny([I)Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/ExoFlags;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ExoFlags;->containsAny([I)Z

    move-result p1

    return p1
.end method

.method public get(I)I
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/ExoFlags;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ExoFlags;->get(I)I

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/ExoFlags;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ExoFlags;->size()I

    move-result v0

    return v0
.end method

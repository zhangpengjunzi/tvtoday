.class public final synthetic Lcom/google/android/exoplayer2/trackselection/-$$Lambda$RandomTrackSelection$Factory$uZWuhhXpv6CICtdxRXcTO8D_NFc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$RandomTrackSelection$Factory$uZWuhhXpv6CICtdxRXcTO8D_NFc;->f$0:Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;

    return-void
.end method


# virtual methods
.method public final createAdaptiveTrackSelection(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$RandomTrackSelection$Factory$uZWuhhXpv6CICtdxRXcTO8D_NFc;->f$0:Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;->lambda$createTrackSelections$0$RandomTrackSelection$Factory(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-result-object p1

    return-object p1
.end method

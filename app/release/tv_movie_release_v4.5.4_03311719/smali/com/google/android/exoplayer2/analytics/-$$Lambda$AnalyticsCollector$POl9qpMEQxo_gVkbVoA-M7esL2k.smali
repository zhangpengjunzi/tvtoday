.class public final synthetic Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$POl9qpMEQxo_gVkbVoA-M7esL2k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$POl9qpMEQxo_gVkbVoA-M7esL2k;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$POl9qpMEQxo_gVkbVoA-M7esL2k;->f$1:Z

    iput p3, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$POl9qpMEQxo_gVkbVoA-M7esL2k;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$POl9qpMEQxo_gVkbVoA-M7esL2k;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$POl9qpMEQxo_gVkbVoA-M7esL2k;->f$1:Z

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$POl9qpMEQxo_gVkbVoA-M7esL2k;->f$2:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->lambda$onPlayerStateChanged$40(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

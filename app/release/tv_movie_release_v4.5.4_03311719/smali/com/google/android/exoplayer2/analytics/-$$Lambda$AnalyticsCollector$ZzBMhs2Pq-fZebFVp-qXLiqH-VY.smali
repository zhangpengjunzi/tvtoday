.class public final synthetic Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$ZzBMhs2Pq-fZebFVp-qXLiqH-VY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$ZzBMhs2Pq-fZebFVp-qXLiqH-VY;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$ZzBMhs2Pq-fZebFVp-qXLiqH-VY;->f$1:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$ZzBMhs2Pq-fZebFVp-qXLiqH-VY;->f$2:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$ZzBMhs2Pq-fZebFVp-qXLiqH-VY;->f$3:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$ZzBMhs2Pq-fZebFVp-qXLiqH-VY;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$ZzBMhs2Pq-fZebFVp-qXLiqH-VY;->f$1:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$ZzBMhs2Pq-fZebFVp-qXLiqH-VY;->f$2:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$ZzBMhs2Pq-fZebFVp-qXLiqH-VY;->f$3:J

    move-object v6, p1

    check-cast v6, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->lambda$onBandwidthSample$52(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

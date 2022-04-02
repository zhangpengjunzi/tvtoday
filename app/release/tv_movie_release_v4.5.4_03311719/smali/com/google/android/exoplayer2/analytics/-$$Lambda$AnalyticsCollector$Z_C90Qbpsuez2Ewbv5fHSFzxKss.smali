.class public final synthetic Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$Z_C90Qbpsuez2Ewbv5fHSFzxKss;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$Z_C90Qbpsuez2Ewbv5fHSFzxKss;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$Z_C90Qbpsuez2Ewbv5fHSFzxKss;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$Z_C90Qbpsuez2Ewbv5fHSFzxKss;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$Z_C90Qbpsuez2Ewbv5fHSFzxKss;->INSTANCE:Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$Z_C90Qbpsuez2Ewbv5fHSFzxKss;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/ExoFlags;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->lambda$new$0(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/util/ExoFlags;)V

    return-void
.end method

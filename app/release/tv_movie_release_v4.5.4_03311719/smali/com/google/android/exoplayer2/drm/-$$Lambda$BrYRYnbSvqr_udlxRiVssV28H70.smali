.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$BrYRYnbSvqr_udlxRiVssV28H70;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$BrYRYnbSvqr_udlxRiVssV28H70;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$BrYRYnbSvqr_udlxRiVssV28H70;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/-$$Lambda$BrYRYnbSvqr_udlxRiVssV28H70;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$BrYRYnbSvqr_udlxRiVssV28H70;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$BrYRYnbSvqr_udlxRiVssV28H70;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    return-void
.end method

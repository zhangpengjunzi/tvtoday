.class public final synthetic Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$Fi6a9K6MnBh1_hiLG83D6q10Mk0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/MetadataOutput;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$Fi6a9K6MnBh1_hiLG83D6q10Mk0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$Fi6a9K6MnBh1_hiLG83D6q10Mk0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$Fi6a9K6MnBh1_hiLG83D6q10Mk0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$Fi6a9K6MnBh1_hiLG83D6q10Mk0;->INSTANCE:Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$Fi6a9K6MnBh1_hiLG83D6q10Mk0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->lambda$getRendererCapabilities$1(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

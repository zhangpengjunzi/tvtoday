.class public final synthetic Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$FragmentedMp4Extractor$i0zfpH_PcF0vytkdatCL0xeWFhQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$FragmentedMp4Extractor$i0zfpH_PcF0vytkdatCL0xeWFhQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$FragmentedMp4Extractor$i0zfpH_PcF0vytkdatCL0xeWFhQ;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$FragmentedMp4Extractor$i0zfpH_PcF0vytkdatCL0xeWFhQ;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$FragmentedMp4Extractor$i0zfpH_PcF0vytkdatCL0xeWFhQ;->INSTANCE:Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$FragmentedMp4Extractor$i0zfpH_PcF0vytkdatCL0xeWFhQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/google/android/exoplayer2/extractor/Extractor;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory$-CC;->$default$createExtractors(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p1

    return-object p1
.end method

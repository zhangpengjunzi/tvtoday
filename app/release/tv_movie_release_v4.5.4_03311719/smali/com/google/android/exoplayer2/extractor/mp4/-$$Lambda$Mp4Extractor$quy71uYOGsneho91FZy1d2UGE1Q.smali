.class public final synthetic Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$quy71uYOGsneho91FZy1d2UGE1Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$quy71uYOGsneho91FZy1d2UGE1Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$quy71uYOGsneho91FZy1d2UGE1Q;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$quy71uYOGsneho91FZy1d2UGE1Q;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$quy71uYOGsneho91FZy1d2UGE1Q;->INSTANCE:Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$quy71uYOGsneho91FZy1d2UGE1Q;

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

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;

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

.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$dWQyQkX4yyxglJ3gy3t-dSsnaEA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$dWQyQkX4yyxglJ3gy3t-dSsnaEA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$dWQyQkX4yyxglJ3gy3t-dSsnaEA;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$dWQyQkX4yyxglJ3gy3t-dSsnaEA;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$dWQyQkX4yyxglJ3gy3t-dSsnaEA;->INSTANCE:Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$dWQyQkX4yyxglJ3gy3t-dSsnaEA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

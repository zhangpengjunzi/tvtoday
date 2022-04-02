.class Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;
.super Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmoothStreamingMediaParser"
.end annotation


# static fields
.field private static final KEY_DURATION:Ljava/lang/String; = "Duration"

.field private static final KEY_DVR_WINDOW_LENGTH:Ljava/lang/String; = "DVRWindowLength"

.field private static final KEY_IS_LIVE:Ljava/lang/String; = "IsLive"

.field private static final KEY_LOOKAHEAD_COUNT:Ljava/lang/String; = "LookaheadCount"

.field private static final KEY_MAJOR_VERSION:Ljava/lang/String; = "MajorVersion"

.field private static final KEY_MINOR_VERSION:Ljava/lang/String; = "MinorVersion"

.field private static final KEY_TIME_SCALE:Ljava/lang/String; = "TimeScale"

.field public static final TAG:Ljava/lang/String; = "SmoothStreamingMedia"


# instance fields
.field private duration:J

.field private dvrWindowLength:J

.field private isLive:Z

.field private lookAheadCount:I

.field private majorVersion:I

.field private minorVersion:I

.field private protectionElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

.field private final streamElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;",
            ">;"
        }
    .end annotation
.end field

.field private timescale:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V
    .locals 1

    const-string v0, "SmoothStreamingMedia"

    .line 349
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 350
    iput p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->lookAheadCount:I

    const/4 p1, 0x0

    .line 351
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->protectionElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    .line 352
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->streamElements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addChild(Ljava/lang/Object;)V
    .locals 1

    .line 369
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->streamElements:Ljava/util/List;

    check-cast p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 371
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->protectionElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 373
    check-cast p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->protectionElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    :cond_2
    :goto_1
    return-void
.end method

.method public build()Ljava/lang/Object;
    .locals 14

    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->streamElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v13, v0, [Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    .line 380
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->streamElements:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 381
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->protectionElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    if-eqz v1, :cond_2

    .line 382
    new-instance v2, Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    new-instance v5, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;->uuid:Ljava/util/UUID;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->protectionElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;->data:[B

    const-string v7, "video/mp4"

    invoke-direct {v5, v1, v7, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    const/4 v1, 0x0

    aput-object v5, v4, v1

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>([Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 384
    aget-object v5, v13, v4

    .line 385
    iget v6, v5, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    if-ne v6, v3, :cond_1

    .line 387
    :cond_0
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Lcom/google/android/exoplayer2/Format;

    const/4 v6, 0x0

    .line 388
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 389
    aget-object v7, v5, v6

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/Format;->copyWithDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 394
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->majorVersion:I

    iget v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->minorVersion:I

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->timescale:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->duration:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->dvrWindowLength:J

    iget v10, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->lookAheadCount:I

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->isLive:Z

    iget-object v12, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->protectionElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;-><init>(IIJJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;)V

    return-object v0
.end method

.method public parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const-string v0, "MajorVersion"

    .line 357
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->majorVersion:I

    const-string v0, "MinorVersion"

    .line 358
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->minorVersion:I

    const-string v0, "TimeScale"

    const-wide/32 v1, 0x989680

    .line 359
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->timescale:J

    const-string v1, "Duration"

    .line 360
    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->parseRequiredLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->duration:J

    const-string v1, "DVRWindowLength"

    const-wide/16 v2, 0x0

    .line 361
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->dvrWindowLength:J

    const-string v1, "LookaheadCount"

    const/4 v2, -0x1

    .line 362
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->lookAheadCount:I

    const-string v1, "IsLive"

    const/4 v2, 0x0

    .line 363
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->parseBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->isLive:Z

    .line 364
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->timescale:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->putNormalizedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

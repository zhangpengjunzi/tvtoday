.class final Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;
.super Ljava/lang/Object;
.source "RtspHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;
    }
.end annotation


# static fields
.field public static final ACCEPT:Ljava/lang/String; = "accept"

.field public static final ALLOW:Ljava/lang/String; = "allow"

.field public static final AUTHORIZATION:Ljava/lang/String; = "authorization"

.field public static final BANDWIDTH:Ljava/lang/String; = "bandwidth"

.field public static final BLOCKSIZE:Ljava/lang/String; = "blocksize"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "cache-control"

.field public static final CONNECTION:Ljava/lang/String; = "connection"

.field public static final CONTENT_BASE:Ljava/lang/String; = "content-base"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "content-encoding"

.field public static final CONTENT_LANGUAGE:Ljava/lang/String; = "content-language"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "content-length"

.field public static final CONTENT_LOCATION:Ljava/lang/String; = "content-location"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public static final CSEQ:Ljava/lang/String; = "cseq"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field public static final PROXY_AUTHENTICATE:Ljava/lang/String; = "proxy-authenticate"

.field public static final PROXY_REQUIRE:Ljava/lang/String; = "proxy-require"

.field public static final PUBLIC:Ljava/lang/String; = "public"

.field public static final RANGE:Ljava/lang/String; = "range"

.field public static final RTCP_INTERVAL:Ljava/lang/String; = "rtcp-interval"

.field public static final RTP_INFO:Ljava/lang/String; = "rtp-info"

.field public static final SCALE:Ljava/lang/String; = "scale"

.field public static final SESSION:Ljava/lang/String; = "session"

.field public static final SPEED:Ljava/lang/String; = "speed"

.field public static final SUPPORTED:Ljava/lang/String; = "supported"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TRANSPORT:Ljava/lang/String; = "transport"

.field public static final USER_AGENT:Ljava/lang/String; = "user-agent"

.field public static final VIA:Ljava/lang/String; = "via"

.field public static final WWW_AUTHENTICATE:Ljava/lang/String; = "www-authenticate"


# instance fields
.field private final namesAndValues:Lcom/google/common/collect/ImmutableListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;->access$100(Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->build()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->namesAndValues:Lcom/google/common/collect/ImmutableListMultimap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;)V

    return-void
.end method


# virtual methods
.method public asMultiMap()Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->namesAndValues:Lcom/google/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->values(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 151
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public values(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->namesAndValues:Lcom/google/common/collect/ImmutableListMultimap;

    invoke-static {p1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

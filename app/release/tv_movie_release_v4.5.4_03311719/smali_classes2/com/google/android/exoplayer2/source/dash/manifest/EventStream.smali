.class public final Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
.super Ljava/lang/Object;
.source "EventStream.java"


# instance fields
.field public final events:[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

.field public final presentationTimesUs:[J

.field public final schemeIdUri:Ljava/lang/String;

.field public final timescale:J

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->schemeIdUri:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->value:Ljava/lang/String;

    .line 52
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->timescale:J

    .line 53
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->presentationTimesUs:[J

    .line 54
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->events:[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->schemeIdUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

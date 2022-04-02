.class public Lcom/today/player/dkplayer/om$a;
.super Ljava/lang/Object;
.source "om.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/dkplayer/om;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field playList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/dkplayer/om$a;->playList:Ljava/util/List;

    const-string v1, ".m3u8"

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/today/player/dkplayer/om$a;->playList:Ljava/util/List;

    const-string v1, ".mp4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/today/player/dkplayer/om$a;->playList:Ljava/util/List;

    const-string v1, ".flv"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/today/player/dkplayer/om$a;->playList:Ljava/util/List;

    const-string v1, ".f4v"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/today/player/dkplayer/om$a;->playList:Ljava/util/List;

    const-string v1, ".mpeg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

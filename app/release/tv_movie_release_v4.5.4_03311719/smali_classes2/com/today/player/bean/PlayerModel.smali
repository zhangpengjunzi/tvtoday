.class public Lcom/today/player/bean/PlayerModel;
.super Ljava/lang/Object;
.source "PlayerModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/bean/PlayerModel$ParseUrlDTO;,
        Lcom/today/player/bean/PlayerModel$LiveDTO;,
        Lcom/today/player/bean/PlayerModel$SourcesDTO;,
        Lcom/today/player/bean/PlayerModel$IjkDTO;,
        Lcom/today/player/bean/PlayerModel$FilterDTO;,
        Lcom/today/player/bean/PlayerModel$TxadDTO;
    }
.end annotation


# instance fields
.field private ads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lcom/today/player/bean/PlayerModel$FilterDTO;

.field private ijk:Lcom/today/player/bean/PlayerModel$IjkDTO;

.field private live:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$LiveDTO;",
            ">;"
        }
    .end annotation
.end field

.field private parseFlag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parseUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$ParseUrlDTO;",
            ">;"
        }
    .end annotation
.end field

.field private sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$SourcesDTO;",
            ">;"
        }
    .end annotation
.end field

.field private txad:Lcom/today/player/bean/PlayerModel$TxadDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel;->ads:Ljava/util/List;

    return-object v0
.end method

.method public getFilter()Lcom/today/player/bean/PlayerModel$FilterDTO;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel;->filter:Lcom/today/player/bean/PlayerModel$FilterDTO;

    return-object v0
.end method

.method public getIjk()Lcom/today/player/bean/PlayerModel$IjkDTO;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel;->ijk:Lcom/today/player/bean/PlayerModel$IjkDTO;

    return-object v0
.end method

.method public getLive()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$LiveDTO;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel;->live:Ljava/util/List;

    return-object v0
.end method

.method public getParseFlag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel;->parseFlag:Ljava/util/List;

    return-object v0
.end method

.method public getParseUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$ParseUrlDTO;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel;->parseUrl:Ljava/util/List;

    return-object v0
.end method

.method public getSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$SourcesDTO;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel;->sources:Ljava/util/List;

    return-object v0
.end method

.method public getTxad()Lcom/today/player/bean/PlayerModel$TxadDTO;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel;->txad:Lcom/today/player/bean/PlayerModel$TxadDTO;

    return-object v0
.end method

.method public setAds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel;->ads:Ljava/util/List;

    return-void
.end method

.method public setFilter(Lcom/today/player/bean/PlayerModel$FilterDTO;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel;->filter:Lcom/today/player/bean/PlayerModel$FilterDTO;

    return-void
.end method

.method public setIjk(Lcom/today/player/bean/PlayerModel$IjkDTO;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel;->ijk:Lcom/today/player/bean/PlayerModel$IjkDTO;

    return-void
.end method

.method public setLive(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$LiveDTO;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel;->live:Ljava/util/List;

    return-void
.end method

.method public setParseFlag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel;->parseFlag:Ljava/util/List;

    return-void
.end method

.method public setParseUrl(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$ParseUrlDTO;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel;->parseUrl:Ljava/util/List;

    return-void
.end method

.method public setSources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$SourcesDTO;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel;->sources:Ljava/util/List;

    return-void
.end method

.method public setTxad(Lcom/today/player/bean/PlayerModel$TxadDTO;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel;->txad:Lcom/today/player/bean/PlayerModel$TxadDTO;

    return-void
.end method

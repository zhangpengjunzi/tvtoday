.class public Lcom/today/player/bean/PlayerModel$ParseUrlDTO;
.super Ljava/lang/Object;
.source "PlayerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/bean/PlayerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseUrlDTO"
.end annotation


# instance fields
.field public isDefault:Z

.field public local:Lcom/today/player/cache/LocalParse;

.field private parseName:Ljava/lang/String;

.field private parseUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->isDefault:Z

    return-void
.end method


# virtual methods
.method public getLocal()Lcom/today/player/cache/LocalParse;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->local:Lcom/today/player/cache/LocalParse;

    return-object v0
.end method

.method public getParseName()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->parseName:Ljava/lang/String;

    return-object v0
.end method

.method public getParseUrl()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->parseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public initFromLocal(Lcom/today/player/cache/LocalParse;)V
    .locals 1

    .line 408
    iget-object v0, p1, Lcom/today/player/cache/LocalParse;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->setParseName(Ljava/lang/String;)V

    .line 409
    iget-object v0, p1, Lcom/today/player/cache/LocalParse;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->setParseUrl(Ljava/lang/String;)V

    .line 410
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->local:Lcom/today/player/cache/LocalParse;

    return-void
.end method

.method public isDefault()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->isDefault:Z

    return v0
.end method

.method public isForAdd()Z
    .locals 2

    .line 418
    invoke-virtual {p0}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->getParseName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+\u65b0\u589e\u89e3\u6790"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInternal()Z
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->local:Lcom/today/player/cache/LocalParse;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDefault(Z)V
    .locals 0

    .line 426
    iput-boolean p1, p0, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->isDefault:Z

    return-void
.end method

.method public setParseName(Ljava/lang/String;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->parseName:Ljava/lang/String;

    return-void
.end method

.method public setParseUrl(Ljava/lang/String;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->parseUrl:Ljava/lang/String;

    return-void
.end method

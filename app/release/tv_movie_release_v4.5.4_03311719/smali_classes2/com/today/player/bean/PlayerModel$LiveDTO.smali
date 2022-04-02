.class public Lcom/today/player/bean/PlayerModel$LiveDTO;
.super Ljava/lang/Object;
.source "PlayerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/bean/PlayerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveDTO"
.end annotation


# instance fields
.field private channelName:Ljava/lang/String;

.field private channelNum:I

.field private channelUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isDefault:Z

.field public live:Lcom/today/player/cache/LocalLive;

.field public local:Lcom/today/player/cache/LocalLive;

.field public sourceIdx:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 329
    iput v0, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->sourceIdx:I

    return-void
.end method


# virtual methods
.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelNum()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->channelNum:I

    return v0
.end method

.method public getChannelUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->channelUrl:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentChannelUrl()Ljava/lang/String;
    .locals 2

    .line 333
    iget v0, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->sourceIdx:I

    if-lez v0, :cond_0

    .line 334
    iget-object v1, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->channelUrl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 335
    iput v0, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->sourceIdx:I

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->channelUrl:Ljava/util/List;

    iget v1, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->sourceIdx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocal()Lcom/today/player/cache/LocalLive;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->local:Lcom/today/player/cache/LocalLive;

    return-object v0
.end method

.method public initFromLocal(Lcom/today/player/cache/LocalLive;)V
    .locals 2

    .line 345
    iget-object v0, p1, Lcom/today/player/cache/LocalLive;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->channelName:Ljava/lang/String;

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    iput-object v0, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->channelUrl:Ljava/util/List;

    .line 348
    iget-object v1, p1, Lcom/today/player/cache/LocalLive;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->local:Lcom/today/player/cache/LocalLive;

    return-void
.end method

.method public isDefault()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->isDefault:Z

    return v0
.end method

.method public isForAdd()Z
    .locals 2

    .line 363
    invoke-virtual {p0}, Lcom/today/player/bean/PlayerModel$LiveDTO;->getChannelName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+\u65b0\u589e\u76f4\u64ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInternal()Z
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->local:Lcom/today/player/cache/LocalLive;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->channelName:Ljava/lang/String;

    return-void
.end method

.method public setChannelNum(I)V
    .locals 0

    .line 376
    iput p1, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->channelNum:I

    return-void
.end method

.method public setChannelUrl(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 392
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->channelUrl:Ljava/util/List;

    return-void
.end method

.method public setDefault(Z)V
    .locals 0

    .line 358
    iput-boolean p1, p0, Lcom/today/player/bean/PlayerModel$LiveDTO;->isDefault:Z

    return-void
.end method

.class public Lcom/today/player/bean/PlayerModel$SourcesDTO;
.super Ljava/lang/Object;
.source "PlayerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/bean/PlayerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourcesDTO"
.end annotation


# instance fields
.field private api:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private local:Lcom/today/player/cache/Local;

.field private name:Ljava/lang/String;

.field private playerUrl:Ljava/lang/String;

.field public selected:Z

.field private state:Lcom/today/player/cache/SourceState;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->selected:Z

    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLocal()Lcom/today/player/cache/Local;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->local:Lcom/today/player/cache/Local;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerUrl()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->playerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/today/player/cache/SourceState;
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->state:Lcom/today/player/cache/SourceState;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/today/player/cache/SourceState;

    invoke-direct {v0}, Lcom/today/player/cache/SourceState;-><init>()V

    iput-object v0, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->state:Lcom/today/player/cache/SourceState;

    .line 208
    invoke-virtual {p0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/today/player/cache/SourceState;->sourceKey:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->state:Lcom/today/player/cache/SourceState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/today/player/cache/SourceState;->active:Z

    .line 210
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->state:Lcom/today/player/cache/SourceState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/today/player/cache/SourceState;->home:Z

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->state:Lcom/today/player/cache/SourceState;

    return-object v0
.end method

.method public getTidSort()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->state:Lcom/today/player/cache/SourceState;

    iget-object v1, v1, Lcom/today/player/cache/SourceState;->tidSort:Ljava/lang/String;

    new-instance v2, Lcom/today/player/bean/PlayerModel$SourcesDTO$1;

    invoke-direct {v2, p0}, Lcom/today/player/bean/PlayerModel$SourcesDTO$1;-><init>(Lcom/today/player/bean/PlayerModel$SourcesDTO;)V

    .line 226
    invoke-virtual {v2}, Lcom/today/player/bean/PlayerModel$SourcesDTO$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 225
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->type:I

    return v0
.end method

.method public initFromLocal(Lcom/today/player/cache/Local;)V
    .locals 1

    .line 231
    iget-object v0, p1, Lcom/today/player/cache/Local;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->setKey(Ljava/lang/String;)V

    .line 232
    iget-object v0, p1, Lcom/today/player/cache/Local;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->setName(Ljava/lang/String;)V

    .line 233
    iget-object v0, p1, Lcom/today/player/cache/Local;->api:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->setApi(Ljava/lang/String;)V

    .line 234
    iget v0, p1, Lcom/today/player/cache/Local;->type:I

    invoke-virtual {p0, v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->setType(I)V

    .line 235
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->local:Lcom/today/player/cache/Local;

    .line 236
    iget-object p1, p1, Lcom/today/player/cache/Local;->playerUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->setPlayerUrl(Ljava/lang/String;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getState()Lcom/today/player/cache/SourceState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/today/player/cache/SourceState;->active:Z

    return v0
.end method

.method public isAddition()Z
    .locals 2

    .line 270
    invoke-virtual {p0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "testspeed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addnewkey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isHome()Z
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getState()Lcom/today/player/cache/SourceState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/today/player/cache/SourceState;->home:Z

    return v0
.end method

.method public isInternal()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->local:Lcom/today/player/cache/Local;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->selected:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getState()Lcom/today/player/cache/SourceState;

    move-result-object v0

    iput-boolean p1, v0, Lcom/today/player/cache/SourceState;->active:Z

    .line 260
    invoke-virtual {p0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getState()Lcom/today/player/cache/SourceState;

    move-result-object p1

    invoke-static {p1}, Lcom/today/player/cache/RoomDataManger;->insertSourceState(Lcom/today/player/cache/SourceState;)V

    return-void
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->api:Ljava/lang/String;

    return-void
.end method

.method public setHome(Z)V
    .locals 1

    .line 264
    invoke-virtual {p0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getState()Lcom/today/player/cache/SourceState;

    move-result-object v0

    iput-boolean p1, v0, Lcom/today/player/cache/SourceState;->home:Z

    .line 265
    invoke-virtual {p0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getState()Lcom/today/player/cache/SourceState;

    move-result-object p1

    invoke-static {p1}, Lcom/today/player/cache/RoomDataManger;->insertSourceState(Lcom/today/player/cache/SourceState;)V

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->name:Ljava/lang/String;

    return-void
.end method

.method public setPlayerUrl(Ljava/lang/String;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->playerUrl:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 278
    iput-boolean p1, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->selected:Z

    return-void
.end method

.method public setState(Lcom/today/player/cache/SourceState;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->state:Lcom/today/player/cache/SourceState;

    return-void
.end method

.method public setTidSort(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getState()Lcom/today/player/cache/SourceState;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/today/player/cache/SourceState;->tidSort:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getState()Lcom/today/player/cache/SourceState;

    move-result-object p1

    invoke-static {p1}, Lcom/today/player/cache/RoomDataManger;->insertSourceState(Lcom/today/player/cache/SourceState;)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 302
    iput p1, p0, Lcom/today/player/bean/PlayerModel$SourcesDTO;->type:I

    return-void
.end method

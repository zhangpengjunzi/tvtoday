.class public Lcom/today/player/bean/SourceBean;
.super Ljava/lang/Object;
.source "SourceBean.java"


# instance fields
.field private api:Ljava/lang/String;

.field private download:Ljava/lang/String;

.field private id:I

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private playerUrl:Ljava/lang/String;

.field public selected:Z

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/today/player/bean/SourceBean;->selected:Z

    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/today/player/bean/SourceBean;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/today/player/bean/SourceBean;->download:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/today/player/bean/SourceBean;->id:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/today/player/bean/SourceBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/today/player/bean/SourceBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerUrl()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/today/player/bean/SourceBean;->playerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/today/player/bean/SourceBean;->type:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/today/player/bean/SourceBean;->selected:Z

    return v0
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/today/player/bean/SourceBean;->api:Ljava/lang/String;

    return-void
.end method

.method public setDownload(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/today/player/bean/SourceBean;->download:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/today/player/bean/SourceBean;->id:I

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/today/player/bean/SourceBean;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/today/player/bean/SourceBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPlayerUrl(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/today/player/bean/SourceBean;->playerUrl:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/today/player/bean/SourceBean;->selected:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/today/player/bean/SourceBean;->type:I

    return-void
.end method

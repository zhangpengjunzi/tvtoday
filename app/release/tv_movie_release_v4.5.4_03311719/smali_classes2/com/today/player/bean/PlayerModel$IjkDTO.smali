.class public Lcom/today/player/bean/PlayerModel$IjkDTO;
.super Ljava/lang/Object;
.source "PlayerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/bean/PlayerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IjkDTO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/bean/PlayerModel$IjkDTO$ConfigDTO;
    }
.end annotation


# instance fields
.field private config:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$IjkDTO$ConfigDTO;",
            ">;"
        }
    .end annotation
.end field

.field private option:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private option_bak:Ljava/util/List;
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
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$IjkDTO$ConfigDTO;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$IjkDTO;->config:Ljava/util/List;

    return-object v0
.end method

.method public getOption()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$IjkDTO;->option:Ljava/util/List;

    return-object v0
.end method

.method public getOption_bak()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$IjkDTO;->option_bak:Ljava/util/List;

    return-object v0
.end method

.method public setConfig(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$IjkDTO$ConfigDTO;",
            ">;)V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$IjkDTO;->config:Ljava/util/List;

    return-void
.end method

.method public setOption(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$IjkDTO;->option:Ljava/util/List;

    return-void
.end method

.method public setOption_bak(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$IjkDTO;->option_bak:Ljava/util/List;

    return-void
.end method

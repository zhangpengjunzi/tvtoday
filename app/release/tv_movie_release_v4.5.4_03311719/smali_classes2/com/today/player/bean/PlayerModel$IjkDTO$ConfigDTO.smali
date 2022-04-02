.class public Lcom/today/player/bean/PlayerModel$IjkDTO$ConfigDTO;
.super Ljava/lang/Object;
.source "PlayerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/bean/PlayerModel$IjkDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigDTO"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private option:Ljava/util/List;
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

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$IjkDTO$ConfigDTO;->name:Ljava/lang/String;

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

    .line 186
    iget-object v0, p0, Lcom/today/player/bean/PlayerModel$IjkDTO$ConfigDTO;->option:Ljava/util/List;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$IjkDTO$ConfigDTO;->name:Ljava/lang/String;

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

    .line 190
    iput-object p1, p0, Lcom/today/player/bean/PlayerModel$IjkDTO$ConfigDTO;->option:Ljava/util/List;

    return-void
.end method

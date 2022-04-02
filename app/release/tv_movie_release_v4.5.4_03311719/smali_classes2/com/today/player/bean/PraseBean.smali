.class public Lcom/today/player/bean/PraseBean;
.super Ljava/lang/Object;
.source "PraseBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:I

.field private praseName:Ljava/lang/String;

.field private praseUrl:Ljava/lang/String;

.field public selected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/today/player/bean/PraseBean;->id:I

    return v0
.end method

.method public getPraseName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/today/player/bean/PraseBean;->praseName:Ljava/lang/String;

    return-object v0
.end method

.method public getPraseUrl()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/today/player/bean/PraseBean;->praseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/today/player/bean/PraseBean;->id:I

    return-void
.end method

.method public setPraseName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/today/player/bean/PraseBean;->praseName:Ljava/lang/String;

    return-void
.end method

.method public setPraseUrl(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/today/player/bean/PraseBean;->praseUrl:Ljava/lang/String;

    return-void
.end method

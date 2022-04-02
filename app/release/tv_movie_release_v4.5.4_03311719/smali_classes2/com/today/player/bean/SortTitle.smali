.class public Lcom/today/player/bean/SortTitle;
.super Ljava/lang/Object;
.source "SortTitle.java"


# instance fields
.field private type_id:I

.field private type_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType_id()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/today/player/bean/SortTitle;->type_id:I

    return v0
.end method

.method public getType_name()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/today/player/bean/SortTitle;->type_name:Ljava/lang/String;

    return-object v0
.end method

.method public setType_id(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/today/player/bean/SortTitle;->type_id:I

    return-void
.end method

.method public setType_name(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/today/player/bean/SortTitle;->type_name:Ljava/lang/String;

    return-void
.end method

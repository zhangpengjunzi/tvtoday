.class public Lcom/today/player/cache/VodRecord;
.super Ljava/lang/Object;
.source "VodRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public apiUrl:Ljava/lang/String;

.field public data:[B

.field public dataJson:Ljava/lang/String;

.field private id:I

.field public updateTime:J

.field public vodId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/today/player/cache/VodRecord;->id:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/today/player/cache/VodRecord;->id:I

    return-void
.end method

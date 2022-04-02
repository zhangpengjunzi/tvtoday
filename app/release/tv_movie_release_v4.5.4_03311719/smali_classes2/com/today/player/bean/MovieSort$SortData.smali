.class public Lcom/today/player/bean/MovieSort$SortData;
.super Ljava/lang/Object;
.source "MovieSort.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ty"
.end annotation

.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamConverter;
    strings = {
        "name"
    }
    value = Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/bean/MovieSort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/today/player/bean/MovieSort$SortData;",
        ">;"
    }
.end annotation


# instance fields
.field public id:I
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public select:Z

.field public sort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/today/player/bean/MovieSort$SortData;->select:Z

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/today/player/bean/MovieSort$SortData;->sort:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/today/player/bean/MovieSort$SortData;->select:Z

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/today/player/bean/MovieSort$SortData;->sort:I

    .line 39
    iput p1, p0, Lcom/today/player/bean/MovieSort$SortData;->id:I

    .line 40
    iput-object p2, p0, Lcom/today/player/bean/MovieSort$SortData;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/today/player/bean/MovieSort$SortData;)I
    .locals 1

    .line 32
    iget v0, p0, Lcom/today/player/bean/MovieSort$SortData;->sort:I

    iget p1, p1, Lcom/today/player/bean/MovieSort$SortData;->sort:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lcom/today/player/bean/MovieSort$SortData;

    invoke-virtual {p0, p1}, Lcom/today/player/bean/MovieSort$SortData;->compareTo(Lcom/today/player/bean/MovieSort$SortData;)I

    move-result p1

    return p1
.end method

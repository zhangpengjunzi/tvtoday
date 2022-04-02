.class public Lcom/today/player/bean/MovieSort;
.super Ljava/lang/Object;
.source "MovieSort.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "class"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/bean/MovieSort$SortData;
    }
.end annotation


# instance fields
.field public sortList:Ljava/util/List;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "ty"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/MovieSort$SortData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

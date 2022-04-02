.class public Lcom/tv/leanback/StaggeredGrid$Location;
.super Lcom/tv/leanback/Grid$Location;
.source "StaggeredGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tv/leanback/StaggeredGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field public offset:I

.field public size:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tv/leanback/Grid$Location;-><init>(I)V

    .line 47
    iput p2, p0, Lcom/tv/leanback/StaggeredGrid$Location;->offset:I

    .line 48
    iput p3, p0, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    return-void
.end method

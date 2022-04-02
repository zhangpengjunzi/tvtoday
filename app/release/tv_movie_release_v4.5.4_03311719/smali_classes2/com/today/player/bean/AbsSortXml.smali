.class public Lcom/today/player/bean/AbsSortXml;
.super Ljava/lang/Object;
.source "AbsSortXml.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "rss"
.end annotation


# instance fields
.field public movieSort:Lcom/today/player/bean/MovieSort;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "class"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

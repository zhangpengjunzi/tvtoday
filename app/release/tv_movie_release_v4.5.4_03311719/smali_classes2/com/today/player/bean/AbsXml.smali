.class public Lcom/today/player/bean/AbsXml;
.super Ljava/lang/Object;
.source "AbsXml.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "rss"
.end annotation


# instance fields
.field public api:Ljava/lang/String;

.field public movie:Lcom/today/player/bean/Movie;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "list"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

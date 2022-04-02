.class public Lcom/today/player/bean/SearchRequest;
.super Ljava/lang/Object;
.source "SearchRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public api:Ljava/lang/String;

.field public index:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/today/player/bean/SearchRequest;->index:I

    .line 17
    iput-object p2, p0, Lcom/today/player/bean/SearchRequest;->api:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/today/player/bean/SearchRequest;->name:Ljava/lang/String;

    return-void
.end method

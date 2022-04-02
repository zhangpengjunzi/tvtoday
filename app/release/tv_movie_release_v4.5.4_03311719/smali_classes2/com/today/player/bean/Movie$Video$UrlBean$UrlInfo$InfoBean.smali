.class public Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo$InfoBean;
.super Ljava/lang/Object;
.source "Movie.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoBean"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo$InfoBean;->name:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo$InfoBean;->url:Ljava/lang/String;

    return-void
.end method

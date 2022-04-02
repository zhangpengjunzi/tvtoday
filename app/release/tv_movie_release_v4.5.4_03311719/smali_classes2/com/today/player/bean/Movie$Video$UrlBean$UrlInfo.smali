.class public Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;
.super Ljava/lang/Object;
.source "Movie.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "dd"
.end annotation

.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamConverter;
    strings = {
        "urls"
    }
    value = Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/bean/Movie$Video$UrlBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo$InfoBean;
    }
.end annotation


# instance fields
.field public beanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo$InfoBean;",
            ">;"
        }
    .end annotation
.end field

.field public flag:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field public urls:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

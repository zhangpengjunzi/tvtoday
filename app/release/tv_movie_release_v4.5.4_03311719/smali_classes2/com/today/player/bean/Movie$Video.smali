.class public Lcom/today/player/bean/Movie$Video;
.super Ljava/lang/Object;
.source "Movie.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "video"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/bean/Movie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/bean/Movie$Video$UrlBean;
    }
.end annotation


# instance fields
.field public actor:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "actor"
    .end annotation
.end field

.field public api:Ljava/lang/String;

.field public area:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "area"
    .end annotation
.end field

.field public des:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "des"
    .end annotation
.end field

.field public director:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "director"
    .end annotation
.end field

.field public dt:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "dt"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "id"
    .end annotation
.end field

.field public lang:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "lang"
    .end annotation
.end field

.field public last:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "last"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "name"
    .end annotation
.end field

.field public note:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "note"
    .end annotation
.end field

.field public pic:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "pic"
    .end annotation
.end field

.field public sourceKey:Ljava/lang/String;

.field public sourceName:Ljava/lang/String;

.field public state:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "state"
    .end annotation
.end field

.field public tid:I
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "tid"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "type"
    .end annotation
.end field

.field public urlBean:Lcom/today/player/bean/Movie$Video$UrlBean;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "dl"
    .end annotation
.end field

.field public year:I
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "year"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

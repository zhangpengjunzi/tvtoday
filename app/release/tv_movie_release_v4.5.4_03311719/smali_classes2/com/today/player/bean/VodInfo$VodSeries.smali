.class public Lcom/today/player/bean/VodInfo$VodSeries;
.super Ljava/lang/Object;
.source "VodInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/bean/VodInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VodSeries"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public selected:Z

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/today/player/bean/VodInfo$VodSeries;->selected:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/today/player/bean/VodInfo$VodSeries;->selected:Z

    .line 93
    iput-object p1, p0, Lcom/today/player/bean/VodInfo$VodSeries;->name:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/today/player/bean/VodInfo$VodSeries;->url:Ljava/lang/String;

    return-void
.end method

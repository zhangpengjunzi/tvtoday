.class public Lcom/today/player/bean/VodInfo$VodFrom;
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
    name = "VodFrom"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public selected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/today/player/bean/VodInfo$VodFrom;->selected:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/today/player/bean/VodInfo$VodFrom;->selected:Z

    .line 106
    iput-object p1, p0, Lcom/today/player/bean/VodInfo$VodFrom;->name:Ljava/lang/String;

    return-void
.end method

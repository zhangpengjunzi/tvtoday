.class public Lcom/today/player/ui/dialog/TestSpeed$vg;
.super Ljava/lang/Object;
.source "TestSpeed.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/dialog/TestSpeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "vg"
.end annotation


# instance fields
.field public a:Lcom/today/player/bean/PlayerModel$SourcesDTO;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/today/player/bean/PlayerModel$SourcesDTO;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/today/player/ui/dialog/TestSpeed$vg;->b:I

    .line 54
    iput-object p1, p0, Lcom/today/player/ui/dialog/TestSpeed$vg;->a:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 59
    iget v0, p0, Lcom/today/player/ui/dialog/TestSpeed$vg;->b:I

    check-cast p1, Lcom/today/player/ui/dialog/TestSpeed$vg;

    iget p1, p1, Lcom/today/player/ui/dialog/TestSpeed$vg;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

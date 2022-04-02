.class Lcom/tv/leanback/ItemAlignment;
.super Ljava/lang/Object;
.source "ItemAlignment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tv/leanback/ItemAlignment$Axis;
    }
.end annotation


# instance fields
.field public final horizontal:Lcom/tv/leanback/ItemAlignment$Axis;

.field private mMainAxis:Lcom/tv/leanback/ItemAlignment$Axis;

.field private mOrientation:I

.field private mSecondAxis:Lcom/tv/leanback/ItemAlignment$Axis;

.field public final vertical:Lcom/tv/leanback/ItemAlignment$Axis;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/tv/leanback/ItemAlignment;->mOrientation:I

    .line 34
    new-instance v1, Lcom/tv/leanback/ItemAlignment$Axis;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/tv/leanback/ItemAlignment$Axis;-><init>(I)V

    iput-object v1, p0, Lcom/tv/leanback/ItemAlignment;->vertical:Lcom/tv/leanback/ItemAlignment$Axis;

    .line 36
    new-instance v1, Lcom/tv/leanback/ItemAlignment$Axis;

    invoke-direct {v1, v0}, Lcom/tv/leanback/ItemAlignment$Axis;-><init>(I)V

    iput-object v1, p0, Lcom/tv/leanback/ItemAlignment;->horizontal:Lcom/tv/leanback/ItemAlignment$Axis;

    .line 38
    iput-object v1, p0, Lcom/tv/leanback/ItemAlignment;->mMainAxis:Lcom/tv/leanback/ItemAlignment$Axis;

    .line 40
    iget-object v0, p0, Lcom/tv/leanback/ItemAlignment;->vertical:Lcom/tv/leanback/ItemAlignment$Axis;

    iput-object v0, p0, Lcom/tv/leanback/ItemAlignment;->mSecondAxis:Lcom/tv/leanback/ItemAlignment$Axis;

    return-void
.end method


# virtual methods
.method public final getOrientation()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/tv/leanback/ItemAlignment;->mOrientation:I

    return v0
.end method

.method public final mainAxis()Lcom/tv/leanback/ItemAlignment$Axis;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tv/leanback/ItemAlignment;->mMainAxis:Lcom/tv/leanback/ItemAlignment$Axis;

    return-object v0
.end method

.method public final secondAxis()Lcom/tv/leanback/ItemAlignment$Axis;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tv/leanback/ItemAlignment;->mSecondAxis:Lcom/tv/leanback/ItemAlignment$Axis;

    return-object v0
.end method

.method public final setOrientation(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/tv/leanback/ItemAlignment;->mOrientation:I

    if-nez p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/tv/leanback/ItemAlignment;->horizontal:Lcom/tv/leanback/ItemAlignment$Axis;

    iput-object p1, p0, Lcom/tv/leanback/ItemAlignment;->mMainAxis:Lcom/tv/leanback/ItemAlignment$Axis;

    .line 54
    iget-object p1, p0, Lcom/tv/leanback/ItemAlignment;->vertical:Lcom/tv/leanback/ItemAlignment$Axis;

    iput-object p1, p0, Lcom/tv/leanback/ItemAlignment;->mSecondAxis:Lcom/tv/leanback/ItemAlignment$Axis;

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/tv/leanback/ItemAlignment;->vertical:Lcom/tv/leanback/ItemAlignment$Axis;

    iput-object p1, p0, Lcom/tv/leanback/ItemAlignment;->mMainAxis:Lcom/tv/leanback/ItemAlignment$Axis;

    .line 57
    iget-object p1, p0, Lcom/tv/leanback/ItemAlignment;->horizontal:Lcom/tv/leanback/ItemAlignment$Axis;

    iput-object p1, p0, Lcom/tv/leanback/ItemAlignment;->mSecondAxis:Lcom/tv/leanback/ItemAlignment$Axis;

    :goto_0
    return-void
.end method

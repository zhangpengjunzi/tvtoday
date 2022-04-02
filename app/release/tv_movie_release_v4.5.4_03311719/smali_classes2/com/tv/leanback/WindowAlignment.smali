.class Lcom/tv/leanback/WindowAlignment;
.super Ljava/lang/Object;
.source "WindowAlignment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tv/leanback/WindowAlignment$Axis;
    }
.end annotation


# instance fields
.field public final horizontal:Lcom/tv/leanback/WindowAlignment$Axis;

.field private mMainAxis:Lcom/tv/leanback/WindowAlignment$Axis;

.field private mOrientation:I

.field private mSecondAxis:Lcom/tv/leanback/WindowAlignment$Axis;

.field public final vertical:Lcom/tv/leanback/WindowAlignment$Axis;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 256
    iput v0, p0, Lcom/tv/leanback/WindowAlignment;->mOrientation:I

    .line 258
    new-instance v0, Lcom/tv/leanback/WindowAlignment$Axis;

    const-string v1, "vertical"

    invoke-direct {v0, v1}, Lcom/tv/leanback/WindowAlignment$Axis;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tv/leanback/WindowAlignment;->vertical:Lcom/tv/leanback/WindowAlignment$Axis;

    .line 260
    new-instance v0, Lcom/tv/leanback/WindowAlignment$Axis;

    const-string v1, "horizontal"

    invoke-direct {v0, v1}, Lcom/tv/leanback/WindowAlignment$Axis;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tv/leanback/WindowAlignment;->horizontal:Lcom/tv/leanback/WindowAlignment$Axis;

    .line 262
    iput-object v0, p0, Lcom/tv/leanback/WindowAlignment;->mMainAxis:Lcom/tv/leanback/WindowAlignment$Axis;

    .line 264
    iget-object v0, p0, Lcom/tv/leanback/WindowAlignment;->vertical:Lcom/tv/leanback/WindowAlignment$Axis;

    iput-object v0, p0, Lcom/tv/leanback/WindowAlignment;->mSecondAxis:Lcom/tv/leanback/WindowAlignment$Axis;

    return-void
.end method


# virtual methods
.method public final getOrientation()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/tv/leanback/WindowAlignment;->mOrientation:I

    return v0
.end method

.method public final mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/tv/leanback/WindowAlignment;->mMainAxis:Lcom/tv/leanback/WindowAlignment$Axis;

    return-object v0
.end method

.method public final reset()V
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment$Axis;->reset()V

    return-void
.end method

.method public final secondAxis()Lcom/tv/leanback/WindowAlignment$Axis;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/tv/leanback/WindowAlignment;->mSecondAxis:Lcom/tv/leanback/WindowAlignment$Axis;

    return-object v0
.end method

.method public final setOrientation(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/tv/leanback/WindowAlignment;->mOrientation:I

    if-nez p1, :cond_0

    .line 277
    iget-object p1, p0, Lcom/tv/leanback/WindowAlignment;->horizontal:Lcom/tv/leanback/WindowAlignment$Axis;

    iput-object p1, p0, Lcom/tv/leanback/WindowAlignment;->mMainAxis:Lcom/tv/leanback/WindowAlignment$Axis;

    .line 278
    iget-object p1, p0, Lcom/tv/leanback/WindowAlignment;->vertical:Lcom/tv/leanback/WindowAlignment$Axis;

    iput-object p1, p0, Lcom/tv/leanback/WindowAlignment;->mSecondAxis:Lcom/tv/leanback/WindowAlignment$Axis;

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/tv/leanback/WindowAlignment;->vertical:Lcom/tv/leanback/WindowAlignment$Axis;

    iput-object p1, p0, Lcom/tv/leanback/WindowAlignment;->mMainAxis:Lcom/tv/leanback/WindowAlignment$Axis;

    .line 281
    iget-object p1, p0, Lcom/tv/leanback/WindowAlignment;->horizontal:Lcom/tv/leanback/WindowAlignment$Axis;

    iput-object p1, p0, Lcom/tv/leanback/WindowAlignment;->mSecondAxis:Lcom/tv/leanback/WindowAlignment$Axis;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "horizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/tv/leanback/WindowAlignment;->horizontal:Lcom/tv/leanback/WindowAlignment$Axis;

    .line 296
    invoke-virtual {v1}, Lcom/tv/leanback/WindowAlignment$Axis;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; vertical="

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/tv/leanback/WindowAlignment;->vertical:Lcom/tv/leanback/WindowAlignment$Axis;

    .line 298
    invoke-virtual {v1}, Lcom/tv/leanback/WindowAlignment$Axis;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/tv/leanback/ItemAlignment$Axis;
.super Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;
.source "ItemAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tv/leanback/ItemAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Axis"
.end annotation


# instance fields
.field private mOrientation:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 21
    iput p1, p0, Lcom/tv/leanback/ItemAlignment$Axis;->mOrientation:I

    return-void
.end method


# virtual methods
.method public getAlignmentPosition(Landroid/view/View;)I
    .locals 1

    .line 28
    iget v0, p0, Lcom/tv/leanback/ItemAlignment$Axis;->mOrientation:I

    invoke-static {p1, p0, v0}, Lcom/tv/leanback/ItemAlignmentFacetHelper;->getAlignmentPosition(Landroid/view/View;Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;I)I

    move-result p1

    return p1
.end method

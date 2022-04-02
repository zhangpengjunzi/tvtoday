.class public final Lcom/tv/leanback/ItemAlignmentFacet;
.super Ljava/lang/Object;
.source "ItemAlignmentFacet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;
    }
.end annotation


# static fields
.field public static final ITEM_ALIGN_OFFSET_PERCENT_DISABLED:F = -1.0f


# instance fields
.field private mAlignmentDefs:[Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;

    .line 144
    new-instance v1, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v1}, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/tv/leanback/ItemAlignmentFacet;->mAlignmentDefs:[Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;

    return-void
.end method


# virtual methods
.method public getAlignmentDefs()[Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/tv/leanback/ItemAlignmentFacet;->mAlignmentDefs:[Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;

    return-object v0
.end method

.method public isMultiAlignment()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/tv/leanback/ItemAlignmentFacet;->mAlignmentDefs:[Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAlignmentDefs([Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 154
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 157
    iput-object p1, p0, Lcom/tv/leanback/ItemAlignmentFacet;->mAlignmentDefs:[Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;

    return-void

    .line 155
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

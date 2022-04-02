.class public Lcom/tv/widget/ViewObj;
.super Ljava/lang/Object;
.source "ViewObj.java"


# instance fields
.field private final params:Landroid/view/ViewGroup$MarginLayoutParams;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tv/widget/ViewObj;->view:Landroid/view/View;

    .line 18
    iput-object p2, p0, Lcom/tv/widget/ViewObj;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method


# virtual methods
.method public setHeight(I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tv/widget/ViewObj;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 48
    iget-object p1, p0, Lcom/tv/widget/ViewObj;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/tv/widget/ViewObj;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMarginBottom(I)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tv/widget/ViewObj;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 38
    iget-object p1, p0, Lcom/tv/widget/ViewObj;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/tv/widget/ViewObj;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMarginLeft(I)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/tv/widget/ViewObj;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 23
    iget-object p1, p0, Lcom/tv/widget/ViewObj;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/tv/widget/ViewObj;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMarginRight(I)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/tv/widget/ViewObj;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 33
    iget-object p1, p0, Lcom/tv/widget/ViewObj;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/tv/widget/ViewObj;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMarginTop(I)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/tv/widget/ViewObj;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 28
    iget-object p1, p0, Lcom/tv/widget/ViewObj;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/tv/widget/ViewObj;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/tv/widget/ViewObj;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 43
    iget-object p1, p0, Lcom/tv/widget/ViewObj;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/tv/widget/ViewObj;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

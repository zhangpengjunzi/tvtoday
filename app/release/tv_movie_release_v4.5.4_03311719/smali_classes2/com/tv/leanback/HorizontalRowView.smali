.class public final Lcom/tv/leanback/HorizontalRowView;
.super Landroid/widget/LinearLayout;
.source "HorizontalRowView.java"


# instance fields
.field private mGridView:Lcom/tv/leanback/HorizontalGridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/tv/leanback/HorizontalRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/tv/leanback/HorizontalRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 32
    sget p2, Lcom/tv/R$layout;->lb_list_row:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    sget p1, Lcom/tv/R$id;->row_content:I

    invoke-virtual {p0, p1}, Lcom/tv/leanback/HorizontalRowView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tv/leanback/HorizontalGridView;

    iput-object p1, p0, Lcom/tv/leanback/HorizontalRowView;->mGridView:Lcom/tv/leanback/HorizontalGridView;

    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2}, Lcom/tv/leanback/HorizontalGridView;->setHasFixedSize(Z)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lcom/tv/leanback/HorizontalRowView;->setOrientation(I)V

    const/high16 p1, 0x40000

    .line 42
    invoke-virtual {p0, p1}, Lcom/tv/leanback/HorizontalRowView;->setDescendantFocusability(I)V

    return-void
.end method


# virtual methods
.method public getGridView()Lcom/tv/leanback/HorizontalGridView;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tv/leanback/HorizontalRowView;->mGridView:Lcom/tv/leanback/HorizontalGridView;

    return-object v0
.end method

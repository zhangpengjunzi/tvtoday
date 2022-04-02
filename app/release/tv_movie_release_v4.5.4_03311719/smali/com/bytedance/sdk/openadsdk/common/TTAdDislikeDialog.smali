.class public Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;
.super Landroid/widget/FrameLayout;
.source "TTAdDislikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

.field private c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/view/View;

.field private f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

.field private g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

.field private h:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field private i:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$a;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 42
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->j:Z

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 0

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 47
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->c()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 p2, 0x1

    .line 64
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->setClickable(Z)V

    .line 65
    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$1;-><init>(Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "#80000000"

    .line 71
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->setBackgroundColor(I)V

    const-string v0, "tt_dislike_dialog_layout"

    .line 72
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->a:Landroid/view/View;

    .line 74
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 76
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 78
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 82
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->d()V

    .line 83
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->c()V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a(Ljava/util/List;)V

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->d:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 227
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 229
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->e:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 230
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz p1, :cond_4

    const/16 v1, 0x8

    .line 233
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    .line 235
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz p1, :cond_5

    .line 236
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->e()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;)Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$a;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->i:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$a;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ae()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    .line 92
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    const/4 v0, 0x0

    .line 95
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a(Z)V

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    return-void
.end method

.method private d()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_dislike_title_content"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->d:Landroid/widget/RelativeLayout;

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_dislike_line1"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->e:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_dislike_header_back"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_dislike_header_tv"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 107
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_dislike_header_tv_back"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_dislike_header_tv_title"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$2;-><init>(Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_filer_words_lv"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    .line 121
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$3;-><init>(Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_filer_words_lv_second"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    .line 152
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$4;-><init>(Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->d:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 206
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a()V

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_4

    .line 213
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->addView(Landroid/view/View;)V

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->e()V

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->setVisibility(I)V

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->j:Z

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->i:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$a;

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$a;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    const/16 v0, 0x8

    .line 182
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->setVisibility(I)V

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->j:Z

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->i:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$a;

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$a;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$a;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->i:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$a;

    return-void
.end method

.class public Lcom/tv/widget/SearchKeyboard;
.super Landroid/widget/FrameLayout;
.source "SearchKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tv/widget/SearchKeyboard$OnSearchKeyListener;,
        Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;,
        Lcom/tv/widget/SearchKeyboard$Keyboard;
    }
.end annotation


# instance fields
.field private focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private hint:Landroid/widget/TextView;

.field private keyboardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tv/widget/SearchKeyboard$Keyboard;",
            ">;"
        }
    .end annotation
.end field

.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private search:Landroid/widget/TextView;

.field private searchKeyListener:Lcom/tv/widget/SearchKeyboard$OnSearchKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/tv/widget/SearchKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/tv/widget/SearchKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 39

    move-object/from16 v0, p0

    .line 60
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v1, "A"

    const-string v2, "B"

    const-string v3, "C"

    const-string v4, "D"

    const-string v5, "E"

    const-string v6, "F"

    const-string v7, "G"

    const-string v8, "H"

    const-string v9, "I"

    const-string v10, "J"

    const-string v11, "K"

    const-string v12, "L"

    const-string v13, "M"

    const-string v14, "N"

    const-string v15, "O"

    const-string v16, "P"

    const-string v17, "Q"

    const-string v18, "R"

    const-string v19, "S"

    const-string v20, "T"

    const-string v21, "U"

    const-string v22, "V"

    const-string v23, "W"

    const-string v24, "X"

    const-string v25, "Y"

    const-string v26, "Z"

    const-string v27, "1"

    const-string v28, "2"

    const-string v29, "3"

    const-string v30, "4"

    const-string v31, "5"

    const-string v32, "6"

    const-string v33, "7"

    const-string v34, "8"

    const-string v35, "9"

    const-string v36, "0"

    const-string v37, "\u5220\u9664"

    const-string v38, "\u6e05\u7a7a"

    .line 35
    filled-new-array/range {v1 .. v38}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/tv/widget/SearchKeyboard;->keys:Ljava/util/List;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tv/widget/SearchKeyboard;->keyboardList:Ljava/util/List;

    .line 42
    new-instance v1, Lcom/tv/widget/SearchKeyboard$1;

    invoke-direct {v1, v0}, Lcom/tv/widget/SearchKeyboard$1;-><init>(Lcom/tv/widget/SearchKeyboard;)V

    iput-object v1, v0, Lcom/tv/widget/SearchKeyboard;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/tv/widget/SearchKeyboard;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/tv/widget/SearchKeyboard;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tv/widget/SearchKeyboard;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tv/widget/SearchKeyboard;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tv/widget/SearchKeyboard;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tv/widget/SearchKeyboard;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tv/widget/SearchKeyboard;->search:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tv/widget/SearchKeyboard;)Lcom/tv/widget/SearchKeyboard$OnSearchKeyListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tv/widget/SearchKeyboard;->searchKeyListener:Lcom/tv/widget/SearchKeyboard$OnSearchKeyListener;

    return-object p0
.end method

.method private initView()V
    .locals 7

    .line 65
    invoke-virtual {p0}, Lcom/tv/widget/SearchKeyboard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tv/R$layout;->keyboard_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    sget v1, Lcom/tv/R$id;->mRecyclerView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/tv/widget/SearchKeyboard;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    sget v1, Lcom/tv/R$id;->hint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tv/widget/SearchKeyboard;->hint:Landroid/widget/TextView;

    .line 68
    sget v1, Lcom/tv/R$id;->search:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tv/widget/SearchKeyboard;->search:Landroid/widget/TextView;

    .line 69
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tv/widget/SearchKeyboard;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 70
    iget-object v1, p0, Lcom/tv/widget/SearchKeyboard;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 71
    iget-object v0, p0, Lcom/tv/widget/SearchKeyboard;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/tv/widget/SearchKeyboard$2;

    invoke-direct {v1, p0}, Lcom/tv/widget/SearchKeyboard$2;-><init>(Lcom/tv/widget/SearchKeyboard;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/tv/widget/SearchKeyboard;->hint:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u8f93\u5165\u5168\u62fc\u6216\u8005\u9996\u5b57\u6bcd\u67e5\u627e\u5f71\u7247<br>\u9996\u5b57\u6bcd\u5982\uff1a<font color=\"#0CADE2\">\u201c\u91d1\u521a\u5ddd\u201d</font>\u8f93\u5165<font color=\"#0CADE2\">\u201cJGC\u201d</font><br>\u90e8\u5206\u5f71\u7247\u53ef\u80fd\u641c\u7d22\u4e0d\u51fa\u6765"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/tv/widget/SearchKeyboard;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    add-int/lit8 v3, v0, -0x2

    if-ge v1, v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/tv/widget/SearchKeyboard;->keyboardList:Ljava/util/List;

    new-instance v4, Lcom/tv/widget/SearchKeyboard$Keyboard;

    iget-object v5, p0, Lcom/tv/widget/SearchKeyboard;->keys:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5, v2}, Lcom/tv/widget/SearchKeyboard$Keyboard;-><init>(ILjava/lang/String;Lcom/tv/widget/SearchKeyboard$1;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/tv/widget/SearchKeyboard;->keyboardList:Ljava/util/List;

    new-instance v4, Lcom/tv/widget/SearchKeyboard$Keyboard;

    iget-object v5, p0, Lcom/tv/widget/SearchKeyboard;->keys:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    invoke-direct {v4, v6, v5, v2}, Lcom/tv/widget/SearchKeyboard$Keyboard;-><init>(ILjava/lang/String;Lcom/tv/widget/SearchKeyboard$1;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;

    iget-object v1, p0, Lcom/tv/widget/SearchKeyboard;->keyboardList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;-><init>(Ljava/util/List;Lcom/tv/widget/SearchKeyboard$1;)V

    .line 96
    iget-object v1, p0, Lcom/tv/widget/SearchKeyboard;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 97
    new-instance v1, Lcom/tv/widget/SearchKeyboard$3;

    invoke-direct {v1, p0, v0}, Lcom/tv/widget/SearchKeyboard$3;-><init>(Lcom/tv/widget/SearchKeyboard;Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;)V

    invoke-virtual {v0, v1}, Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;->setSpanSizeLookup(Lcom/chad/library/adapter/base/BaseQuickAdapter$SpanSizeLookup;)V

    .line 108
    new-instance v1, Lcom/tv/widget/SearchKeyboard$4;

    invoke-direct {v1, p0}, Lcom/tv/widget/SearchKeyboard$4;-><init>(Lcom/tv/widget/SearchKeyboard;)V

    invoke-virtual {v0, v1}, Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public setOnSearchKeyListener(Lcom/tv/widget/SearchKeyboard$OnSearchKeyListener;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/tv/widget/SearchKeyboard;->searchKeyListener:Lcom/tv/widget/SearchKeyboard$OnSearchKeyListener;

    return-void
.end method

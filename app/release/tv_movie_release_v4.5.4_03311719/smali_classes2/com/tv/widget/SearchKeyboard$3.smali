.class Lcom/tv/widget/SearchKeyboard$3;
.super Ljava/lang/Object;
.source "SearchKeyboard.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$SpanSizeLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tv/widget/SearchKeyboard;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tv/widget/SearchKeyboard;

.field final synthetic val$adapter:Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;


# direct methods
.method constructor <init>(Lcom/tv/widget/SearchKeyboard;Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/tv/widget/SearchKeyboard$3;->this$0:Lcom/tv/widget/SearchKeyboard;

    iput-object p2, p0, Lcom/tv/widget/SearchKeyboard$3;->val$adapter:Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(Landroidx/recyclerview/widget/GridLayoutManager;I)I
    .locals 2

    .line 100
    iget-object p1, p0, Lcom/tv/widget/SearchKeyboard$3;->val$adapter:Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;

    invoke-virtual {p1}, Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    sub-int/2addr p1, v0

    if-eq p2, p1, :cond_1

    iget-object p1, p0, Lcom/tv/widget/SearchKeyboard$3;->val$adapter:Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;

    invoke-virtual {p1}, Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v0
.end method

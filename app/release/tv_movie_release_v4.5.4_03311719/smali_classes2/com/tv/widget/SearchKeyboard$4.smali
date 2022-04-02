.class Lcom/tv/widget/SearchKeyboard$4;
.super Ljava/lang/Object;
.source "SearchKeyboard.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


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


# direct methods
.method constructor <init>(Lcom/tv/widget/SearchKeyboard;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/tv/widget/SearchKeyboard$4;->this$0:Lcom/tv/widget/SearchKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 111
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tv/widget/SearchKeyboard$Keyboard;

    .line 112
    iget-object v0, p0, Lcom/tv/widget/SearchKeyboard$4;->this$0:Lcom/tv/widget/SearchKeyboard;

    invoke-static {v0}, Lcom/tv/widget/SearchKeyboard;->access$400(Lcom/tv/widget/SearchKeyboard;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    if-ne p3, p1, :cond_1

    const/4 p1, 0x0

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 118
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tv/widget/SearchKeyboard$Keyboard;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    :goto_0
    iget-object p2, p0, Lcom/tv/widget/SearchKeyboard$4;->this$0:Lcom/tv/widget/SearchKeyboard;

    invoke-static {p2}, Lcom/tv/widget/SearchKeyboard;->access$400(Lcom/tv/widget/SearchKeyboard;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p2, p0, Lcom/tv/widget/SearchKeyboard$4;->this$0:Lcom/tv/widget/SearchKeyboard;

    invoke-static {p2}, Lcom/tv/widget/SearchKeyboard;->access$500(Lcom/tv/widget/SearchKeyboard;)Lcom/tv/widget/SearchKeyboard$OnSearchKeyListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 122
    iget-object p2, p0, Lcom/tv/widget/SearchKeyboard$4;->this$0:Lcom/tv/widget/SearchKeyboard;

    invoke-static {p2}, Lcom/tv/widget/SearchKeyboard;->access$500(Lcom/tv/widget/SearchKeyboard;)Lcom/tv/widget/SearchKeyboard$OnSearchKeyListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tv/widget/SearchKeyboard$OnSearchKeyListener;->onSearchKey(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

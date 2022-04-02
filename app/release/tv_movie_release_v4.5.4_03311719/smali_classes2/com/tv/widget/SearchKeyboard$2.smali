.class Lcom/tv/widget/SearchKeyboard$2;
.super Ljava/lang/Object;
.source "SearchKeyboard.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


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

    .line 71
    iput-object p1, p0, Lcom/tv/widget/SearchKeyboard$2;->this$0:Lcom/tv/widget/SearchKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/tv/widget/SearchKeyboard$2;->this$0:Lcom/tv/widget/SearchKeyboard;

    invoke-static {v0}, Lcom/tv/widget/SearchKeyboard;->access$100(Lcom/tv/widget/SearchKeyboard;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

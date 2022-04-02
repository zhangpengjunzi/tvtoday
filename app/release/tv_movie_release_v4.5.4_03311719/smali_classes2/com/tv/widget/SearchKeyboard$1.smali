.class Lcom/tv/widget/SearchKeyboard$1;
.super Ljava/lang/Object;
.source "SearchKeyboard.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tv/widget/SearchKeyboard;
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

    .line 42
    iput-object p1, p0, Lcom/tv/widget/SearchKeyboard$1;->this$0:Lcom/tv/widget/SearchKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/tv/widget/SearchKeyboard$1;->this$0:Lcom/tv/widget/SearchKeyboard;

    invoke-static {v0}, Lcom/tv/widget/SearchKeyboard;->access$000(Lcom/tv/widget/SearchKeyboard;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

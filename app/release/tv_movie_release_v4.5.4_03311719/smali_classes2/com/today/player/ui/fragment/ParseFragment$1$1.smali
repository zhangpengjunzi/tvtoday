.class Lcom/today/player/ui/fragment/ParseFragment$1$1;
.super Ljava/lang/Object;
.source "ParseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/fragment/ParseFragment$1;->onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/fragment/ParseFragment$1;

.field final synthetic val$clVar:Lcom/today/player/ui/dialog/ParseTipDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/today/player/ui/fragment/ParseFragment$1;Landroid/view/View;Lcom/today/player/ui/dialog/ParseTipDialog;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$1;->this$1:Lcom/today/player/ui/fragment/ParseFragment$1;

    iput-object p2, p0, Lcom/today/player/ui/fragment/ParseFragment$1$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/today/player/ui/fragment/ParseFragment$1$1;->val$clVar:Lcom/today/player/ui/dialog/ParseTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 134
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$1;->val$view:Landroid/view/View;

    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 135
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/today/player/api/ApiConfig;->mParseUrl:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    iget-object v0, p0, Lcom/today/player/ui/fragment/ParseFragment$1$1;->val$clVar:Lcom/today/player/ui/dialog/ParseTipDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->e:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$1;->val$clVar:Lcom/today/player/ui/dialog/ParseTipDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/ParseTipDialog;->d:Lcom/today/player/ui/dialog/ParseTipDialog$a;

    check-cast p1, Lcom/today/player/ui/fragment/ParseFragment$1$C0033a;

    .line 137
    iget-object v0, p0, Lcom/today/player/ui/fragment/ParseFragment$1$1;->this$1:Lcom/today/player/ui/fragment/ParseFragment$1;

    iget-object v0, v0, Lcom/today/player/ui/fragment/ParseFragment$1;->this$0:Lcom/today/player/ui/fragment/ParseFragment;

    invoke-static {v0}, Lcom/today/player/ui/fragment/ParseFragment;->access$000(Lcom/today/player/ui/fragment/ParseFragment;)Lcom/today/player/ui/adapter/PraseAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$1;->this$1:Lcom/today/player/ui/fragment/ParseFragment$1;

    iget-object v1, v1, Lcom/today/player/ui/fragment/ParseFragment$1;->this$0:Lcom/today/player/ui/fragment/ParseFragment;

    invoke-static {v1}, Lcom/today/player/ui/fragment/ParseFragment;->access$000(Lcom/today/player/ui/fragment/ParseFragment;)Lcom/today/player/ui/adapter/PraseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/today/player/ui/adapter/PraseAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/today/player/api/ApiConfig;->mParseUrl:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/PraseAdapter;->notifyItemChanged(I)V

    .line 138
    iget-object v0, p0, Lcom/today/player/ui/fragment/ParseFragment$1$1;->this$1:Lcom/today/player/ui/fragment/ParseFragment$1;

    iget-object v0, v0, Lcom/today/player/ui/fragment/ParseFragment$1;->this$0:Lcom/today/player/ui/fragment/ParseFragment;

    invoke-static {v0}, Lcom/today/player/ui/fragment/ParseFragment;->access$000(Lcom/today/player/ui/fragment/ParseFragment;)Lcom/today/player/ui/adapter/PraseAdapter;

    move-result-object v0

    iget p1, p1, Lcom/today/player/ui/fragment/ParseFragment$1$C0033a;->a:I

    invoke-virtual {v0, p1}, Lcom/today/player/ui/adapter/PraseAdapter;->notifyItemChanged(I)V

    .line 139
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/today/player/ui/fragment/ParseFragment$1$1;->val$clVar:Lcom/today/player/ui/dialog/ParseTipDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->e:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    invoke-virtual {p1, v0}, Lcom/today/player/api/ApiConfig;->setDefault(Lcom/today/player/bean/PlayerModel$ParseUrlDTO;)V

    .line 140
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$1;->val$clVar:Lcom/today/player/ui/dialog/ParseTipDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/ParseTipDialog;->c:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$1;->val$clVar:Lcom/today/player/ui/dialog/ParseTipDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/ParseTipDialog;->c:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

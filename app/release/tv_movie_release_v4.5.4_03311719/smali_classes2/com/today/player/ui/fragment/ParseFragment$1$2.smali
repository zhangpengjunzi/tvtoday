.class Lcom/today/player/ui/fragment/ParseFragment$1$2;
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

    .line 148
    iput-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$2;->this$1:Lcom/today/player/ui/fragment/ParseFragment$1;

    iput-object p2, p0, Lcom/today/player/ui/fragment/ParseFragment$1$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/today/player/ui/fragment/ParseFragment$1$2;->val$clVar:Lcom/today/player/ui/dialog/ParseTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 151
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$2;->val$view:Landroid/view/View;

    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 152
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$2;->val$clVar:Lcom/today/player/ui/dialog/ParseTipDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/ParseTipDialog;->e:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->isDefault()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$2;->this$1:Lcom/today/player/ui/fragment/ParseFragment$1;

    iget-object p1, p1, Lcom/today/player/ui/fragment/ParseFragment$1;->this$0:Lcom/today/player/ui/fragment/ParseFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/ParseFragment;->access$500(Lcom/today/player/ui/fragment/ParseFragment;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "\u9ed8\u8ba4\u89e3\u6790\u5730\u5740\u4e0d\u53ef\u5220\u9664\uff01"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$2;->val$clVar:Lcom/today/player/ui/dialog/ParseTipDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/ParseTipDialog;->e:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->isInternal()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$2;->this$1:Lcom/today/player/ui/fragment/ParseFragment$1;

    iget-object p1, p1, Lcom/today/player/ui/fragment/ParseFragment$1;->this$0:Lcom/today/player/ui/fragment/ParseFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/ParseFragment;->access$600(Lcom/today/player/ui/fragment/ParseFragment;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "\u5185\u7f6e\u89e3\u6790\u4e0d\u53ef\u5220\u9664!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$2;->val$clVar:Lcom/today/player/ui/dialog/ParseTipDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/ParseTipDialog;->e:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->getLocal()Lcom/today/player/cache/LocalParse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 159
    invoke-static {p1}, Lcom/today/player/cache/RoomDataManger;->deleteLocalParse(Lcom/today/player/cache/LocalParse;)V

    .line 161
    :cond_2
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$2;->val$clVar:Lcom/today/player/ui/dialog/ParseTipDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/ParseTipDialog;->d:Lcom/today/player/ui/dialog/ParseTipDialog$a;

    check-cast p1, Lcom/today/player/ui/fragment/ParseFragment$1$C0033a;

    .line 162
    iget-object v0, p0, Lcom/today/player/ui/fragment/ParseFragment$1$2;->this$1:Lcom/today/player/ui/fragment/ParseFragment$1;

    iget-object v0, v0, Lcom/today/player/ui/fragment/ParseFragment$1;->this$0:Lcom/today/player/ui/fragment/ParseFragment;

    invoke-static {v0}, Lcom/today/player/ui/fragment/ParseFragment;->access$000(Lcom/today/player/ui/fragment/ParseFragment;)Lcom/today/player/ui/adapter/PraseAdapter;

    move-result-object v0

    iget p1, p1, Lcom/today/player/ui/fragment/ParseFragment$1$C0033a;->a:I

    invoke-virtual {v0, p1}, Lcom/today/player/ui/adapter/PraseAdapter;->remove(I)V

    .line 163
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/api/ApiConfig;->getPraseBeanList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/today/player/ui/fragment/ParseFragment$1$2;->val$clVar:Lcom/today/player/ui/dialog/ParseTipDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->e:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$2;->val$clVar:Lcom/today/player/ui/dialog/ParseTipDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/ParseTipDialog;->c:Landroid/app/Dialog;

    if-eqz p1, :cond_3

    .line 165
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 166
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1$2;->val$clVar:Lcom/today/player/ui/dialog/ParseTipDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/ParseTipDialog;->c:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

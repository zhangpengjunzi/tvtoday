.class Lcom/today/player/ui/fragment/LiveFragment$1$1;
.super Ljava/lang/Object;
.source "LiveFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/fragment/LiveFragment$1;->onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/fragment/LiveFragment$1;

.field final synthetic val$skVar:Lcom/today/player/ui/dialog/LiveParseDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/today/player/ui/fragment/LiveFragment$1;Landroid/view/View;Lcom/today/player/ui/dialog/LiveParseDialog;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/today/player/ui/fragment/LiveFragment$1$1;->this$1:Lcom/today/player/ui/fragment/LiveFragment$1;

    iput-object p2, p0, Lcom/today/player/ui/fragment/LiveFragment$1$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/today/player/ui/fragment/LiveFragment$1$1;->val$skVar:Lcom/today/player/ui/dialog/LiveParseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 111
    iget-object p1, p0, Lcom/today/player/ui/fragment/LiveFragment$1$1;->val$view:Landroid/view/View;

    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 112
    iget-object p1, p0, Lcom/today/player/ui/fragment/LiveFragment$1$1;->val$skVar:Lcom/today/player/ui/dialog/LiveParseDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/LiveParseDialog;->e:Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$LiveDTO;->isInternal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/today/player/ui/fragment/LiveFragment$1$1;->this$1:Lcom/today/player/ui/fragment/LiveFragment$1;

    iget-object p1, p1, Lcom/today/player/ui/fragment/LiveFragment$1;->this$0:Lcom/today/player/ui/fragment/LiveFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/LiveFragment;->access$400(Lcom/today/player/ui/fragment/LiveFragment;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u5185\u7f6e\u6e90\u4e0d\u53ef\u5220\u9664!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/fragment/LiveFragment$1$1;->val$skVar:Lcom/today/player/ui/dialog/LiveParseDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/LiveParseDialog;->e:Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$LiveDTO;->getLocal()Lcom/today/player/cache/LocalLive;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 118
    invoke-static {p1}, Lcom/today/player/cache/RoomDataManger;->deleteLocalLive(Lcom/today/player/cache/LocalLive;)V

    .line 120
    :cond_1
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/api/ApiConfig;->getChannelList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/today/player/ui/fragment/LiveFragment$1$1;->val$skVar:Lcom/today/player/ui/dialog/LiveParseDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/LiveParseDialog;->e:Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 121
    iget-object p1, p0, Lcom/today/player/ui/fragment/LiveFragment$1$1;->val$skVar:Lcom/today/player/ui/dialog/LiveParseDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/LiveParseDialog;->d:Lcom/today/player/ui/dialog/LiveParseDialog$a;

    check-cast p1, Lcom/today/player/ui/fragment/LiveFragment$1$C0031a;

    .line 122
    iget-object v0, p0, Lcom/today/player/ui/fragment/LiveFragment$1$1;->this$1:Lcom/today/player/ui/fragment/LiveFragment$1;

    iget-object v0, v0, Lcom/today/player/ui/fragment/LiveFragment$1;->this$0:Lcom/today/player/ui/fragment/LiveFragment;

    invoke-static {v0}, Lcom/today/player/ui/fragment/LiveFragment;->access$500(Lcom/today/player/ui/fragment/LiveFragment;)Lcom/today/player/ui/adapter/LiveParseAdapter;

    move-result-object v0

    iget p1, p1, Lcom/today/player/ui/fragment/LiveFragment$1$C0031a;->a:I

    invoke-virtual {v0, p1}, Lcom/today/player/ui/adapter/LiveParseAdapter;->remove(I)V

    .line 123
    iget-object p1, p0, Lcom/today/player/ui/fragment/LiveFragment$1$1;->val$skVar:Lcom/today/player/ui/dialog/LiveParseDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/LiveParseDialog;->c:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/today/player/ui/fragment/LiveFragment$1$1;->val$skVar:Lcom/today/player/ui/dialog/LiveParseDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/LiveParseDialog;->c:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method

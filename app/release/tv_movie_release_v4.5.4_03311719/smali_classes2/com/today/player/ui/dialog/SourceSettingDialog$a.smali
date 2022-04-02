.class public Lcom/today/player/ui/dialog/SourceSettingDialog$a;
.super Ljava/lang/Object;
.source "SourceSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/dialog/SourceSettingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/dialog/SourceSettingDialog;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$a;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 54
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$a;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isHome()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$a;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-virtual {p1}, Lcom/today/player/ui/fragment/SourceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u5f53\u524d\u9996\u9875\u6570\u636e\u6e90\u4e0d\u53ef\u7981\u7528!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$a;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    .line 59
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->setActive(Z)V

    .line 60
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$a;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->d:Lcom/today/player/ui/dialog/SourceSettingDialog$e;

    check-cast p1, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener$C0034a;

    .line 61
    iget-object v0, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$a;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    iget-object v0, v0, Lcom/today/player/ui/fragment/SourceSettingFragment;->settingAdapter:Lcom/today/player/ui/adapter/SourceSettingAdapter;

    iget p1, p1, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener$C0034a;->a:I

    invoke-virtual {v0, p1}, Lcom/today/player/ui/adapter/SourceSettingAdapter;->notifyItemChanged(I)V

    .line 62
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$a;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    invoke-virtual {p1}, Lcom/today/player/ui/dialog/SourceSettingDialog;->b()V

    .line 63
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$a;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    invoke-virtual {p1}, Lcom/today/player/ui/dialog/SourceSettingDialog;->a()V

    return-void
.end method

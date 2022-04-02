.class public Lcom/today/player/ui/dialog/SourceSettingDialog$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/dialog/SourceSettingDialog;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$b;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 72
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 73
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$b;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$b;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->d:Lcom/today/player/ui/dialog/SourceSettingDialog$e;

    check-cast p1, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener$C0034a;

    .line 75
    iget-object v0, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$b;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    iget-object v0, v0, Lcom/today/player/ui/fragment/SourceSettingFragment;->settingAdapter:Lcom/today/player/ui/adapter/SourceSettingAdapter;

    iget-object v1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$b;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object v1, v1, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    iget-object v1, v1, Lcom/today/player/ui/fragment/SourceSettingFragment;->settingAdapter:Lcom/today/player/ui/adapter/SourceSettingAdapter;

    invoke-virtual {v1}, Lcom/today/player/ui/adapter/SourceSettingAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/today/player/api/ApiConfig;->getDefaultSourceBean()Lcom/today/player/bean/PlayerModel$SourcesDTO;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/SourceSettingAdapter;->notifyItemChanged(I)V

    .line 76
    iget-object v0, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$b;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    iget-object v0, v0, Lcom/today/player/ui/fragment/SourceSettingFragment;->settingAdapter:Lcom/today/player/ui/adapter/SourceSettingAdapter;

    iget p1, p1, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener$C0034a;->a:I

    invoke-virtual {v0, p1}, Lcom/today/player/ui/adapter/SourceSettingAdapter;->notifyItemChanged(I)V

    .line 77
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$b;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {p1, v0}, Lcom/today/player/api/ApiConfig;->setSourceBean(Lcom/today/player/bean/PlayerModel$SourcesDTO;)V

    .line 78
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$b;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    invoke-virtual {p1}, Lcom/today/player/ui/dialog/SourceSettingDialog;->b()V

    .line 79
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$b;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    invoke-virtual {p1}, Lcom/today/player/ui/dialog/SourceSettingDialog;->a()V

    return-void

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$b;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-virtual {p1}, Lcom/today/player/ui/fragment/SourceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u8bf7\u5148\u542f\u7528\u8be5\u6570\u636e\u6e90!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

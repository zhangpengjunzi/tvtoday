.class public Lcom/today/player/ui/dialog/SourceSettingDialog$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/dialog/SourceSettingDialog;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$c;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 91
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 92
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$c;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isHome()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$c;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-virtual {p1}, Lcom/today/player/ui/fragment/SourceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "\u9996\u9875\u6570\u636e\u6e90\u4e0d\u53ef\u5220\u9664!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$c;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isInternal()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$c;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-virtual {p1}, Lcom/today/player/ui/fragment/SourceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "\u5185\u7f6e\u6570\u636e\u6e90\u4e0d\u53ef\u5220\u9664!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$c;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getLocal()Lcom/today/player/cache/Local;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 99
    invoke-static {p1}, Lcom/today/player/cache/RoomDataManger;->deleteLocalSource(Lcom/today/player/cache/Local;)V

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$c;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getState()Lcom/today/player/cache/SourceState;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 103
    invoke-static {p1}, Lcom/today/player/cache/RoomDataManger;->deleteSourceState(Lcom/today/player/cache/SourceState;)V

    .line 105
    :cond_3
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$c;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/SourceSettingDialog;->d:Lcom/today/player/ui/dialog/SourceSettingDialog$e;

    check-cast p1, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener$C0034a;

    .line 106
    iget-object v0, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$c;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/SourceSettingDialog;->a:Lcom/today/player/ui/fragment/SourceSettingFragment;

    iget-object v0, v0, Lcom/today/player/ui/fragment/SourceSettingFragment;->settingAdapter:Lcom/today/player/ui/adapter/SourceSettingAdapter;

    iget p1, p1, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener$C0034a;->a:I

    invoke-virtual {v0, p1}, Lcom/today/player/ui/adapter/SourceSettingAdapter;->remove(I)V

    .line 107
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/api/ApiConfig;->getSourceBeanList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$c;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    iget-object p1, p0, Lcom/today/player/ui/dialog/SourceSettingDialog$c;->this$0:Lcom/today/player/ui/dialog/SourceSettingDialog;

    invoke-virtual {p1}, Lcom/today/player/ui/dialog/SourceSettingDialog;->a()V

    :goto_0
    return-void
.end method

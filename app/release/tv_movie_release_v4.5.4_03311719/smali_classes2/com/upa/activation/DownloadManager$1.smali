.class Lcom/upa/activation/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/upa/im/YsRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/activation/DownloadManager;->update(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upa/activation/DownloadManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/upa/activation/DownloadManager;Landroid/content/Context;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/upa/activation/DownloadManager$1;->this$0:Lcom/upa/activation/DownloadManager;

    iput-object p2, p0, Lcom/upa/activation/DownloadManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public keep()V
    .locals 3

    .line 100
    invoke-static {}, Lcom/upa/source/HintSource;->getInstance()Lcom/upa/source/HintSource;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/upa/source/HintSource;->setDownLoadState(I)V

    .line 101
    iget-object v0, p0, Lcom/upa/activation/DownloadManager$1;->val$context:Landroid/content/Context;

    const-string v2, "\u5df2\u662f\u6700\u65b0\u7248\u672c"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    invoke-static {}, Lcom/upa/activation/ActivationManager;->getInstance()Lcom/upa/activation/ActivationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/upa/activation/DownloadManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/upa/activation/ActivationManager;->isActivation(Landroid/content/Context;)V

    .line 105
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/today/player/event/TopStateEvent;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/today/player/event/TopStateEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public success(Lcom/upa/UpdateModel;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/upa/activation/DownloadManager$1;->val$context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/upa/activation/DownloadManager$1;->this$0:Lcom/upa/activation/DownloadManager;

    invoke-static {v0}, Lcom/upa/activation/DownloadManager;->access$000(Lcom/upa/activation/DownloadManager;)Lcom/upa/view/YsUpdateView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/upa/activation/DownloadManager$1;->this$0:Lcom/upa/activation/DownloadManager;

    new-instance v1, Lcom/upa/view/YsUpdateView;

    iget-object v2, p0, Lcom/upa/activation/DownloadManager$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/upa/view/YsUpdateView;-><init>(Landroid/content/Context;Lcom/upa/UpdateModel;)V

    invoke-static {v0, v1}, Lcom/upa/activation/DownloadManager;->access$002(Lcom/upa/activation/DownloadManager;Lcom/upa/view/YsUpdateView;)Lcom/upa/view/YsUpdateView;

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/upa/activation/DownloadManager$1;->this$0:Lcom/upa/activation/DownloadManager;

    invoke-static {p1}, Lcom/upa/activation/DownloadManager;->access$000(Lcom/upa/activation/DownloadManager;)Lcom/upa/view/YsUpdateView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/upa/view/YsUpdateView;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/upa/activation/DownloadManager$1;->this$0:Lcom/upa/activation/DownloadManager;

    invoke-static {p1}, Lcom/upa/activation/DownloadManager;->access$000(Lcom/upa/activation/DownloadManager;)Lcom/upa/view/YsUpdateView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/upa/view/YsUpdateView;->show()V

    :cond_1
    return-void
.end method

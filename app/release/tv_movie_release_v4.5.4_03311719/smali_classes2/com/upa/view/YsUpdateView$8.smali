.class Lcom/upa/view/YsUpdateView$8;
.super Ljava/lang/Object;
.source "YsUpdateView.java"

# interfaces
.implements Lcom/upa/im/IDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/view/YsUpdateView;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upa/view/YsUpdateView;


# direct methods
.method constructor <init>(Lcom/upa/view/YsUpdateView;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/upa/view/YsUpdateView$8;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Object;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/upa/view/YsUpdateView$8;->this$0:Lcom/upa/view/YsUpdateView;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/upa/view/YsUpdateView;->access$900(Lcom/upa/view/YsUpdateView;Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/lang/Object;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/upa/view/YsUpdateView$8;->this$0:Lcom/upa/view/YsUpdateView;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/upa/view/YsUpdateView;->access$900(Lcom/upa/view/YsUpdateView;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadProgress(DD)V
    .locals 0

    .line 230
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$8;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-virtual {p1}, Lcom/upa/view/YsUpdateView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    double-to-float p1, p3

    .line 232
    iget-object p2, p0, Lcom/upa/view/YsUpdateView$8;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p2}, Lcom/upa/view/YsUpdateView;->access$600(Lcom/upa/view/YsUpdateView;)Lcom/upa/view/CustomProgressBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/upa/view/CustomProgressBar;->setViewProgress(F)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/upa/view/YsUpdateView$8;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {v0}, Lcom/upa/view/YsUpdateView;->access$600(Lcom/upa/view/YsUpdateView;)Lcom/upa/view/CustomProgressBar;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/upa/view/CustomProgressBar;->setState(I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 199
    :try_start_0
    iget-object p2, p0, Lcom/upa/view/YsUpdateView$8;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p2}, Lcom/upa/view/YsUpdateView;->access$600(Lcom/upa/view/YsUpdateView;)Lcom/upa/view/CustomProgressBar;

    move-result-object p2

    const/16 v0, 0x68

    invoke-virtual {p2, v0}, Lcom/upa/view/CustomProgressBar;->setState(I)V

    .line 200
    iget-object p2, p0, Lcom/upa/view/YsUpdateView$8;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p2}, Lcom/upa/view/YsUpdateView;->access$600(Lcom/upa/view/YsUpdateView;)Lcom/upa/view/CustomProgressBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/upa/view/CustomProgressBar;->requestFocus()Z

    .line 201
    iget-object p2, p0, Lcom/upa/view/YsUpdateView$8;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p2}, Lcom/upa/view/YsUpdateView;->access$400(Lcom/upa/view/YsUpdateView;)Landroid/widget/TextView;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    check-cast p1, Ljava/io/File;

    .line 204
    iget-object p2, p0, Lcom/upa/view/YsUpdateView$8;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/upa/view/YsUpdateView;->access$802(Lcom/upa/view/YsUpdateView;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$8;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$100(Lcom/upa/view/YsUpdateView;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/upa/view/YsUpdateView$8;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p2}, Lcom/upa/view/YsUpdateView;->access$800(Lcom/upa/view/YsUpdateView;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/upa/tool/Tools;->installApk(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 208
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

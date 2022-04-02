.class Lcom/upa/view/YsUpdateView$1;
.super Ljava/lang/Object;
.source "YsUpdateView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/view/YsUpdateView;->onCreate(Landroid/os/Bundle;)V
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

    .line 75
    iput-object p1, p0, Lcom/upa/view/YsUpdateView$1;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$1;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$000(Lcom/upa/view/YsUpdateView;)Lcom/upa/UpdateModel;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/upa/view/YsUpdateView$1;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$000(Lcom/upa/view/YsUpdateView;)Lcom/upa/UpdateModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/upa/UpdateModel;->getForce()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/upa/view/YsUpdateView$1;->this$0:Lcom/upa/view/YsUpdateView;

    invoke-static {p1}, Lcom/upa/view/YsUpdateView;->access$100(Lcom/upa/view/YsUpdateView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/upa/tool/Tools;->exitApp(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.class Lcom/upa/activation/ActivationView$1;
.super Ljava/lang/Object;
.source "ActivationView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/activation/ActivationView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upa/activation/ActivationView;


# direct methods
.method constructor <init>(Lcom/upa/activation/ActivationView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/upa/activation/ActivationView$1;->this$0:Lcom/upa/activation/ActivationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/upa/activation/ActivationView$1;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p1}, Lcom/upa/activation/ActivationView;->access$000(Lcom/upa/activation/ActivationView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/upa/activation/ActivationView$1;->this$0:Lcom/upa/activation/ActivationView;

    invoke-static {p1}, Lcom/upa/activation/ActivationView;->access$100(Lcom/upa/activation/ActivationView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/upa/tool/Tools;->exitApp(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

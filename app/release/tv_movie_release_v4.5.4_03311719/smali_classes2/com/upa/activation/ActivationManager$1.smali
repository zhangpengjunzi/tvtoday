.class Lcom/upa/activation/ActivationManager$1;
.super Ljava/lang/Object;
.source "ActivationManager.java"

# interfaces
.implements Lcom/upa/im/ActivationHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/activation/ActivationManager;->isActivation(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upa/activation/ActivationManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/upa/activation/ActivationManager;Landroid/content/Context;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/upa/activation/ActivationManager$1;->this$0:Lcom/upa/activation/ActivationManager;

    iput-object p2, p0, Lcom/upa/activation/ActivationManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public active(I)V
    .locals 2

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 34
    iget-object p1, p0, Lcom/upa/activation/ActivationManager$1;->this$0:Lcom/upa/activation/ActivationManager;

    invoke-static {p1}, Lcom/upa/activation/ActivationManager;->access$000(Lcom/upa/activation/ActivationManager;)Lcom/upa/activation/ActivationView;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/upa/activation/ActivationManager$1;->val$context:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/upa/activation/ActivationManager$1;->this$0:Lcom/upa/activation/ActivationManager;

    new-instance v0, Lcom/upa/activation/ActivationView;

    iget-object v1, p0, Lcom/upa/activation/ActivationManager$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/upa/activation/ActivationView;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/upa/activation/ActivationManager;->access$002(Lcom/upa/activation/ActivationManager;Lcom/upa/activation/ActivationView;)Lcom/upa/activation/ActivationView;

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/upa/activation/ActivationManager$1;->this$0:Lcom/upa/activation/ActivationManager;

    invoke-static {p1}, Lcom/upa/activation/ActivationManager;->access$000(Lcom/upa/activation/ActivationManager;)Lcom/upa/activation/ActivationView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/upa/activation/ActivationManager$1;->this$0:Lcom/upa/activation/ActivationManager;

    invoke-static {p1}, Lcom/upa/activation/ActivationManager;->access$000(Lcom/upa/activation/ActivationManager;)Lcom/upa/activation/ActivationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/upa/activation/ActivationView;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 38
    iget-object p1, p0, Lcom/upa/activation/ActivationManager$1;->this$0:Lcom/upa/activation/ActivationManager;

    invoke-static {p1}, Lcom/upa/activation/ActivationManager;->access$000(Lcom/upa/activation/ActivationManager;)Lcom/upa/activation/ActivationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/upa/activation/ActivationView;->show()V

    :cond_1
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

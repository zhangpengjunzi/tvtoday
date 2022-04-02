.class Lcom/today/player/ui/dialog/ModelDialog$1;
.super Ljava/lang/Object;
.source "ModelDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/dialog/ModelDialog;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/dialog/ModelDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/today/player/ui/dialog/ModelDialog;Landroid/content/Context;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/today/player/ui/dialog/ModelDialog$1;->this$0:Lcom/today/player/ui/dialog/ModelDialog;

    iput-object p2, p0, Lcom/today/player/ui/dialog/ModelDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 48
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 49
    iget-object p1, p0, Lcom/today/player/ui/dialog/ModelDialog$1;->this$0:Lcom/today/player/ui/dialog/ModelDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/ModelDialog;->access$000(Lcom/today/player/ui/dialog/ModelDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "password"

    .line 50
    invoke-static {v0}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/today/player/ui/dialog/ModelDialog$1;->this$0:Lcom/today/player/ui/dialog/ModelDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/ModelDialog;->access$100(Lcom/today/player/ui/dialog/ModelDialog;)Lcom/today/player/ui/dialog/ModelDialog$OnChangeModelListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/today/player/ui/dialog/ModelDialog$1;->this$0:Lcom/today/player/ui/dialog/ModelDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/ModelDialog;->access$100(Lcom/today/player/ui/dialog/ModelDialog;)Lcom/today/player/ui/dialog/ModelDialog$OnChangeModelListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/today/player/ui/dialog/ModelDialog$OnChangeModelListener;->onChangeModel()V

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/dialog/ModelDialog$1;->this$0:Lcom/today/player/ui/dialog/ModelDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/ModelDialog;->access$200(Lcom/today/player/ui/dialog/ModelDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/today/player/ui/dialog/ModelDialog$1;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "\u5bc6\u7801\u9519\u8bef"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

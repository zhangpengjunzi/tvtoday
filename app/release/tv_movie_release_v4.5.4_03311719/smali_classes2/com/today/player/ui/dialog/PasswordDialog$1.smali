.class Lcom/today/player/ui/dialog/PasswordDialog$1;
.super Ljava/lang/Object;
.source "PasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/dialog/PasswordDialog;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/dialog/PasswordDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/today/player/ui/dialog/PasswordDialog;Landroid/content/Context;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/today/player/ui/dialog/PasswordDialog$1;->this$0:Lcom/today/player/ui/dialog/PasswordDialog;

    iput-object p2, p0, Lcom/today/player/ui/dialog/PasswordDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 52
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 53
    iget-object p1, p0, Lcom/today/player/ui/dialog/PasswordDialog$1;->this$0:Lcom/today/player/ui/dialog/PasswordDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/PasswordDialog;->access$000(Lcom/today/player/ui/dialog/PasswordDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/today/player/ui/dialog/PasswordDialog$1;->this$0:Lcom/today/player/ui/dialog/PasswordDialog;

    invoke-static {v0}, Lcom/today/player/ui/dialog/PasswordDialog;->access$100(Lcom/today/player/ui/dialog/PasswordDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/today/player/ui/dialog/PasswordDialog$1;->this$0:Lcom/today/player/ui/dialog/PasswordDialog;

    invoke-static {v1}, Lcom/today/player/ui/dialog/PasswordDialog;->access$200(Lcom/today/player/ui/dialog/PasswordDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    .line 56
    invoke-static {v2}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 57
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    iget-object p1, p0, Lcom/today/player/ui/dialog/PasswordDialog$1;->val$context:Landroid/content/Context;

    const-string v0, "\u65b0\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    .line 63
    iget-object p1, p0, Lcom/today/player/ui/dialog/PasswordDialog$1;->val$context:Landroid/content/Context;

    const-string v0, "\u5bc6\u7801\u5fc5\u987b\u4e3a8\u4f4d"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 66
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 67
    iget-object p1, p0, Lcom/today/player/ui/dialog/PasswordDialog$1;->val$context:Landroid/content/Context;

    const-string v0, "\u4e0d\u80fd\u548c\u539f\u5bc6\u7801\u4e00\u81f4"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 70
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 71
    iget-object p1, p0, Lcom/today/player/ui/dialog/PasswordDialog$1;->val$context:Landroid/content/Context;

    const-string v0, "\u4e24\u6b21\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 74
    :cond_3
    invoke-static {v2, v0}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lcom/today/player/ui/dialog/PasswordDialog$1;->val$context:Landroid/content/Context;

    const-string v0, "\u5bc6\u7801\u4fee\u6539\u6210\u529f"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 76
    iget-object p1, p0, Lcom/today/player/ui/dialog/PasswordDialog$1;->this$0:Lcom/today/player/ui/dialog/PasswordDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/PasswordDialog;->access$300(Lcom/today/player/ui/dialog/PasswordDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 78
    :cond_4
    iget-object p1, p0, Lcom/today/player/ui/dialog/PasswordDialog$1;->val$context:Landroid/content/Context;

    const-string v0, "\u539f\u5bc6\u7801\u9519\u8bef"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

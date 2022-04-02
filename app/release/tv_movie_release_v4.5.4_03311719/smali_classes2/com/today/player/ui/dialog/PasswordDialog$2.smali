.class Lcom/today/player/ui/dialog/PasswordDialog$2;
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


# direct methods
.method constructor <init>(Lcom/today/player/ui/dialog/PasswordDialog;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/today/player/ui/dialog/PasswordDialog$2;->this$0:Lcom/today/player/ui/dialog/PasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/today/player/ui/dialog/PasswordDialog$2;->this$0:Lcom/today/player/ui/dialog/PasswordDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/PasswordDialog;->access$300(Lcom/today/player/ui/dialog/PasswordDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

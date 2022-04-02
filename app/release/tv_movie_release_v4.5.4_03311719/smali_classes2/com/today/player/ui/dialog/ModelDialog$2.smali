.class Lcom/today/player/ui/dialog/ModelDialog$2;
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


# direct methods
.method constructor <init>(Lcom/today/player/ui/dialog/ModelDialog;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/today/player/ui/dialog/ModelDialog$2;->this$0:Lcom/today/player/ui/dialog/ModelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/today/player/ui/dialog/ModelDialog$2;->this$0:Lcom/today/player/ui/dialog/ModelDialog;

    invoke-static {p1}, Lcom/today/player/ui/dialog/ModelDialog;->access$200(Lcom/today/player/ui/dialog/ModelDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

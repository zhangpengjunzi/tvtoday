.class Lcom/upa/tool/Ds$1;
.super Ljava/lang/Object;
.source "Ds.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/tool/Ds;->a(Landroid/content/Context;)Lcom/upa/tool/Ds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upa/tool/Ds;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/upa/tool/Ds;Landroid/content/Context;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/upa/tool/Ds$1;->this$0:Lcom/upa/tool/Ds;

    iput-object p2, p0, Lcom/upa/tool/Ds$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/upa/tool/Ds$1;->val$context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

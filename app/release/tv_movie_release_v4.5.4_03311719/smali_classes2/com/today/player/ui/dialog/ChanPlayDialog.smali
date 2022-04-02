.class public Lcom/today/player/ui/dialog/ChanPlayDialog;
.super Ljava/lang/Object;
.source "ChanPlayDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/dialog/ChanPlayDialog$a;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/app/Dialog;

.field public c:Lcom/today/player/ui/dialog/ChanPlayDialog$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/today/player/ui/dialog/ChanPlayDialog;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/today/player/ui/dialog/ChanPlayDialog;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/today/player/ui/dialog/ChanPlayDialog;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

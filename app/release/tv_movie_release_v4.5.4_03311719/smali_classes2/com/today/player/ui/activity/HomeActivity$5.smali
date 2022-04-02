.class Lcom/today/player/ui/activity/HomeActivity$5;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/HomeActivity;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$5;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 200
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_1

    const/16 p3, 0x14

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    .line 202
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$5;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$200(Lcom/today/player/ui/activity/HomeActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$5;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$200(Lcom/today/player/ui/activity/HomeActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/today/player/ui/activity/HomeActivity$5;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p2}, Lcom/today/player/ui/activity/HomeActivity;->access$300(Lcom/today/player/ui/activity/HomeActivity;)I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 203
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$5;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$200(Lcom/today/player/ui/activity/HomeActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v0

    :cond_0
    const/16 p3, 0x15

    if-ne p2, p3, :cond_1

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0802a4

    if-ne p1, p2, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

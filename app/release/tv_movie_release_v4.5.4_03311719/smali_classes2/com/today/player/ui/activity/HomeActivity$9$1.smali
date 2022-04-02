.class Lcom/today/player/ui/activity/HomeActivity$9$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/HomeActivity$9;->fail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/activity/HomeActivity$9;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/HomeActivity$9;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$9$1;->this$1:Lcom/today/player/ui/activity/HomeActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity$9$1;->this$1:Lcom/today/player/ui/activity/HomeActivity$9;

    iget-object v0, v0, Lcom/today/player/ui/activity/HomeActivity$9;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    const-string v1, "\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u8bbe\u7f6e"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

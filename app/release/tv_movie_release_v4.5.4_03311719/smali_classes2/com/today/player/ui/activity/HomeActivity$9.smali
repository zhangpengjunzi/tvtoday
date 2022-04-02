.class Lcom/today/player/ui/activity/HomeActivity$9;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/upa/source/ISourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/HomeActivity;->loadSource()V
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

    .line 436
    iput-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$9;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity$9;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    new-instance v1, Lcom/today/player/ui/activity/HomeActivity$9$1;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/HomeActivity$9$1;-><init>(Lcom/today/player/ui/activity/HomeActivity$9;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/activity/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSourceSuccess([B)V
    .locals 1

    if-eqz p1, :cond_0

    .line 440
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/upa/source/Encrypts;->decrypt([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 441
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 442
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/today/player/api/ApiConfig;->loadSource(Ljava/lang/String;)V

    .line 443
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$9;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$1600(Lcom/today/player/ui/activity/HomeActivity;)Lcom/today/player/viewmodel/SourceViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/viewmodel/SourceViewModel;->getSort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

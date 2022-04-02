.class Lcom/today/player/ui/activity/SplashActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/SplashActivity;->fade()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/SplashActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/today/player/ui/activity/SplashActivity$1;->this$0:Lcom/today/player/ui/activity/SplashActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 85
    iget-object p1, p0, Lcom/today/player/ui/activity/SplashActivity$1;->this$0:Lcom/today/player/ui/activity/SplashActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/SplashActivity;->access$000(Lcom/today/player/ui/activity/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/today/player/ui/activity/SplashActivity;->access$100(Lcom/today/player/ui/activity/SplashActivity;Landroid/view/View;)V

    .line 86
    iget-object p1, p0, Lcom/today/player/ui/activity/SplashActivity$1;->this$0:Lcom/today/player/ui/activity/SplashActivity;

    invoke-virtual {p1}, Lcom/today/player/ui/activity/SplashActivity;->start()V

    return-void
.end method

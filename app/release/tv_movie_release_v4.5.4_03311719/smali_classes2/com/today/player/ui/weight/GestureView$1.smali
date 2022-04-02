.class Lcom/today/player/ui/weight/GestureView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/weight/GestureView;->onStopSlide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/weight/GestureView;


# direct methods
.method constructor <init>(Lcom/today/player/ui/weight/GestureView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/today/player/ui/weight/GestureView$1;->this$0:Lcom/today/player/ui/weight/GestureView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 99
    iget-object p1, p0, Lcom/today/player/ui/weight/GestureView$1;->this$0:Lcom/today/player/ui/weight/GestureView;

    invoke-static {p1}, Lcom/today/player/ui/weight/GestureView;->access$000(Lcom/today/player/ui/weight/GestureView;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

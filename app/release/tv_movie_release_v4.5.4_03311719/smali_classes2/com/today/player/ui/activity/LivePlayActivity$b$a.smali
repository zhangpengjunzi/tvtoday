.class public Lcom/today/player/ui/activity/LivePlayActivity$b$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LivePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/activity/LivePlayActivity$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/activity/LivePlayActivity$b;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/activity/LivePlayActivity$b;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity$b$a;->this$1:Lcom/today/player/ui/activity/LivePlayActivity$b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 74
    iget-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity$b$a;->this$1:Lcom/today/player/ui/activity/LivePlayActivity$b;

    iget-object p1, p1, Lcom/today/player/ui/activity/LivePlayActivity$b;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    iget-object p1, p1, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity$b$a;->this$1:Lcom/today/player/ui/activity/LivePlayActivity$b;

    iget-object p1, p1, Lcom/today/player/ui/activity/LivePlayActivity$b;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    iget-object p1, p1, Lcom/today/player/ui/activity/LivePlayActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

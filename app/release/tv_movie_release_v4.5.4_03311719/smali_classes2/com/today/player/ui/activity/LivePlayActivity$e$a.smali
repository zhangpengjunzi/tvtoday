.class public Lcom/today/player/ui/activity/LivePlayActivity$e$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LivePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/activity/LivePlayActivity$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/activity/LivePlayActivity$e;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/activity/LivePlayActivity$e;Lcom/today/player/ui/activity/LivePlayActivity$e;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity$e$a;->this$1:Lcom/today/player/ui/activity/LivePlayActivity$e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

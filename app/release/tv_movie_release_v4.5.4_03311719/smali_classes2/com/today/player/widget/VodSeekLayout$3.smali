.class Lcom/today/player/widget/VodSeekLayout$3;
.super Ljava/lang/Object;
.source "VodSeekLayout.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/widget/VodSeekLayout;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/widget/VodSeekLayout;


# direct methods
.method constructor <init>(Lcom/today/player/widget/VodSeekLayout;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/today/player/widget/VodSeekLayout$3;->this$0:Lcom/today/player/widget/VodSeekLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 87
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 88
    iget-object p1, p0, Lcom/today/player/widget/VodSeekLayout$3;->this$0:Lcom/today/player/widget/VodSeekLayout;

    invoke-virtual {p1}, Lcom/today/player/widget/VodSeekLayout;->start()V

    const/16 p1, 0x15

    if-eq p2, p1, :cond_0

    const/16 p1, 0x16

    if-eq p2, p1, :cond_0

    const/16 p1, 0x13

    if-eq p2, p1, :cond_0

    const/16 p1, 0x14

    if-ne p2, p1, :cond_2

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/today/player/widget/VodSeekLayout$3;->this$0:Lcom/today/player/widget/VodSeekLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/today/player/widget/VodSeekLayout;->access$202(Lcom/today/player/widget/VodSeekLayout;Z)Z

    .line 91
    iget-object p1, p0, Lcom/today/player/widget/VodSeekLayout$3;->this$0:Lcom/today/player/widget/VodSeekLayout;

    invoke-static {p1}, Lcom/today/player/widget/VodSeekLayout;->access$000(Lcom/today/player/widget/VodSeekLayout;)Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/today/player/widget/VodSeekLayout$3;->this$0:Lcom/today/player/widget/VodSeekLayout;

    invoke-static {p1}, Lcom/today/player/widget/VodSeekLayout;->access$000(Lcom/today/player/widget/VodSeekLayout;)Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;

    move-result-object p1

    iget-object p3, p0, Lcom/today/player/widget/VodSeekLayout$3;->this$0:Lcom/today/player/widget/VodSeekLayout;

    invoke-static {p3}, Lcom/today/player/widget/VodSeekLayout;->access$100(Lcom/today/player/widget/VodSeekLayout;)Lcom/tv/widget/VodSeekBar;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tv/widget/VodSeekBar;->getProgress()F

    move-result p3

    float-to-int p3, p3

    invoke-interface {p1, p2, p3}, Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;->onSeekState(II)V

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/today/player/widget/VodSeekLayout$3;->this$0:Lcom/today/player/widget/VodSeekLayout;

    invoke-static {p1}, Lcom/today/player/widget/VodSeekLayout;->access$300(Lcom/today/player/widget/VodSeekLayout;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/today/player/widget/VodSeekLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 95
    iget-object p1, p0, Lcom/today/player/widget/VodSeekLayout$3;->this$0:Lcom/today/player/widget/VodSeekLayout;

    invoke-static {p1}, Lcom/today/player/widget/VodSeekLayout;->access$300(Lcom/today/player/widget/VodSeekLayout;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Lcom/today/player/widget/VodSeekLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

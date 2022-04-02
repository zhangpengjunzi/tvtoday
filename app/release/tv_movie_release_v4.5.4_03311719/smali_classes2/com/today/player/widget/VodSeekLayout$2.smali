.class Lcom/today/player/widget/VodSeekLayout$2;
.super Ljava/lang/Object;
.source "VodSeekLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/widget/VodSeekLayout;
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

    .line 50
    iput-object p1, p0, Lcom/today/player/widget/VodSeekLayout$2;->this$0:Lcom/today/player/widget/VodSeekLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout$2;->this$0:Lcom/today/player/widget/VodSeekLayout;

    invoke-static {v0}, Lcom/today/player/widget/VodSeekLayout;->access$000(Lcom/today/player/widget/VodSeekLayout;)Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout$2;->this$0:Lcom/today/player/widget/VodSeekLayout;

    invoke-static {v0}, Lcom/today/player/widget/VodSeekLayout;->access$000(Lcom/today/player/widget/VodSeekLayout;)Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/today/player/widget/VodSeekLayout$2;->this$0:Lcom/today/player/widget/VodSeekLayout;

    invoke-static {v2}, Lcom/today/player/widget/VodSeekLayout;->access$100(Lcom/today/player/widget/VodSeekLayout;)Lcom/tv/widget/VodSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tv/widget/VodSeekBar;->getProgress()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;->onSeekState(II)V

    :cond_0
    return-void
.end method

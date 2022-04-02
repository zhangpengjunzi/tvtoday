.class Lcom/today/player/widget/VodSeekLayout$1;
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

    .line 41
    iput-object p1, p0, Lcom/today/player/widget/VodSeekLayout$1;->this$0:Lcom/today/player/widget/VodSeekLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout$1;->this$0:Lcom/today/player/widget/VodSeekLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/today/player/widget/VodSeekLayout;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout$1;->this$0:Lcom/today/player/widget/VodSeekLayout;

    invoke-static {v0}, Lcom/today/player/widget/VodSeekLayout;->access$000(Lcom/today/player/widget/VodSeekLayout;)Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout$1;->this$0:Lcom/today/player/widget/VodSeekLayout;

    invoke-static {v0}, Lcom/today/player/widget/VodSeekLayout;->access$000(Lcom/today/player/widget/VodSeekLayout;)Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;->onShowState(Z)V

    :cond_0
    return-void
.end method

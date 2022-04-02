.class public Lcom/today/player/ui/activity/LivePlayActivity$d;
.super Ljava/lang/Object;
.source "LivePlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/activity/LivePlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/LivePlayActivity;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/activity/LivePlayActivity;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity$d;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity$d;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    iget-object v0, v0, Lcom/today/player/ui/activity/LivePlayActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity$d;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    invoke-virtual {v0}, Lcom/today/player/ui/activity/LivePlayActivity;->e()V

    return-void
.end method

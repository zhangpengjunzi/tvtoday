.class Lcom/today/player/ui/activity/HistoryActivity$5;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/activity/HistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/HistoryActivity;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$5;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity$5;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/HistoryActivity;->access$200(Lcom/today/player/ui/activity/HistoryActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity$5;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/today/player/ui/activity/HistoryActivity;->access$202(Lcom/today/player/ui/activity/HistoryActivity;Z)Z

    .line 193
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity$5;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/HistoryActivity;->access$000(Lcom/today/player/ui/activity/HistoryActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/today/player/ui/activity/HistoryActivity$5;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {v1}, Lcom/today/player/ui/activity/HistoryActivity;->access$100(Lcom/today/player/ui/activity/HistoryActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/today/player/ui/activity/HistoryActivity$5;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/HistoryActivity;->access$000(Lcom/today/player/ui/activity/HistoryActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/today/player/ui/activity/HistoryActivity;->access$102(Lcom/today/player/ui/activity/HistoryActivity;I)I

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultSelected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/today/player/ui/activity/HistoryActivity$5;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {v1}, Lcom/today/player/ui/activity/HistoryActivity;->access$100(Lcom/today/player/ui/activity/HistoryActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/today/player/util/L;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

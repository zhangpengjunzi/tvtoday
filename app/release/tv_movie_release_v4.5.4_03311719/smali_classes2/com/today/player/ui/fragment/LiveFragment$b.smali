.class public Lcom/today/player/ui/fragment/LiveFragment$b;
.super Ljava/lang/Object;
.source "LiveFragment.java"

# interfaces
.implements Lcom/today/player/receiver/CustomWebReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/fragment/LiveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/fragment/LiveFragment;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/fragment/LiveFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/today/player/ui/fragment/LiveFragment$b;->this$0:Lcom/today/player/ui/fragment/LiveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 144
    sget-object v0, Lcom/today/player/receiver/CustomWebReceiver;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/today/player/ui/fragment/LiveFragment$b;->this$0:Lcom/today/player/ui/fragment/LiveFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/LiveFragment;->access$500(Lcom/today/player/ui/fragment/LiveFragment;)Lcom/today/player/ui/adapter/LiveParseAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/today/player/ui/fragment/LiveFragment$b;->this$0:Lcom/today/player/ui/fragment/LiveFragment;

    invoke-static {v0}, Lcom/today/player/ui/fragment/LiveFragment;->access$500(Lcom/today/player/ui/fragment/LiveFragment;)Lcom/today/player/ui/adapter/LiveParseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/ui/adapter/LiveParseAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    check-cast p2, Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-virtual {p1, v0, p2}, Lcom/today/player/ui/adapter/LiveParseAdapter;->addData(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

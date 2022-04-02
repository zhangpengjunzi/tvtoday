.class Lcom/today/player/ui/activity/DetailActivity$6;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/DetailActivity;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/today/player/bean/AbsXml;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/DetailActivity;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$6;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/today/player/bean/AbsXml;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$6;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0, p1}, Lcom/today/player/ui/activity/DetailActivity;->access$3300(Lcom/today/player/ui/activity/DetailActivity;Lcom/today/player/bean/AbsXml;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 279
    check-cast p1, Lcom/today/player/bean/AbsXml;

    invoke-virtual {p0, p1}, Lcom/today/player/ui/activity/DetailActivity$6;->onChanged(Lcom/today/player/bean/AbsXml;)V

    return-void
.end method

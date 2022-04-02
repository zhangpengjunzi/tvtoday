.class Lcom/today/player/ui/activity/SettingActivity$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/SettingActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/SettingActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/today/player/ui/activity/SettingActivity$2;->this$0:Lcom/today/player/ui/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onItemPreSelected(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 94
    iget-object p1, p0, Lcom/today/player/ui/activity/SettingActivity$2;->this$0:Lcom/today/player/ui/activity/SettingActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/SettingActivity;->access$300(Lcom/today/player/ui/activity/SettingActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0802aa

    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 96
    iget-object p2, p0, Lcom/today/player/ui/activity/SettingActivity$2;->this$0:Lcom/today/player/ui/activity/SettingActivity;

    invoke-virtual {p2}, Lcom/today/player/ui/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050040

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public onItemSelected(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;Landroid/view/View;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 104
    iget-object p1, p0, Lcom/today/player/ui/activity/SettingActivity$2;->this$0:Lcom/today/player/ui/activity/SettingActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/today/player/ui/activity/SettingActivity;->access$402(Lcom/today/player/ui/activity/SettingActivity;Z)Z

    .line 105
    iget-object p1, p0, Lcom/today/player/ui/activity/SettingActivity$2;->this$0:Lcom/today/player/ui/activity/SettingActivity;

    invoke-static {p1, p3}, Lcom/today/player/ui/activity/SettingActivity;->access$002(Lcom/today/player/ui/activity/SettingActivity;I)I

    const p1, 0x7f0802aa

    .line 106
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, -0x1

    .line 107
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

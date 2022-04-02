.class Lcom/today/player/ui/activity/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/activity/SettingActivity;
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

    .line 141
    iput-object p1, p0, Lcom/today/player/ui/activity/SettingActivity$3;->this$0:Lcom/today/player/ui/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity$3;->this$0:Lcom/today/player/ui/activity/SettingActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/SettingActivity;->access$400(Lcom/today/player/ui/activity/SettingActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity$3;->this$0:Lcom/today/player/ui/activity/SettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/today/player/ui/activity/SettingActivity;->access$402(Lcom/today/player/ui/activity/SettingActivity;Z)Z

    .line 146
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity$3;->this$0:Lcom/today/player/ui/activity/SettingActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/SettingActivity;->access$000(Lcom/today/player/ui/activity/SettingActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/today/player/ui/activity/SettingActivity$3;->this$0:Lcom/today/player/ui/activity/SettingActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/SettingActivity;->access$100(Lcom/today/player/ui/activity/SettingActivity;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 147
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity$3;->this$0:Lcom/today/player/ui/activity/SettingActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/SettingActivity;->access$000(Lcom/today/player/ui/activity/SettingActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/today/player/ui/activity/SettingActivity;->access$102(Lcom/today/player/ui/activity/SettingActivity;I)I

    .line 148
    iget-object v0, p0, Lcom/today/player/ui/activity/SettingActivity$3;->this$0:Lcom/today/player/ui/activity/SettingActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/SettingActivity;->access$200(Lcom/today/player/ui/activity/SettingActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v2, p0, Lcom/today/player/ui/activity/SettingActivity$3;->this$0:Lcom/today/player/ui/activity/SettingActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/SettingActivity;->access$000(Lcom/today/player/ui/activity/SettingActivity;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

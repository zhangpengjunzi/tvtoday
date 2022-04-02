.class public Lcom/today/player/util/ChannelUtil;
.super Ljava/lang/Object;
.source "ChannelUtil.java"


# static fields
.field public static final BASE_CHANNEL:Ljava/lang/String; = "jrys_gp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBatteryIsTV()Z
    .locals 6

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "status"

    const/4 v3, -0x1

    .line 76
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v4, "plugged"

    .line 79
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jrys_gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/today/player/util/ChannelUtil;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceType()Ljava/lang/String;
    .locals 4

    .line 29
    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 30
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "_TV"

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/today/player/util/ChannelUtil;->checkBatteryIsTV()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    .line 33
    :cond_0
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/today/player/util/ChannelUtil;->checkBatteryIsTV()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v3

    .line 36
    :cond_1
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/today/player/util/ChannelUtil;->checkBatteryIsTV()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v3

    .line 39
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_3

    const-string v0, "_Phone"

    return-object v0

    :cond_3
    return-object v3
.end method

.method public static getDeviceTypeNumber()Ljava/lang/String;
    .locals 4

    .line 49
    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 50
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "1"

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/today/player/util/ChannelUtil;->checkBatteryIsTV()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    .line 53
    :cond_0
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/today/player/util/ChannelUtil;->checkBatteryIsTV()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v3

    .line 56
    :cond_1
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/today/player/util/ChannelUtil;->checkBatteryIsTV()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v3

    .line 59
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_3

    const-string v0, "2"

    return-object v0

    :cond_3
    return-object v3
.end method

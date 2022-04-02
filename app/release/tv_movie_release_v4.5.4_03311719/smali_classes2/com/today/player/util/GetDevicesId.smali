.class public Lcom/today/player/util/GetDevicesId;
.super Ljava/lang/Object;
.source "GetDevicesId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/util/GetDevicesId$DevicesInit;
    }
.end annotation


# instance fields
.field private deviceId:Ljava/lang/String;

.field private fileUtils:Lcom/today/player/util/DeviceIdFileUtils;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/today/player/util/DeviceIdFileUtils;

    invoke-direct {v0}, Lcom/today/player/util/DeviceIdFileUtils;-><init>()V

    iput-object v0, p0, Lcom/today/player/util/GetDevicesId;->fileUtils:Lcom/today/player/util/DeviceIdFileUtils;

    return-void
.end method

.method synthetic constructor <init>(Lcom/today/player/util/GetDevicesId$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/today/player/util/GetDevicesId;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/today/player/util/GetDevicesId;
    .locals 1

    .line 15
    sget-object v0, Lcom/today/player/util/GetDevicesId$DevicesInit;->get:Lcom/today/player/util/GetDevicesId;

    return-object v0
.end method

.method private getUUID()Ljava/lang/String;
    .locals 4

    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MM"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/today/player/util/GetDevicesId;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/today/player/util/GetDevicesId;->writeId()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/today/player/util/GetDevicesId;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "phone"

    .line 71
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    return-object v0
.end method

.method public writeId()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/today/player/util/GetDevicesId;->fileUtils:Lcom/today/player/util/DeviceIdFileUtils;

    invoke-virtual {v0}, Lcom/today/player/util/DeviceIdFileUtils;->read()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/util/GetDevicesId;->deviceId:Ljava/lang/String;

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/today/player/util/GetDevicesId;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/util/GetDevicesId;->deviceId:Ljava/lang/String;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/today/player/util/GetDevicesId;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/today/player/util/GetDevicesId;->getUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/util/GetDevicesId;->deviceId:Ljava/lang/String;

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/today/player/util/GetDevicesId;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/today/player/util/GetDevicesId;->fileUtils:Lcom/today/player/util/DeviceIdFileUtils;

    iget-object v1, p0, Lcom/today/player/util/GetDevicesId;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/today/player/util/DeviceIdFileUtils;->write(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

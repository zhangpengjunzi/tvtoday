.class public Lcom/bt/jrsdk/manager/AdStartManager;
.super Ljava/lang/Object;
.source "AdStartManager.java"


# static fields
.field private static hasInit:Z

.field public static mContext:Landroid/content/Context;

.field public static uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 34
    sget-object v0, Lcom/bt/jrsdk/manager/AdStartManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getProcessName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const-string v0, "activity"

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 39
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 43
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 44
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_1

    .line 45
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 16
    sput-object p0, Lcom/bt/jrsdk/manager/AdStartManager;->mContext:Landroid/content/Context;

    .line 17
    sget-boolean v0, Lcom/bt/jrsdk/manager/AdStartManager;->hasInit:Z

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/bt/jrsdk/manager/AdStartManager;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 23
    sput-boolean v0, Lcom/bt/jrsdk/manager/AdStartManager;->hasInit:Z

    .line 24
    invoke-static {}, Lcom/bt/jrsdk/util/Utils;->getInstance()Lcom/bt/jrsdk/util/Utils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bt/jrsdk/util/Utils;->setContext(Landroid/content/Context;)V

    .line 25
    sput-object p1, Lcom/bt/jrsdk/manager/AdStartManager;->uid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.class public Lcom/today/player/server/ControlManager;
.super Ljava/lang/Object;
.source "ControlManager.java"


# static fields
.field private static instance:Lcom/today/player/server/ControlManager;

.field public static mContext:Landroid/content/Context;


# instance fields
.field private mServer:Lcom/today/player/server/RemoteServer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/today/player/server/ControlManager;->mServer:Lcom/today/player/server/RemoteServer;

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/server/ControlManager;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/today/player/server/ControlManager;->sendKeyCode(I)V

    return-void
.end method

.method public static get()Lcom/today/player/server/ControlManager;
    .locals 2

    .line 40
    sget-object v0, Lcom/today/player/server/ControlManager;->instance:Lcom/today/player/server/ControlManager;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/today/player/server/ControlManager;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/today/player/server/ControlManager;->instance:Lcom/today/player/server/ControlManager;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/today/player/server/ControlManager;

    invoke-direct {v1}, Lcom/today/player/server/ControlManager;-><init>()V

    sput-object v1, Lcom/today/player/server/ControlManager;->instance:Lcom/today/player/server/ControlManager;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/today/player/server/ControlManager;->instance:Lcom/today/player/server/ControlManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 51
    sput-object p0, Lcom/today/player/server/ControlManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private sendKeyCode(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 176
    invoke-static {}, Lcom/today/player/util/AppManager;->getInstance()Lcom/today/player/util/AppManager;

    move-result-object p1

    const-class v0, Lcom/today/player/ui/activity/HomeActivity;

    invoke-virtual {p1, v0}, Lcom/today/player/util/AppManager;->backActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input keyevent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/today/player/server/ShellUtils;->execCommand(Ljava/lang/String;Z)Lcom/today/player/server/ShellUtils$CommandResult;

    :goto_0
    return-void
.end method


# virtual methods
.method public startServer()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/today/player/server/ControlManager;->mServer:Lcom/today/player/server/RemoteServer;

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/today/player/server/RemoteServer;

    sget v1, Lcom/today/player/server/RemoteServer;->serverPort:I

    sget-object v2, Lcom/today/player/server/ControlManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/today/player/server/RemoteServer;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/today/player/server/ControlManager;->mServer:Lcom/today/player/server/RemoteServer;

    .line 60
    new-instance v1, Lcom/today/player/server/ControlManager$1;

    invoke-direct {v1, p0}, Lcom/today/player/server/ControlManager$1;-><init>(Lcom/today/player/server/ControlManager;)V

    invoke-virtual {v0, v1}, Lcom/today/player/server/RemoteServer;->setDataReceiver(Lcom/today/player/server/DataReceiver;)V

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/today/player/server/ControlManager;->mServer:Lcom/today/player/server/RemoteServer;

    invoke-virtual {v0}, Lcom/today/player/server/RemoteServer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 167
    sget v0, Lcom/today/player/server/RemoteServer;->serverPort:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/today/player/server/RemoteServer;->serverPort:I

    .line 168
    iget-object v0, p0, Lcom/today/player/server/ControlManager;->mServer:Lcom/today/player/server/RemoteServer;

    invoke-virtual {v0}, Lcom/today/player/server/RemoteServer;->stop()V

    .line 170
    sget v0, Lcom/today/player/server/RemoteServer;->serverPort:I

    const/16 v1, 0x270f

    if-lt v0, v1, :cond_0

    :goto_0
    return-void
.end method

.method public stopServer()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/today/player/server/ControlManager;->mServer:Lcom/today/player/server/RemoteServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/today/player/server/RemoteServer;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/today/player/server/ControlManager;->mServer:Lcom/today/player/server/RemoteServer;

    invoke-virtual {v0}, Lcom/today/player/server/RemoteServer;->stop()V

    :cond_0
    return-void
.end method

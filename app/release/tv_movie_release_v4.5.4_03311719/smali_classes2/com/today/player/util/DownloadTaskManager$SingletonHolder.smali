.class Lcom/today/player/util/DownloadTaskManager$SingletonHolder;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/util/DownloadTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/today/player/util/DownloadTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/today/player/util/DownloadTaskManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/today/player/util/DownloadTaskManager;-><init>(Lcom/today/player/util/DownloadTaskManager$1;)V

    sput-object v0, Lcom/today/player/util/DownloadTaskManager$SingletonHolder;->sInstance:Lcom/today/player/util/DownloadTaskManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/today/player/util/DownloadTaskManager;
    .locals 1

    .line 31
    sget-object v0, Lcom/today/player/util/DownloadTaskManager$SingletonHolder;->sInstance:Lcom/today/player/util/DownloadTaskManager;

    return-object v0
.end method

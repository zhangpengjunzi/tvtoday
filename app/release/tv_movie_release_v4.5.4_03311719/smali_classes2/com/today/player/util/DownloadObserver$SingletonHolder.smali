.class Lcom/today/player/util/DownloadObserver$SingletonHolder;
.super Ljava/lang/Object;
.source "DownloadObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/util/DownloadObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/today/player/util/DownloadObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/today/player/util/DownloadObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/today/player/util/DownloadObserver;-><init>(Lcom/today/player/util/DownloadObserver$1;)V

    sput-object v0, Lcom/today/player/util/DownloadObserver$SingletonHolder;->sInstance:Lcom/today/player/util/DownloadObserver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/today/player/util/DownloadObserver;
    .locals 1

    .line 62
    sget-object v0, Lcom/today/player/util/DownloadObserver$SingletonHolder;->sInstance:Lcom/today/player/util/DownloadObserver;

    return-object v0
.end method

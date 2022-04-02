.class Lcom/bt/jrsdk/httplib/HttpManager$SingletonHolder;
.super Ljava/lang/Object;
.source "HttpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bt/jrsdk/httplib/HttpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/bt/jrsdk/httplib/HttpManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/bt/jrsdk/httplib/HttpManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bt/jrsdk/httplib/HttpManager;-><init>(Lcom/bt/jrsdk/httplib/HttpManager$1;)V

    sput-object v0, Lcom/bt/jrsdk/httplib/HttpManager$SingletonHolder;->sInstance:Lcom/bt/jrsdk/httplib/HttpManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/bt/jrsdk/httplib/HttpManager;
    .locals 1

    .line 47
    sget-object v0, Lcom/bt/jrsdk/httplib/HttpManager$SingletonHolder;->sInstance:Lcom/bt/jrsdk/httplib/HttpManager;

    return-object v0
.end method

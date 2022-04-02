.class Lcom/today/player/http/AwesomeHttp$SingletonHolder;
.super Ljava/lang/Object;
.source "AwesomeHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/http/AwesomeHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/today/player/http/AwesomeHttp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/today/player/http/AwesomeHttp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/today/player/http/AwesomeHttp;-><init>(Lcom/today/player/http/AwesomeHttp$1;)V

    sput-object v0, Lcom/today/player/http/AwesomeHttp$SingletonHolder;->sInstance:Lcom/today/player/http/AwesomeHttp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/today/player/http/AwesomeHttp;
    .locals 1

    .line 53
    sget-object v0, Lcom/today/player/http/AwesomeHttp$SingletonHolder;->sInstance:Lcom/today/player/http/AwesomeHttp;

    return-object v0
.end method

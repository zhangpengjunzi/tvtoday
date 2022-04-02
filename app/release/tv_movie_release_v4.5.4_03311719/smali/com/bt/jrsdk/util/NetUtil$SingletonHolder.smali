.class Lcom/bt/jrsdk/util/NetUtil$SingletonHolder;
.super Ljava/lang/Object;
.source "NetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bt/jrsdk/util/NetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/bt/jrsdk/util/NetUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/bt/jrsdk/util/NetUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bt/jrsdk/util/NetUtil;-><init>(Lcom/bt/jrsdk/util/NetUtil$1;)V

    sput-object v0, Lcom/bt/jrsdk/util/NetUtil$SingletonHolder;->sInstance:Lcom/bt/jrsdk/util/NetUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/bt/jrsdk/util/NetUtil;
    .locals 1

    .line 33
    sget-object v0, Lcom/bt/jrsdk/util/NetUtil$SingletonHolder;->sInstance:Lcom/bt/jrsdk/util/NetUtil;

    return-object v0
.end method

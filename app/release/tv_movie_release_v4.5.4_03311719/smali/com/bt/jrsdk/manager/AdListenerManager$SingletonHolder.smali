.class Lcom/bt/jrsdk/manager/AdListenerManager$SingletonHolder;
.super Ljava/lang/Object;
.source "AdListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bt/jrsdk/manager/AdListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/bt/jrsdk/manager/AdListenerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/bt/jrsdk/manager/AdListenerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;-><init>(Lcom/bt/jrsdk/manager/AdListenerManager$1;)V

    sput-object v0, Lcom/bt/jrsdk/manager/AdListenerManager$SingletonHolder;->sInstance:Lcom/bt/jrsdk/manager/AdListenerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/bt/jrsdk/manager/AdListenerManager;
    .locals 1

    .line 23
    sget-object v0, Lcom/bt/jrsdk/manager/AdListenerManager$SingletonHolder;->sInstance:Lcom/bt/jrsdk/manager/AdListenerManager;

    return-object v0
.end method

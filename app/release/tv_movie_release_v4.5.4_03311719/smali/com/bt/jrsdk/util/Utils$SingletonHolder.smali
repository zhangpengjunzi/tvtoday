.class Lcom/bt/jrsdk/util/Utils$SingletonHolder;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bt/jrsdk/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/bt/jrsdk/util/Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/bt/jrsdk/util/Utils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bt/jrsdk/util/Utils;-><init>(Lcom/bt/jrsdk/util/Utils$1;)V

    sput-object v0, Lcom/bt/jrsdk/util/Utils$SingletonHolder;->sInstance:Lcom/bt/jrsdk/util/Utils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/bt/jrsdk/util/Utils;
    .locals 1

    .line 25
    sget-object v0, Lcom/bt/jrsdk/util/Utils$SingletonHolder;->sInstance:Lcom/bt/jrsdk/util/Utils;

    return-object v0
.end method

.class Lcom/today/player/util/AppManager$SingleHolder;
.super Ljava/lang/Object;
.source "AppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/util/AppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static instance:Lcom/today/player/util/AppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/today/player/util/AppManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/today/player/util/AppManager;-><init>(Lcom/today/player/util/AppManager$1;)V

    sput-object v0, Lcom/today/player/util/AppManager$SingleHolder;->instance:Lcom/today/player/util/AppManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/today/player/util/AppManager;
    .locals 1

    .line 18
    sget-object v0, Lcom/today/player/util/AppManager$SingleHolder;->instance:Lcom/today/player/util/AppManager;

    return-object v0
.end method

.class Lcom/today/player/util/GetDevicesId$DevicesInit;
.super Ljava/lang/Object;
.source "GetDevicesId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/util/GetDevicesId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DevicesInit"
.end annotation


# static fields
.field public static final get:Lcom/today/player/util/GetDevicesId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/today/player/util/GetDevicesId;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/today/player/util/GetDevicesId;-><init>(Lcom/today/player/util/GetDevicesId$1;)V

    sput-object v0, Lcom/today/player/util/GetDevicesId$DevicesInit;->get:Lcom/today/player/util/GetDevicesId;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

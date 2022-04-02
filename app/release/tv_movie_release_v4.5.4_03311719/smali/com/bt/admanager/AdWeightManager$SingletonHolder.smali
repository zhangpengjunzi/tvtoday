.class Lcom/bt/admanager/AdWeightManager$SingletonHolder;
.super Ljava/lang/Object;
.source "AdWeightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bt/admanager/AdWeightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/bt/admanager/AdWeightManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/bt/admanager/AdWeightManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bt/admanager/AdWeightManager;-><init>(Lcom/bt/admanager/AdWeightManager$1;)V

    sput-object v0, Lcom/bt/admanager/AdWeightManager$SingletonHolder;->sInstance:Lcom/bt/admanager/AdWeightManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/bt/admanager/AdWeightManager;
    .locals 1

    .line 29
    sget-object v0, Lcom/bt/admanager/AdWeightManager$SingletonHolder;->sInstance:Lcom/bt/admanager/AdWeightManager;

    return-object v0
.end method

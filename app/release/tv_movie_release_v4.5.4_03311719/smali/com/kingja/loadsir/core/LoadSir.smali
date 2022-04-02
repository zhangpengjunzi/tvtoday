.class public Lcom/kingja/loadsir/core/LoadSir;
.super Ljava/lang/Object;
.source "LoadSir.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingja/loadsir/core/LoadSir$Builder;
    }
.end annotation


# static fields
.field private static volatile loadSir:Lcom/kingja/loadsir/core/LoadSir;


# instance fields
.field private builder:Lcom/kingja/loadsir/core/LoadSir$Builder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/kingja/loadsir/core/LoadSir$Builder;

    invoke-direct {v0}, Lcom/kingja/loadsir/core/LoadSir$Builder;-><init>()V

    iput-object v0, p0, Lcom/kingja/loadsir/core/LoadSir;->builder:Lcom/kingja/loadsir/core/LoadSir$Builder;

    return-void
.end method

.method private constructor <init>(Lcom/kingja/loadsir/core/LoadSir$Builder;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadSir;->builder:Lcom/kingja/loadsir/core/LoadSir$Builder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingja/loadsir/core/LoadSir$Builder;Lcom/kingja/loadsir/core/LoadSir$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/LoadSir;-><init>(Lcom/kingja/loadsir/core/LoadSir$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kingja/loadsir/core/LoadSir;Lcom/kingja/loadsir/core/LoadSir$Builder;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/LoadSir;->setBuilder(Lcom/kingja/loadsir/core/LoadSir$Builder;)V

    return-void
.end method

.method public static beginBuilder()Lcom/kingja/loadsir/core/LoadSir$Builder;
    .locals 1

    .line 64
    new-instance v0, Lcom/kingja/loadsir/core/LoadSir$Builder;

    invoke-direct {v0}, Lcom/kingja/loadsir/core/LoadSir$Builder;-><init>()V

    return-object v0
.end method

.method public static getDefault()Lcom/kingja/loadsir/core/LoadSir;
    .locals 2

    .line 26
    sget-object v0, Lcom/kingja/loadsir/core/LoadSir;->loadSir:Lcom/kingja/loadsir/core/LoadSir;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/kingja/loadsir/core/LoadSir;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/kingja/loadsir/core/LoadSir;->loadSir:Lcom/kingja/loadsir/core/LoadSir;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/kingja/loadsir/core/LoadSir;

    invoke-direct {v1}, Lcom/kingja/loadsir/core/LoadSir;-><init>()V

    sput-object v1, Lcom/kingja/loadsir/core/LoadSir;->loadSir:Lcom/kingja/loadsir/core/LoadSir;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcom/kingja/loadsir/core/LoadSir;->loadSir:Lcom/kingja/loadsir/core/LoadSir;

    return-object v0
.end method

.method private setBuilder(Lcom/kingja/loadsir/core/LoadSir$Builder;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadSir;->builder:Lcom/kingja/loadsir/core/LoadSir$Builder;

    return-void
.end method


# virtual methods
.method public register(Ljava/lang/Object;)Lcom/kingja/loadsir/core/LoadService;
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0, v0}, Lcom/kingja/loadsir/core/LoadSir;->register(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;Lcom/kingja/loadsir/core/Convertor;)Lcom/kingja/loadsir/core/LoadService;

    move-result-object p1

    return-object p1
.end method

.method public register(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)Lcom/kingja/loadsir/core/LoadService;
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, p2, v0}, Lcom/kingja/loadsir/core/LoadSir;->register(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;Lcom/kingja/loadsir/core/Convertor;)Lcom/kingja/loadsir/core/LoadService;

    move-result-object p1

    return-object p1
.end method

.method public register(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;Lcom/kingja/loadsir/core/Convertor;)Lcom/kingja/loadsir/core/LoadService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/kingja/loadsir/callback/Callback$OnReloadListener;",
            "Lcom/kingja/loadsir/core/Convertor<",
            "TT;>;)",
            "Lcom/kingja/loadsir/core/LoadService;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadSir;->builder:Lcom/kingja/loadsir/core/LoadSir$Builder;

    invoke-virtual {v0}, Lcom/kingja/loadsir/core/LoadSir$Builder;->getTargetContextList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kingja/loadsir/LoadSirUtil;->getTargetContext(Ljava/lang/Object;Ljava/util/List;)Lcom/kingja/loadsir/target/ITarget;

    move-result-object v0

    .line 59
    invoke-interface {v0, p1, p2}, Lcom/kingja/loadsir/target/ITarget;->replaceView(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)Lcom/kingja/loadsir/core/LoadLayout;

    move-result-object p1

    .line 60
    new-instance p2, Lcom/kingja/loadsir/core/LoadService;

    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadSir;->builder:Lcom/kingja/loadsir/core/LoadSir$Builder;

    invoke-direct {p2, p3, p1, v0}, Lcom/kingja/loadsir/core/LoadService;-><init>(Lcom/kingja/loadsir/core/Convertor;Lcom/kingja/loadsir/core/LoadLayout;Lcom/kingja/loadsir/core/LoadSir$Builder;)V

    return-object p2
.end method

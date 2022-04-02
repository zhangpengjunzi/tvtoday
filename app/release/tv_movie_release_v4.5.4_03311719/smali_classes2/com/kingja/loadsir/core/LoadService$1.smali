.class Lcom/kingja/loadsir/core/LoadService$1;
.super Ljava/lang/Object;
.source "LoadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingja/loadsir/core/LoadService;->initCallback(Lcom/kingja/loadsir/core/LoadSir$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingja/loadsir/core/LoadService;

.field final synthetic val$defalutCallback:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/kingja/loadsir/core/LoadService;Ljava/lang/Class;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadService$1;->this$0:Lcom/kingja/loadsir/core/LoadService;

    iput-object p2, p0, Lcom/kingja/loadsir/core/LoadService$1;->val$defalutCallback:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadService$1;->val$defalutCallback:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadService$1;->this$0:Lcom/kingja/loadsir/core/LoadService;

    invoke-static {v0}, Lcom/kingja/loadsir/core/LoadService;->access$000(Lcom/kingja/loadsir/core/LoadService;)Lcom/kingja/loadsir/core/LoadLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/kingja/loadsir/core/LoadService$1;->val$defalutCallback:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/LoadLayout;->showCallback(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

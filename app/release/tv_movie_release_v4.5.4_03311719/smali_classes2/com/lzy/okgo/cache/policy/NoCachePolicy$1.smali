.class Lcom/lzy/okgo/cache/policy/NoCachePolicy$1;
.super Ljava/lang/Object;
.source "NoCachePolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/policy/NoCachePolicy;->onSuccess(Lcom/lzy/okgo/model/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/cache/policy/NoCachePolicy;

.field final synthetic val$success:Lcom/lzy/okgo/model/Response;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/policy/NoCachePolicy;Lcom/lzy/okgo/model/Response;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/NoCachePolicy;

    iput-object p2, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$1;->val$success:Lcom/lzy/okgo/model/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/NoCachePolicy;

    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$1;->val$success:Lcom/lzy/okgo/model/Response;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/callback/Callback;->onSuccess(Lcom/lzy/okgo/model/Response;)V

    .line 44
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/NoCachePolicy;

    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    invoke-interface {v0}, Lcom/lzy/okgo/callback/Callback;->onFinish()V

    return-void
.end method

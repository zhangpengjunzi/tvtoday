.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$1;
.super Ljava/lang/Object;
.source "FlowableReplay.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .line 49
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;-><init>(I)V

    return-object v0
.end method

.class final Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;
.super Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;
.source "FlowableDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoOnEachSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/BasicFuseableSubscriber<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final onAfterTerminate:Lio/reactivex/functions/Action;

.field final onComplete:Lio/reactivex/functions/Action;

.field final onError:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onNext:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 66
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    .line 67
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onError:Lio/reactivex/functions/Consumer;

    .line 68
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onComplete:Lio/reactivex/functions/Action;

    .line 69
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 122
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onComplete:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->done:Z

    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 136
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 138
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 139
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    .line 128
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    .line 95
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->done:Z

    const/4 v1, 0x0

    .line 102
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onError:Lio/reactivex/functions/Consumer;

    invoke-interface {v2, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 104
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 105
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    new-instance v4, Lio/reactivex/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v1

    aput-object v2, v5, v0

    invoke-direct {v4, v5}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 113
    :cond_1
    :try_start_1
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {p1}, Lio/reactivex/functions/Action;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 115
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 116
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->sourceMode:I

    if-eqz v0, :cond_1

    .line 79
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void

    .line 84
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 86
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueSubscription;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V

    throw v0

    .line 160
    :cond_0
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->sourceMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 161
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onComplete:Lio/reactivex/functions/Action;

    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V

    .line 163
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public requestFusion(I)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->transitiveBoundaryFusion(I)I

    move-result p1

    return p1
.end method

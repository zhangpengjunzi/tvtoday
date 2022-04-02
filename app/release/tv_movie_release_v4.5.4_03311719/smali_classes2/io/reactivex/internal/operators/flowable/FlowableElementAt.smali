.class public final Lio/reactivex/internal/operators/flowable/FlowableElementAt;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableElementAt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final errorOnFewer:Z

.field final index:J


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;JTT;Z)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lorg/reactivestreams/Publisher;)V

    .line 30
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt;->index:J

    .line 31
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt;->defaultValue:Ljava/lang/Object;

    .line 32
    iput-boolean p5, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt;->errorOnFewer:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt;->source:Lorg/reactivestreams/Publisher;

    new-instance v7, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt;->index:J

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt;->defaultValue:Ljava/lang/Object;

    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAt;->errorOnFewer:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber;-><init>(Lorg/reactivestreams/Subscriber;JLjava/lang/Object;Z)V

    invoke-interface {v0, v7}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method

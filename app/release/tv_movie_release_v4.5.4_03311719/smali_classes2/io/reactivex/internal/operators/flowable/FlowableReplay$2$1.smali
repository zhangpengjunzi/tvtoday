.class Lio/reactivex/internal/operators/flowable/FlowableReplay$2$1;
.super Ljava/lang/Object;
.source "FlowableReplay.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay$2;->subscribe(Lorg/reactivestreams/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/flowable/FlowableReplay$2;

.field final synthetic val$srw:Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableReplay$2;Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$2$1;->this$0:Lio/reactivex/internal/operators/flowable/FlowableReplay$2;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$2$1;->val$srw:Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$2$1;->val$srw:Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->setResource(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$2$1;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.class public final synthetic Lcom/google/android/exoplayer2/util/-$$Lambda$NetworkTypeObserver$shFvhYeTAyl_Mfre9qaWyfrNrs0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/-$$Lambda$NetworkTypeObserver$shFvhYeTAyl_Mfre9qaWyfrNrs0;->f$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/-$$Lambda$NetworkTypeObserver$shFvhYeTAyl_Mfre9qaWyfrNrs0;->f$1:Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/-$$Lambda$NetworkTypeObserver$shFvhYeTAyl_Mfre9qaWyfrNrs0;->f$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/-$$Lambda$NetworkTypeObserver$shFvhYeTAyl_Mfre9qaWyfrNrs0;->f$1:Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->lambda$register$0$NetworkTypeObserver(Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;)V

    return-void
.end method

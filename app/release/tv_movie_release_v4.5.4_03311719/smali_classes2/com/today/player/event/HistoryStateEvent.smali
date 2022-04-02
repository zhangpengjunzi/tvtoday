.class public Lcom/today/player/event/HistoryStateEvent;
.super Ljava/lang/Object;
.source "HistoryStateEvent.java"


# static fields
.field public static final TYPE_TOP:I


# instance fields
.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/today/player/event/HistoryStateEvent;->type:I

    return-void
.end method

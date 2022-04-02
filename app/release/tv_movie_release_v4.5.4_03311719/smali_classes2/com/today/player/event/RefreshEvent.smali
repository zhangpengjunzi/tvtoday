.class public Lcom/today/player/event/RefreshEvent;
.super Ljava/lang/Object;
.source "RefreshEvent.java"


# static fields
.field public static final TYPE_HISTORY_REFRESH:I = 0x1

.field public static final TYPE_REFRESH:I = 0x0

.field public static final TYPE_SEARCH_FENCI:I = 0x4

.field public static final TYPE_SEARCH_LIST:I = 0x3


# instance fields
.field public obj:Ljava/lang/Object;

.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/today/player/event/RefreshEvent;->type:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/today/player/event/RefreshEvent;->type:I

    .line 22
    iput-object p2, p0, Lcom/today/player/event/RefreshEvent;->obj:Ljava/lang/Object;

    return-void
.end method

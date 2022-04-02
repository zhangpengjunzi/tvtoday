.class public Lcom/today/player/event/ServerEvent;
.super Ljava/lang/Object;
.source "ServerEvent.java"


# static fields
.field public static final SERVER_CONNECTION:I = 0x1

.field public static final SERVER_SEARCH:I = 0x2

.field public static final SERVER_SUCCESS:I


# instance fields
.field public obj:Ljava/lang/Object;

.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/today/player/event/ServerEvent;->type:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/today/player/event/ServerEvent;->type:I

    .line 21
    iput-object p2, p0, Lcom/today/player/event/ServerEvent;->obj:Ljava/lang/Object;

    return-void
.end method

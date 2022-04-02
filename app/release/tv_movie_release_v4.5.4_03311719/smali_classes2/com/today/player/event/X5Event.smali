.class public Lcom/today/player/event/X5Event;
.super Ljava/lang/Object;
.source "X5Event.java"


# static fields
.field public static final X5_FAILURE:I = 0x1

.field public static final X5_SUCCESS:I


# instance fields
.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/today/player/event/X5Event;->type:I

    return-void
.end method

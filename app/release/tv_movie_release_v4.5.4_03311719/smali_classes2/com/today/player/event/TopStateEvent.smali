.class public Lcom/today/player/event/TopStateEvent;
.super Ljava/lang/Object;
.source "TopStateEvent.java"


# static fields
.field public static final REFRESH:I = 0x1

.field public static final REFRESH_LOAD_SOURCE:I = 0x2

.field public static final REFRESH_UPDATE:I = 0x3

.field public static final TYPE_TOP:I


# instance fields
.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/today/player/event/TopStateEvent;->type:I

    return-void
.end method

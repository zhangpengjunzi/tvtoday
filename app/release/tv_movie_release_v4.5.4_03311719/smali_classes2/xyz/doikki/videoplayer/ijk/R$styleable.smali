.class public final Lxyz/doikki/videoplayer/ijk/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/doikki/videoplayer/ijk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final VideoView:[I

.field public static final VideoView_enableAudioFocus:I = 0x0

.field public static final VideoView_looping:I = 0x1

.field public static final VideoView_playerBackgroundColor:I = 0x2

.field public static final VideoView_screenScaleType:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lxyz/doikki/videoplayer/ijk/R$styleable;->VideoView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0300f9
        0x7f0301c7
        0x7f0301fb
        0x7f030210
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

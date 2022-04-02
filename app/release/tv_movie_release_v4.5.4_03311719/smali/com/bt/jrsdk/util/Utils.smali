.class public Lcom/bt/jrsdk/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bt/jrsdk/util/Utils$SingletonHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bt/jrsdk/util/Utils$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/bt/jrsdk/util/Utils;-><init>()V

    return-void
.end method

.method public static getDeviceType()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-static {}, Lcom/today/player/util/ChannelUtil;->getDeviceTypeNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/bt/jrsdk/util/Utils;
    .locals 1

    .line 22
    invoke-static {}, Lcom/bt/jrsdk/util/Utils$SingletonHolder;->access$000()Lcom/bt/jrsdk/util/Utils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_1

    .line 38
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    .line 40
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/bt/jrsdk/util/Utils;->context:Landroid/content/Context;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/bt/jrsdk/util/Utils;->context:Landroid/content/Context;

    return-void
.end method

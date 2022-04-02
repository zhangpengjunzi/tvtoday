.class Lcom/bytedance/sdk/openadsdk/k/e$b;
.super Landroid/content/BroadcastReceiver;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/k/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 516
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "status"

    const/4 v0, -0x1

    .line 524
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 526
    sput p1, Lcom/bytedance/sdk/openadsdk/k/e$c;->a:I

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    .line 529
    sput p1, Lcom/bytedance/sdk/openadsdk/k/e$c;->a:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 531
    sput p1, Lcom/bytedance/sdk/openadsdk/k/e$c;->a:I

    :goto_0
    const-string p1, "level"

    .line 533
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "scale"

    .line 535
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    mul-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 536
    sput p1, Lcom/bytedance/sdk/openadsdk/k/e$c;->b:F

    :cond_3
    return-void
.end method

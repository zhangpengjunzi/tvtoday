.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;
.super Ljava/lang/Object;
.source "BrandBannerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$c;,
        Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;,
        Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

.field private d:Lcom/bytedance/sdk/component/adexpress/b/n;

.field private e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->b:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 84
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    .line 85
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->f:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->g:I

    invoke-direct {p2, p1, p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;II)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .locals 2

    .line 94
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v0

    .line 95
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v1

    .line 94
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a(II)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->f:I

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->g:I

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/u;->c(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->f:I

    int-to-float p1, p1

    .line 103
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;->b:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->g:I

    .line 107
    :goto_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->f:I

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->c(Landroid/content/Context;)I

    move-result v0

    if-le p1, v0, :cond_1

    .line 108
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/u;->c(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->f:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->f:I

    .line 110
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->g:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->g:I

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Lcom/bytedance/sdk/component/adexpress/b/n;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->d:Lcom/bytedance/sdk/component/adexpress/b/n;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    if-eqz v0, :cond_0

    .line 120
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->a(Lcom/bytedance/sdk/component/adexpress/b/f;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->d:Lcom/bytedance/sdk/component/adexpress/b/n;

    if-eqz v0, :cond_1

    const/16 v1, 0x6a

    .line 148
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/b/n;->a_(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/adexpress/b/n;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->d:Lcom/bytedance/sdk/component/adexpress/b/n;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAdDislike;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->a(Lcom/bytedance/sdk/openadsdk/TTAdDislike;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->a(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->a()V

    .line 156
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    .line 158
    :cond_0
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->d:Lcom/bytedance/sdk/component/adexpress/b/n;

    .line 159
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-void
.end method

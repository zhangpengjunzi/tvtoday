.class Lcom/bytedance/sdk/openadsdk/component/banner/c;
.super Landroid/widget/FrameLayout;
.source "BannerCellView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private final b:Landroid/content/Context;

.field private c:Lcom/bytedance/sdk/openadsdk/core/f/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/c;->b:Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 41
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/c;->a:Landroid/widget/ImageView;

    .line 42
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/c;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/c;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method a()Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/c;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object v0
.end method

.method a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/c;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-void
.end method

.method b()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/c;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/c;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-void
.end method

.class public Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;
.super Landroid/widget/FrameLayout;
.source "InteractViewContainer.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/interact/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;

.field private c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

.field private d:Landroid/view/View;

.field private e:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/b;

.field private f:Ljava/lang/String;

.field private g:Lcom/bytedance/sdk/component/adexpress/widget/RippleView;

.field private h:Landroid/view/View$OnTouchListener;

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->a:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;

    .line 46
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    .line 47
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->a:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;

    .line 54
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    .line 55
    iput p4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->j:I

    .line 56
    iput p5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->k:I

    .line 57
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->e()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;)Lcom/bytedance/sdk/component/adexpress/widget/RippleView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->g:Lcom/bytedance/sdk/component/adexpress/widget/RippleView;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->h()V

    return-void
.end method

.method private e()V
    .locals 6

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->setBackgroundColor(I)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->setClipChildren(Z)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->setClipToPadding(Z)V

    .line 64
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->D()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->f:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->E()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->i:I

    .line 66
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->j:I

    iget v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->k:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;II)Lcom/bytedance/sdk/component/adexpress/dynamic/interact/b;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->e:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/b;

    if-eqz v1, :cond_1

    .line 69
    invoke-interface {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/b;->d()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->d:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->f:Ljava/lang/String;

    const-string v2, "6"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/widget/RippleView;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/component/adexpress/widget/RippleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->g:Lcom/bytedance/sdk/component/adexpress/widget/RippleView;

    .line 72
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;)V

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->post(Ljava/lang/Runnable;)Z

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->e:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/b;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/b;->d()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->addView(Landroid/view/View;)V

    .line 81
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->f()V

    .line 82
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->f:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x32

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_0
    const-string v2, "18"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xc

    goto/16 :goto_0

    :pswitch_1
    const-string v2, "17"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "16"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xb

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "14"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :pswitch_4
    const-string v2, "13"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_5
    const-string v2, "12"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    :pswitch_6
    const-string v2, "11"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :pswitch_7
    const-string v2, "9"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_8
    const-string v2, "8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :pswitch_9
    const-string v2, "7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xa

    goto :goto_0

    :pswitch_a
    const-string v2, "6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :pswitch_b
    const-string v2, "5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x9

    :cond_2
    :goto_0
    const-string v0, "#80000000"

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_1

    .line 138
    :pswitch_c
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;

    .line 139
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->getWriggleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->d:Landroid/view/View;

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->getWriggleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->d:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 131
    :pswitch_d
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->d:Landroid/view/View;

    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;

    .line 132
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->getShakeLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->d:Landroid/view/View;

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->getShakeLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->d:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 127
    :pswitch_e
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->setBackgroundColor(I)V

    .line 128
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/a;

    invoke-direct {v0, p0, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/a;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;Lcom/bytedance/sdk/component/adexpress/dynamic/interact/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->h:Landroid/view/View$OnTouchListener;

    goto :goto_1

    .line 123
    :pswitch_f
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/a;

    invoke-direct {v0, p0, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/a;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;Lcom/bytedance/sdk/component/adexpress/dynamic/interact/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->h:Landroid/view/View$OnTouchListener;

    goto :goto_1

    .line 118
    :pswitch_10
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->setBackgroundColor(I)V

    .line 119
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/b;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->h:Landroid/view/View$OnTouchListener;

    goto :goto_1

    .line 115
    :pswitch_11
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/b;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->h:Landroid/view/View$OnTouchListener;

    goto :goto_1

    .line 105
    :pswitch_12
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;->setClipChildren(Z)V

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;->setClipChildren(Z)V

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 109
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 110
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 112
    :cond_5
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->h:Landroid/view/View$OnTouchListener;

    goto :goto_1

    .line 100
    :pswitch_13
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->setBackgroundColor(I)V

    .line 101
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->h:Landroid/view/View$OnTouchListener;

    goto :goto_1

    .line 97
    :pswitch_14
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->i:I

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/c;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->h:Landroid/view/View$OnTouchListener;

    goto :goto_1

    .line 94
    :pswitch_15
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->d:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->h:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_6

    .line 148
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 150
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;->getDynamicClickListener()Lcom/bytedance/sdk/component/adexpress/dynamic/d/a;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x620
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x625
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private g()Z
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->J()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->f:Ljava/lang/String;

    const-string v2, "9"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->f:Ljava/lang/String;

    const-string v2, "16"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->f:Ljava/lang/String;

    const-string v2, "17"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->f:Ljava/lang/String;

    const-string v2, "18"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private h()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->h:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;->getDynamicClickListener()Lcom/bytedance/sdk/component/adexpress/dynamic/d/a;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->performClick()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->f:Ljava/lang/String;

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->g:Lcom/bytedance/sdk/component/adexpress/widget/RippleView;

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/widget/RippleView;->c()V

    .line 215
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer$2;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->e:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/b;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/b;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->f:Ljava/lang/String;

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->d:Landroid/view/View;

    instance-of v1, v0, Lcom/bytedance/sdk/component/adexpress/widget/CircleLongPressView;

    if-eqz v1, :cond_1

    .line 194
    check-cast v0, Lcom/bytedance/sdk/component/adexpress/widget/CircleLongPressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/widget/CircleLongPressView;->c()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->f:Ljava/lang/String;

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->d:Landroid/view/View;

    instance-of v1, v0, Lcom/bytedance/sdk/component/adexpress/widget/CircleLongPressView;

    if-eqz v1, :cond_1

    .line 205
    check-cast v0, Lcom/bytedance/sdk/component/adexpress/widget/CircleLongPressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/widget/CircleLongPressView;->d()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 182
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/InteractViewContainer;->e:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/b;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/b;->b()V

    :cond_0
    return-void
.end method

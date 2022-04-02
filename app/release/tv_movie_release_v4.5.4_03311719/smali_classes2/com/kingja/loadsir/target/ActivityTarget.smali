.class public Lcom/kingja/loadsir/target/ActivityTarget;
.super Ljava/lang/Object;
.source "ActivityTarget.java"

# interfaces
.implements Lcom/kingja/loadsir/target/ITarget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 21
    instance-of p1, p1, Landroid/app/Activity;

    return p1
.end method

.method public replaceView(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)Lcom/kingja/loadsir/core/LoadLayout;
    .locals 6

    .line 26
    check-cast p1, Landroid/app/Activity;

    const v0, 0x1020002

    .line 27
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 33
    new-instance v4, Lcom/kingja/loadsir/core/LoadLayout;

    invoke-direct {v4, p1, p2}, Lcom/kingja/loadsir/core/LoadLayout;-><init>(Landroid/content/Context;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)V

    .line 34
    new-instance v5, Lcom/kingja/loadsir/callback/SuccessCallback;

    invoke-direct {v5, v2, p1, p2}, Lcom/kingja/loadsir/callback/SuccessCallback;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)V

    invoke-virtual {v4, v5}, Lcom/kingja/loadsir/core/LoadLayout;->setupSuccessLayout(Lcom/kingja/loadsir/callback/Callback;)V

    .line 36
    invoke-virtual {v0, v4, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v4
.end method

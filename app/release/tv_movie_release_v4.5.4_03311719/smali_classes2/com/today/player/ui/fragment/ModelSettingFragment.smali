.class public Lcom/today/player/ui/fragment/ModelSettingFragment;
.super Lcom/today/player/base/BaseLazyFragment;
.source "ModelSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/fragment/ModelSettingFragment$k;,
        Lcom/today/player/ui/fragment/ModelSettingFragment$d;,
        Lcom/today/player/ui/fragment/ModelSettingFragment$c;,
        Lcom/today/player/ui/fragment/ModelSettingFragment$b;
    }
.end annotation


# instance fields
.field public k:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/today/player/base/BaseLazyFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/app/Activity;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static newInstance()Lcom/today/player/ui/fragment/ModelSettingFragment;
    .locals 1

    .line 41
    new-instance v0, Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-direct {v0}, Lcom/today/player/ui/fragment/ModelSettingFragment;-><init>()V

    invoke-virtual {v0}, Lcom/today/player/ui/fragment/ModelSettingFragment;->setArguments()Lcom/today/player/ui/fragment/ModelSettingFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 3

    const/4 v0, 0x1

    .line 300
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "play_type"

    invoke-static {v2, v1}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->n:Landroid/widget/TextView;

    const-string v1, "IJK\u64ad\u653e\u5668"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->n:Landroid/widget/TextView;

    const-string v1, "Exo\u64ad\u653e\u5668"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    .line 309
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "play_render"

    invoke-static {v1, v0}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->o:Landroid/widget/TextView;

    const-string v1, "SurfaceView"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->o:Landroid/widget/TextView;

    const-string v1, "TextureView"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b0059

    return v0
.end method

.method protected init()V
    .locals 3

    const v0, 0x7f0802a9

    .line 285
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/ModelSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->k:Landroid/widget/TextView;

    const v0, 0x7f0802ae

    .line 286
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/ModelSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->n:Landroid/widget/TextView;

    const v0, 0x7f0802b4

    .line 287
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/ModelSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->o:Landroid/widget/TextView;

    .line 288
    iget-object v0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment;->k:Landroid/widget/TextView;

    const-string v1, "ijk_codec"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {p0}, Lcom/today/player/ui/fragment/ModelSettingFragment;->c()V

    .line 290
    invoke-virtual {p0}, Lcom/today/player/ui/fragment/ModelSettingFragment;->d()V

    const v0, 0x7f0800c5

    .line 292
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/ModelSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/today/player/ui/fragment/ModelSettingFragment$k;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/ModelSettingFragment$k;-><init>(Lcom/today/player/ui/fragment/ModelSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c7

    .line 293
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/ModelSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/today/player/ui/fragment/ModelSettingFragment$b;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/ModelSettingFragment$b;-><init>(Lcom/today/player/ui/fragment/ModelSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c8

    .line 294
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/ModelSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/today/player/ui/fragment/ModelSettingFragment$c;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/ModelSettingFragment$c;-><init>(Lcom/today/player/ui/fragment/ModelSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c9

    .line 295
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/ModelSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/today/player/ui/fragment/ModelSettingFragment$d;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/ModelSettingFragment$d;-><init>(Lcom/today/player/ui/fragment/ModelSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 275
    invoke-super {p0}, Lcom/today/player/base/BaseLazyFragment;->onDestroyView()V

    return-void
.end method

.method public setArguments()Lcom/today/player/ui/fragment/ModelSettingFragment;
    .locals 0

    return-object p0
.end method

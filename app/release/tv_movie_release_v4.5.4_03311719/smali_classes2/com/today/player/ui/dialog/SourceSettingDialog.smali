.class public Lcom/today/player/ui/dialog/SourceSettingDialog;
.super Ljava/lang/Object;
.source "SourceSettingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/dialog/SourceSettingDialog$e;,
        Lcom/today/player/ui/dialog/SourceSettingDialog$d;,
        Lcom/today/player/ui/dialog/SourceSettingDialog$c;,
        Lcom/today/player/ui/dialog/SourceSettingDialog$b;,
        Lcom/today/player/ui/dialog/SourceSettingDialog$a;
    }
.end annotation


# instance fields
.field public a:Lcom/today/player/ui/fragment/SourceSettingFragment;

.field public b:Landroid/view/View;

.field public c:Landroid/app/Dialog;

.field public d:Lcom/today/player/ui/dialog/SourceSettingDialog$e;

.field public e:Lcom/today/player/bean/PlayerModel$SourcesDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/today/player/ui/dialog/SourceSettingDialog;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/today/player/ui/dialog/SourceSettingDialog;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/today/player/ui/dialog/SourceSettingDialog;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 7

    const v0, 0x7f0802c3

    .line 257
    invoke-virtual {p0, v0}, Lcom/today/player/ui/dialog/SourceSettingDialog;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0802c6

    .line 258
    invoke-virtual {p0, v1}, Lcom/today/player/ui/dialog/SourceSettingDialog;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0802c5

    .line 259
    invoke-virtual {p0, v2}, Lcom/today/player/ui/dialog/SourceSettingDialog;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0802c7

    .line 260
    invoke-virtual {p0, v3}, Lcom/today/player/ui/dialog/SourceSettingDialog;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 261
    iget-object v4, p0, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v4}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\u7981\u7528"

    goto :goto_0

    :cond_0
    const-string v4, "\u542f\u7528"

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v4, p0, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v4}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isActive()Z

    move-result v4

    const/high16 v5, -0x1000000

    const v6, -0x777778

    if-eqz v4, :cond_3

    .line 264
    iget-object v4, p0, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v4}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isHome()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, -0x777778

    goto :goto_1

    :cond_1
    const/high16 v4, -0x1000000

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object v4, p0, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v4}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isHome()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "\u5f53\u524d\u9996\u9875\u6570\u636e\u6e90"

    goto :goto_2

    :cond_2
    const-string v4, "\u8bbe\u4e3a\u9996\u9875\u6570\u636e\u6e90"

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 267
    :cond_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "\u5c1a\u672a\u542f\u7528"

    .line 268
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :goto_3
    iget-object v4, p0, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v4}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isHome()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 271
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "\u9996\u9875\u6570\u636e\u6e90\u4e0d\u53ef\u5220\u9664"

    .line 273
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 275
    :cond_4
    iget-object v4, p0, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v4}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isInternal()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, -0x777778

    goto :goto_4

    :cond_5
    const/high16 v4, -0x1000000

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    iget-object v4, p0, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v4}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isInternal()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "\u5185\u7f6e\u6e90\u4e0d\u53ef\u5220\u9664"

    goto :goto_5

    :cond_6
    const-string v4, "\u5220\u9664\u6b64\u6570\u636e\u6e90"

    :goto_5
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_6
    iget-object v4, p0, Lcom/today/player/ui/dialog/SourceSettingDialog;->e:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v4}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isActive()Z

    move-result v4

    if-nez v4, :cond_7

    const v5, -0x777778

    .line 281
    :cond_7
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    new-instance v4, Lcom/today/player/ui/dialog/SourceSettingDialog$a;

    invoke-direct {v4, p0}, Lcom/today/player/ui/dialog/SourceSettingDialog$a;-><init>(Lcom/today/player/ui/dialog/SourceSettingDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    new-instance v0, Lcom/today/player/ui/dialog/SourceSettingDialog$b;

    invoke-direct {v0, p0}, Lcom/today/player/ui/dialog/SourceSettingDialog$b;-><init>(Lcom/today/player/ui/dialog/SourceSettingDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    new-instance v0, Lcom/today/player/ui/dialog/SourceSettingDialog$c;

    invoke-direct {v0, p0}, Lcom/today/player/ui/dialog/SourceSettingDialog$c;-><init>(Lcom/today/player/ui/dialog/SourceSettingDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    new-instance v0, Lcom/today/player/ui/dialog/SourceSettingDialog$d;

    invoke-direct {v0, p0}, Lcom/today/player/ui/dialog/SourceSettingDialog$d;-><init>(Lcom/today/player/ui/dialog/SourceSettingDialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.class public Lcom/chad/library/adapter/base/BaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseViewHolder.java"


# instance fields
.field private adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field associatedObject:Ljava/lang/Object;

.field private final childClickViewIds:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public convertView:Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final itemChildLongClickViewIds:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final nestViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final views:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 79
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->views:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->childClickViewIds:Ljava/util/LinkedHashSet;

    .line 82
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->itemChildLongClickViewIds:Ljava/util/LinkedHashSet;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->nestViews:Ljava/util/HashSet;

    .line 84
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->convertView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/chad/library/adapter/base/BaseViewHolder;)Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chad/library/adapter/base/BaseViewHolder;)I
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getClickPosition()I

    move-result p0

    return p0
.end method

.method private getClickPosition()I
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v0

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v0

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public varargs addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 5

    .line 380
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 381
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->childClickViewIds:Ljava/util/LinkedHashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-virtual {p0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 384
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 385
    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 387
    :cond_0
    new-instance v3, Lcom/chad/library/adapter/base/BaseViewHolder$1;

    invoke-direct {v3, p0}, Lcom/chad/library/adapter/base/BaseViewHolder$1;-><init>(Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public varargs addOnLongClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 5

    .line 427
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 428
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->itemChildLongClickViewIds:Ljava/util/LinkedHashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual {p0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 431
    invoke-virtual {v2}, Landroid/view/View;->isLongClickable()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 432
    invoke-virtual {v2, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 434
    :cond_0
    new-instance v3, Lcom/chad/library/adapter/base/BaseViewHolder$2;

    invoke-direct {v3, p0}, Lcom/chad/library/adapter/base/BaseViewHolder$2;-><init>(Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public getAssociatedObject()Ljava/lang/Object;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->associatedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getChildClickViewIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->childClickViewIds:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getConvertView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->convertView:Landroid/view/View;

    return-object v0
.end method

.method public getItemChildLongClickViewIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->itemChildLongClickViewIds:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getNestViews()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->nestViews:Ljava/util/HashSet;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->views:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public linkify(I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 1

    .line 259
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0xf

    .line 260
    invoke-static {p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    return-object p0
.end method

.method public setAdapter(ILandroid/widget/Adapter;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 594
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView;

    .line 595
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    return-object p0
.end method

.method protected setAdapter(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    return-object p0
.end method

.method public setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 3

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 218
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p2, 0x1

    .line 220
    invoke-virtual {v0, p2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-object p0
.end method

.method public setAssociatedObject(Ljava/lang/Object;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->associatedObject:Ljava/lang/Object;

    return-void
.end method

.method public setBackgroundColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 156
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p0
.end method

.method public setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 1

    .line 565
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 567
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 568
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    return-object p0
.end method

.method public setEnabled(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 580
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 581
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-object p0
.end method

.method public setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 234
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 235
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public setImageBitmap(ILandroid/graphics/Bitmap;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 205
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 196
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 143
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setMax(II)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 323
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    return-object p0
.end method

.method public varargs setNestView([I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 4

    .line 408
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 409
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->nestViews:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 412
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnLongClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-object p0
.end method

.method public setOnCheckedChangeListener(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 525
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    .line 526
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p0
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 365
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setOnItemClickListener(ILandroid/widget/AdapterView$OnItemClickListener;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 486
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView;

    .line 487
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p0
.end method

.method public setOnItemLongClickListener(ILandroid/widget/AdapterView$OnItemLongClickListener;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 499
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView;

    .line 500
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object p0
.end method

.method public setOnItemSelectedClickListener(ILandroid/widget/AdapterView$OnItemSelectedListener;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 512
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView;

    .line 513
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object p0
.end method

.method public setOnLongClickListener(ILandroid/view/View$OnLongClickListener;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 471
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 472
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p0
.end method

.method public setOnTouchListener(ILandroid/view/View$OnTouchListener;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 456
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 457
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p0
.end method

.method public setProgress(II)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 294
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 295
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-object p0
.end method

.method public setProgress(III)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 308
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 309
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 310
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-object p0
.end method

.method public setRating(IF)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 335
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    .line 336
    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    return-object p0
.end method

.method public setRating(IFI)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 349
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    .line 350
    invoke-virtual {p1, p3}, Landroid/widget/RatingBar;->setMax(I)V

    .line 351
    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    return-object p0
.end method

.method public setTag(IILjava/lang/Object;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 553
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTag(ILjava/lang/Object;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 538
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 539
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 130
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method public setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 124
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 182
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setTypeface(ILandroid/graphics/Typeface;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 268
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 269
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 270
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p2

    or-int/lit16 p2, p2, 0x80

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    return-object p0
.end method

.method public varargs setTypeface(Landroid/graphics/Typeface;[I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 4

    .line 278
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 279
    invoke-virtual {p0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 280
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 281
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 248
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

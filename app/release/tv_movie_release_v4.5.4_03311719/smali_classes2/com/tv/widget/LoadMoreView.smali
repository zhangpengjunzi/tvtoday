.class public final Lcom/tv/widget/LoadMoreView;
.super Lcom/chad/library/adapter/base/loadmore/LoadMoreView;
.source "LoadMoreView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/chad/library/adapter/base/loadmore/LoadMoreView;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 10
    sget v0, Lcom/tv/R$layout;->view_load_more:I

    return v0
.end method

.method protected getLoadEndViewId()I
    .locals 1

    .line 25
    sget v0, Lcom/tv/R$id;->load_more_load_end_view:I

    return v0
.end method

.method protected getLoadFailViewId()I
    .locals 1

    .line 20
    sget v0, Lcom/tv/R$id;->load_more_load_fail_view:I

    return v0
.end method

.method protected getLoadingViewId()I
    .locals 1

    .line 15
    sget v0, Lcom/tv/R$id;->load_more_loading_view:I

    return v0
.end method

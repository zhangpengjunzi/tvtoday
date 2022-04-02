.class public Lcom/bytedance/sdk/component/e/c/d;
.super Ljava/lang/Object;
.source "ImageResponse.java"

# interfaces
.implements Lcom/bytedance/sdk/component/e/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/e/j;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Lcom/bytedance/sdk/component/e/g;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :pswitch_0
    const/16 v0, 0x4a

    const/16 v1, 0x37

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_1
    packed-switch v1, :pswitch_data_1

    :pswitch_2
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-char v1, p0, v0

    xor-int/2addr v1, v0

    int-to-char v1, v1

    aput-char v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :goto_2
    :pswitch_4
    const/16 v0, 0x49

    const/16 v1, 0x60

    goto :goto_0

    :goto_3
    const/16 v0, 0x48

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/e/c/c;Ljava/lang/Object;)Lcom/bytedance/sdk/component/e/c/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/e/c/c;",
            "TT;)",
            "Lcom/bytedance/sdk/component/e/c/d;"
        }
    .end annotation

    iput-object p2, p0, Lcom/bytedance/sdk/component/e/c/d;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->e()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/e/c/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/e/c/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->b()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/component/e/c/d;->d:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->c()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/component/e/c/d;->e:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->l()Z

    move-result p2

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/e/c/d;->h:Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->m()Lcom/bytedance/sdk/component/e/g;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/e/c/d;->i:Lcom/bytedance/sdk/component/e/g;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->n()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/e/c/d;->j:I

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/component/e/c/c;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/bytedance/sdk/component/e/c/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/e/c/c;",
            "TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/bytedance/sdk/component/e/c/d;"
        }
    .end annotation

    iput-object p3, p0, Lcom/bytedance/sdk/component/e/c/d;->f:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/e/c/d;->g:Z

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/e/c/d;->a(Lcom/bytedance/sdk/component/e/c/c;Ljava/lang/Object;)Lcom/bytedance/sdk/component/e/c/d;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/d;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/d;->f:Ljava/util/Map;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/e/c/d;->h:Z

    return v0
.end method

.method public e()Lcom/bytedance/sdk/component/e/g;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/d;->i:Lcom/bytedance/sdk/component/e/g;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/e/c/d;->j:I

    return v0
.end method

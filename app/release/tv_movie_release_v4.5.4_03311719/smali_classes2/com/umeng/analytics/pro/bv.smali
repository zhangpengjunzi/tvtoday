.class public Lcom/umeng/analytics/pro/bv;
.super Ljava/lang/Object;
.source "TProtocolUtil.java"


# static fields
.field private static a:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLcom/umeng/analytics/pro/bu;)Lcom/umeng/analytics/pro/bu;
    .locals 2

    const/4 v0, 0x0

    .line 171
    aget-byte v0, p0, v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 172
    new-instance p0, Lcom/umeng/analytics/pro/bm$a;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/bm$a;-><init>()V

    return-object p0

    .line 185
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1

    .line 186
    new-instance p0, Lcom/umeng/analytics/pro/bm$a;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/bm$a;-><init>()V

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static a(I)V
    .locals 0

    .line 49
    sput p0, Lcom/umeng/analytics/pro/bv;->a:I

    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/bs;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 60
    sget v0, Lcom/umeng/analytics/pro/bv;->a:I

    invoke-static {p0, p1, v0}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V

    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/bs;BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    if-lez p2, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 136
    :pswitch_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->p()Lcom/umeng/analytics/pro/bo;

    move-result-object p1

    .line 137
    :goto_0
    iget v1, p1, Lcom/umeng/analytics/pro/bo;->b:I

    if-ge v0, v1, :cond_0

    .line 138
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bo;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->q()V

    goto/16 :goto_4

    .line 128
    :pswitch_2
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->r()Lcom/umeng/analytics/pro/bw;

    move-result-object p1

    .line 129
    :goto_1
    iget v1, p1, Lcom/umeng/analytics/pro/bw;->b:I

    if-ge v0, v1, :cond_1

    .line 130
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bw;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->s()V

    goto :goto_4

    .line 119
    :pswitch_3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->n()Lcom/umeng/analytics/pro/bp;

    move-result-object p1

    .line 120
    :goto_2
    iget v1, p1, Lcom/umeng/analytics/pro/bp;->c:I

    if-ge v0, v1, :cond_2

    .line 121
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bp;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V

    .line 122
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bp;->b:B

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->o()V

    goto :goto_4

    .line 106
    :pswitch_4
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->j()Lcom/umeng/analytics/pro/bx;

    .line 108
    :goto_3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    move-result-object p1

    .line 109
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bn;->b:B

    if-nez v0, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->k()V

    goto :goto_4

    .line 112
    :cond_3
    iget-byte p1, p1, Lcom/umeng/analytics/pro/bn;->b:B

    add-int/lit8 v0, p2, -0x1

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->m()V

    goto :goto_3

    .line 102
    :pswitch_5
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->A()Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 94
    :pswitch_6
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->x()J

    goto :goto_4

    .line 90
    :pswitch_7
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->w()I

    goto :goto_4

    .line 86
    :pswitch_8
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->v()S

    goto :goto_4

    .line 98
    :pswitch_9
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->y()D

    goto :goto_4

    .line 82
    :pswitch_a
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->u()B

    goto :goto_4

    .line 78
    :pswitch_b
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->t()Z

    :goto_4
    return-void

    .line 74
    :cond_4
    new-instance p0, Lcom/umeng/analytics/pro/az;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/az;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 112
    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.class public Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;
.super Ljava/lang/Object;
.source "LayoutUnitSizeUtils.java"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "dislike"

    const-string v2, "close"

    const-string v3, "close-fill"

    const-string v4, "webview-close"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a:Ljava/util/Set;

    return-void
.end method

.method private static a(Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;
    .locals 2

    const-string v0, "union"

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 236
    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    .line 237
    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F

    goto :goto_0

    .line 239
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 242
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 243
    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    .line 244
    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F

    :goto_0
    return-object p0

    .line 246
    :cond_2
    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;
    .locals 9

    .line 40
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;-><init>()V

    const-string v1, "<svg"

    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "fontSize"

    const/high16 v3, 0x41200000    # 10.0f

    if-nez v1, :cond_20

    sget-object v1, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string v1, "logo"

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 58
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/c;->b()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "adx:"

    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->b()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 60
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 61
    sget-object p1, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->b:Ljava/lang/String;

    invoke-static {v0, p0, p2, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p1, ""

    .line 63
    invoke-static {v0, p0, p2, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p3, "union"

    .line 66
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    const/high16 p3, 0x41200000    # 10.0f

    goto :goto_0

    :cond_5
    const/high16 p3, 0x41a00000    # 20.0f

    .line 67
    :goto_0
    iput p3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    .line 68
    iput v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/c;->b()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 70
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "logoad"

    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "AD"

    .line 72
    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0

    :cond_7
    const-string v1, "development-name"

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f00\u53d1\u8005\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8
    const-string v3, "app-version"

    .line 83
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7248\u672c\u53f7\uff1aV"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_9
    const-string v4, "score-count"

    .line 87
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ")"

    const-string v6, "("

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_a

    .line 90
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    .line 94
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/c;->a()Landroid/content/Context;

    move-result-object p1

    const-string p3, "tt_comment_num"

    invoke-static {p1, p3}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v7, [Ljava/lang/Object;

    .line 95
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v8

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_a
    const-string v4, "score-count-type-2"

    .line 98
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 101
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const/4 p0, 0x0

    .line 105
    :goto_2
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p3, "###,###,###"

    invoke-direct {p1, p3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long p3, p0

    .line 106
    invoke-virtual {p1, p3, p4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    new-array p3, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v8

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v4, "feedback-dislike"

    .line 109
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 110
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/c;->a()Landroid/content/Context;

    move-result-object p0

    const-string p1, "tt_reward_feedback"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_c
    const-string v4, "skip-with-time-countdown"

    .line 113
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "skip-with-countdowns-video-countdown"

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto/16 :goto_8

    :cond_d
    const-string v4, "skip-with-countdowns-skip-btn"

    .line 116
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, " | "

    const-string v6, "tt_reward_screen_skip_tx"

    if-eqz v4, :cond_e

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/c;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_e
    const-string v4, "skip-with-countdowns-skip-countdown"

    .line 120
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 121
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/c;->a()Landroid/content/Context;

    move-result-object p0

    const-string p1, "tt_reward_full_skip_count_down"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v7, [Ljava/lang/Object;

    const-string p3, "00"

    aput-object p3, p1, v8

    .line 122
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_f
    const-string v4, "skip-with-time-skip-btn"

    .line 126
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " |  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/c;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_10
    const-string v4, "skip"

    .line 130
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 131
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/c;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v6}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_11
    const-string v4, "timedown"

    .line 134
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string p0, "0.0"

    .line 135
    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_12
    const-string v4, "text_star"

    .line 137
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string p0, "0.00"

    .line 138
    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_13
    const-string v4, "privacy-detail"

    .line 140
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string p0, "\u6743\u9650\u5217\u8868 | \u9690\u79c1\u653f\u7b56"

    .line 141
    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_14
    const-string v4, "arrowButton"

    .line 143
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string p0, "\u7acb\u5373\u4e0b\u8f7d"

    .line 144
    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_15
    const-string v5, "title"

    .line 146
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/16 v5, 0xa

    const/16 v6, 0x20

    .line 148
    :try_start_2
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2, v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    nop

    :cond_16
    const-string v5, "fillButton"

    .line 154
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "text"

    .line 155
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "button"

    .line 156
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "downloadWithIcon"

    .line 157
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "downloadButton"

    .line 158
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "laceButton"

    .line 159
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "cardButton"

    .line 160
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "colourMixtureButton"

    .line 161
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 162
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    const-string v4, "source"

    .line 163
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 164
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 165
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto/16 :goto_7

    .line 174
    :cond_17
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 176
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float p2, v2

    const-string v2, "letterSpacing"

    .line 177
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    const-string v3, "lineHeight"

    .line 178
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    const-string v4, "maxWidth"

    .line 179
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    int-to-float p0, p0

    add-float v4, p2, v2

    mul-float p0, p0, v4

    sub-float/2addr p0, v2

    const-string v4, "DynamicBaseWidget"

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDomSizeFromNative letterSpacing=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",lineHeight=="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",maxWidth =="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",totalStrLength"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "muted"

    .line 185
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 186
    iput p2, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    .line 187
    iput p2, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F

    return-object v0

    :cond_18
    const-string v2, "star"

    .line 190
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/high16 p0, 0x40a00000    # 5.0f

    mul-float p0, p0, p2

    .line 191
    iput p0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    .line 192
    iput p2, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F

    return-object v0

    :cond_19
    const-string v2, "icon"

    .line 195
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 196
    iput p2, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    .line 197
    iput p2, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :cond_1a
    const-wide v4, 0x3ff3333333333333L    # 1.2

    if-eqz p3, :cond_1c

    div-float/2addr p0, v1

    float-to-int p0, p0

    add-int/2addr p0, v7

    if-eqz p4, :cond_1b

    if-lt p0, p5, :cond_1b

    goto :goto_3

    :cond_1b
    move p5, p0

    :goto_3
    mul-float v3, v3, p2

    int-to-float p0, p5

    mul-float v3, v3, p0

    float-to-double p0, v3

    .line 206
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v4

    double-to-float p0, p0

    goto :goto_5

    :cond_1c
    mul-float v3, v3, p2

    float-to-double p1, v3

    .line 208
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v4

    double-to-float p1, p1

    cmpl-float p2, p0, v1

    if-lez p2, :cond_1d

    goto :goto_4

    :cond_1d
    move v1, p0

    :goto_4
    move p0, p1

    .line 212
    :goto_5
    :try_start_4
    iput v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    .line 213
    iput p0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception p0

    .line 215
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_6
    return-object v0

    .line 166
    :cond_1e
    :goto_7
    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_1f
    :goto_8
    const-string p0, "00S"

    .line 114
    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    return-object p0

    :cond_20
    :goto_9
    :try_start_5
    const-string p0, "close"

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 45
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide p0

    double-to-float p0, p0

    .line 46
    iput p0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    .line 47
    iput p0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    return-object v0

    .line 53
    :catch_4
    :cond_21
    iput v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    .line 54
    iput v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;
    .locals 3

    .line 270
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;-><init>()V

    .line 273
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "fontSize"

    .line 275
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int p1, v1

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;IZ)[I

    move-result-object p0

    const/4 p1, 0x0

    .line 276
    aget p1, p0, p1

    int-to-float p1, p1

    iput p1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    const/4 p1, 0x1

    .line 277
    aget p0, p0, p1

    int-to-float p0, p0

    iput p0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 279
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 307
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 222
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "adx:"

    .line 225
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 226
    array-length v0, p0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 229
    aget-object p0, p0, v0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static a(Ljava/lang/String;FZ)[I
    .locals 2

    .line 291
    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 292
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 293
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 294
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    if-eqz p2, :cond_0

    .line 296
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    :cond_0
    const/4 p1, -0x2

    .line 298
    invoke-virtual {v0, p1, p1}, Landroid/widget/TextView;->measure(II)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 299
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    aput v1, p2, p0

    const/4 p0, 0x1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p1

    aput v0, p2, p0

    return-object p2
.end method

.method public static a(Ljava/lang/String;IZ)[I
    .locals 2

    int-to-float p1, p1

    .line 285
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;FZ)[I

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 286
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/c;->a()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-float v1, v1

    invoke-static {p2, v1}, Lcom/bytedance/sdk/component/adexpress/c/b;->b(Landroid/content/Context;F)I

    move-result p2

    aput p2, p1, v0

    .line 287
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/c;->a()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float p0, p0

    invoke-static {p2, p0}, Lcom/bytedance/sdk/component/adexpress/c/b;->b(Landroid/content/Context;F)I

    move-result p0

    aput p0, p1, v0

    return-object p1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Ljava/lang/String;
    .locals 1

    .line 254
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 255
    invoke-static/range {p0 .. p5}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object p0

    :try_start_0
    const-string p1, "width"

    .line 257
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    float-to-double p2, p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "height"

    .line 258
    iget p0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F

    float-to-double p2, p0

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 260
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 262
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .line 303
    sput-object p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->b:Ljava/lang/String;

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 312
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

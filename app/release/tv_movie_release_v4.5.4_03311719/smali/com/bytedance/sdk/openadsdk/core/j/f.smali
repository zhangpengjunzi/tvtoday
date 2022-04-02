.class public Lcom/bytedance/sdk/openadsdk/core/j/f;
.super Ljava/lang/Object;
.source "TTSdkSettings.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/j/b;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field static f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/lang/String;

.field private static final p:Ljava/lang/String;

.field private static final q:Ljava/lang/String;

.field private static final r:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:I

.field private G:I

.field private H:J

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:I

.field private Q:I

.field private R:Ljava/lang/String;

.field private S:I

.field private T:Ljava/lang/String;

.field private U:I

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Z

.field private Y:Ljava/lang/String;

.field private Z:I

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private final ah:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile ai:Z

.field private final aj:Lcom/bytedance/sdk/component/utils/u;

.field private ak:I

.field private al:F

.field private am:I

.field private an:I

.field private g:I

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/j/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 300
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/t;->l()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->n:Ljava/lang/String;

    const/4 v0, 0x0

    .line 312
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->p:Ljava/lang/String;

    .line 313
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->q:Ljava/lang/String;

    .line 314
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->r:Ljava/lang/String;

    .line 381
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->a:Ljava/lang/String;

    const-string v0, "IABTCF_TCString"

    .line 383
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->b:Ljava/lang/String;

    .line 394
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_txt_skip"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->c:Ljava/lang/String;

    .line 395
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_feedback_submit_text"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->d:Ljava/lang/String;

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_feedback_thank_text"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_feedback_experience_text"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->e:Ljava/lang/String;

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "ja"

    const-string v2, "en"

    const-string v3, "ko"

    const-string v4, "zh"

    const-string v5, "th"

    const-string v6, "vi"

    const-string v7, "id"

    const-string v8, "ru"

    const-string v9, "ar"

    const-string v10, "fr"

    const-string v11, "de"

    const-string v12, "it"

    const-string v13, "es"

    const-string v14, "hi"

    const-string v15, "pt"

    const-string v16, "zh-Hant"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 182
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->g:I

    .line 273
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->h:Ljava/util/Map;

    .line 276
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->k:Ljava/util/Set;

    .line 278
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->m:Ljava/util/Set;

    .line 308
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->o:Ljava/util/Set;

    .line 322
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->t:I

    .line 323
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->u:I

    .line 329
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->z:I

    .line 330
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->A:I

    .line 331
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->B:I

    const-wide/16 v1, 0x0

    .line 332
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->C:J

    .line 333
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->D:Ljava/util/Set;

    .line 334
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->E:Ljava/util/Set;

    .line 335
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->F:I

    .line 336
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->G:I

    const-wide/32 v1, 0x7fffffff

    .line 338
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->H:J

    .line 339
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->I:I

    .line 341
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->J:I

    .line 342
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->K:I

    .line 348
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->L:I

    .line 356
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->P:I

    .line 359
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->S:I

    const/4 v1, 0x0

    .line 362
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->V:Ljava/lang/String;

    .line 363
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->W:Ljava/lang/String;

    const/4 v1, 0x0

    .line 365
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->X:Z

    const-string v2, ""

    .line 366
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    .line 367
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Z:I

    .line 369
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aa:I

    .line 372
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ab:I

    .line 373
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ac:I

    .line 374
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ad:I

    .line 375
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ae:I

    .line 376
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->af:I

    .line 378
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ag:I

    .line 379
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ah:Ljava/util/Set;

    .line 385
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ai:Z

    .line 390
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ak:I

    const/high16 v1, 0x4f000000

    .line 392
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->al:F

    .line 400
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->am:I

    .line 401
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->an:I

    .line 404
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_sdk_settings"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/component/utils/u;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    return-void
.end method

.method private I()V
    .locals 3

    const/4 v0, 0x0

    .line 925
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->v:Ljava/lang/String;

    .line 926
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v1, "ab_test_param"

    const-string v2, "ab_test_version"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 927
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/utils/u;->c(Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    return p1

    :cond_0
    const/4 p1, 0x5

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1010
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v2

    const-string v3, "scheme_list_data"

    const-string v4, "hit_app_list_data"

    const-string v5, "hit_app_list_time"

    const-string v6, "disable_rotate_banner_on_dislike"

    const-string v7, "fetch_tpl_timeout_ctrl"

    const-string v8, "max_tpl_cnts"

    const-string v9, "app_list_control"

    const-string v10, "support_tnc"

    const-string v11, "if_both_open"

    const-string v12, "splash_check_type"

    const-string v13, "splash_load_type"

    const-string v14, "playableLoadH5Url"

    const-string v15, "insert_js_config"

    const-string v1, "pyload_h5"

    move-object/from16 p2, v3

    const-string v3, "fetch_template"

    move-object/from16 v16, v4

    const-string v4, "download_config_dl_size"

    move-object/from16 v17, v5

    const-string v5, "download_config_dl_network"

    move-object/from16 v18, v6

    const-string v6, "max"

    move-object/from16 v19, v7

    const-string v7, "duration"

    move-object/from16 v20, v8

    const-string v8, "xpath"

    move-object/from16 v21, v9

    const-string v9, "privacy_fields_allowed"

    if-eqz v2, :cond_8

    .line 1012
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->s:Ljava/lang/String;

    move-object/from16 v22, v9

    const-string v9, "tt_sdk_settings"

    invoke-static {v9, v8, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v23, v1

    .line 1013
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->H:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v9, v7, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1014
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->I:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v6, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1015
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v5, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1016
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v4, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1017
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->J:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vbtt"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1018
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->K:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v3, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1019
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v13, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1020
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->A:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v12, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1021
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v11, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1022
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->G:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v10, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1023
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->j:Ljava/lang/String;

    invoke-static {v9, v15, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->x:Ljava/lang/String;

    move-object/from16 v2, v23

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->y:Ljava/lang/String;

    invoke-static {v9, v14, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1027
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aa:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1028
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1029
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->am:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1030
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->C:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1031
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->D:Ljava/util/Set;

    move-object/from16 v2, v16

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 1032
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->E:Ljava/util/Set;

    move-object/from16 v2, p2

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 1033
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->M:Ljava/lang/String;

    const-string v2, "ads_url"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->N:Ljava/lang/String;

    const-string v2, "app_log_url"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->O:Ljava/lang/String;

    const-string v2, "apm_url"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->P:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "coppa"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1037
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ccpa"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1038
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->R:Ljava/lang/String;

    const-string v2, "policy_url"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->T:Ljava/lang/String;

    const-string v2, "consent_url"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->U:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "network_module"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1041
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->V:Ljava/lang/String;

    const-string v2, "dyn_draw_engine_url"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->W:Ljava/lang/String;

    const-string v2, "dc"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->S:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isGdprUser"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1045
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sp_key_if_sp_cache"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1047
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->an:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "landingpage_new_style"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1049
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->f:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1050
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    const-string v2, "force_language"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    :cond_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->v:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "ab_test_version"

    .line 1054
    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    :cond_1
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->w:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "ab_test_param"

    .line 1057
    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ad_slot_conf"

    move-object/from16 v2, p1

    .line 1060
    invoke-static {v9, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :cond_3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1063
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->l:Ljava/lang/String;

    const-string v2, "template_ids"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :cond_4
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1066
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->i:Ljava/lang/String;

    const-string v2, "tpl_infos"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :cond_5
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ab:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "privacy_ad_enable"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1071
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "privacy_personalized_ad"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1072
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ad:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "privacy_sladar_enable"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1073
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ae:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "privacy_app_log_enable"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1074
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->af:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "privacy_sec_enable"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1076
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "privacy_debug_unlock"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1078
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->o:Ljava/util/Set;

    const-string v2, "gecko_hosts"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 1081
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ah:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1083
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1084
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ah:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1085
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1087
    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object/from16 v2, v22

    const-string v1, ""

    .line 1089
    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :goto_1
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ak:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_video_from_cache"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1093
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->al:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "global_rate"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 1094
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->L:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "webview_cache_count"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_8
    move-object/from16 v24, v9

    move-object/from16 v2, v21

    move-object v9, v1

    .line 1099
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->s:Ljava/lang/String;

    invoke-virtual {v1, v8, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    move-object v8, v10

    move-object v2, v11

    iget-wide v10, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->H:J

    invoke-virtual {v1, v7, v10, v11}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;J)V

    .line 1101
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v7, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->I:I

    invoke-virtual {v1, v6, v7}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1102
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v6, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->t:I

    invoke-virtual {v1, v5, v6}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1103
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v5, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->u:I

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1104
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v4, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->K:I

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1105
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->x:Ljava/lang/String;

    invoke-virtual {v1, v9, v3}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->j:Ljava/lang/String;

    invoke-virtual {v1, v15, v3}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->y:Ljava/lang/String;

    invoke-virtual {v1, v14, v3}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->z:I

    invoke-virtual {v1, v13, v3}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1109
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->A:I

    invoke-virtual {v1, v12, v3}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1110
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->F:I

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1111
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->G:I

    invoke-virtual {v1, v8, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1112
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->B:I

    move-object/from16 v3, v21

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1113
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aa:I

    move-object/from16 v3, v20

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1114
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Z:I

    move-object/from16 v3, v19

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1115
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->am:I

    move-object/from16 v3, v18

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1117
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->C:J

    move-object/from16 v4, v17

    invoke-virtual {v1, v4, v2, v3}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;J)V

    .line 1118
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->D:Ljava/util/Set;

    move-object/from16 v3, v16

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 1119
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->E:Ljava/util/Set;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 1120
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->M:Ljava/lang/String;

    const-string v3, "ads_url"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->N:Ljava/lang/String;

    const-string v3, "app_log_url"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->O:Ljava/lang/String;

    const-string v3, "apm_url"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->P:I

    const-string v3, "coppa"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1124
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Q:I

    const-string v3, "ccpa"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1125
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->R:Ljava/lang/String;

    const-string v3, "policy_url"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->T:Ljava/lang/String;

    const-string v3, "consent_url"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->U:I

    const-string v3, "network_module"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1128
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->V:Ljava/lang/String;

    const-string v3, "dyn_draw_engine_url"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->W:Ljava/lang/String;

    const-string v3, "dc"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->S:I

    const-string v3, "isGdprUser"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1132
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->g:I

    const-string v3, "sp_key_if_sp_cache"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1133
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->an:I

    const-string v3, "landingpage_new_style"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1135
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->f:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1136
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    const-string v3, "force_language"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :cond_9
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->v:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1140
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v3, "ab_test_version"

    invoke-virtual {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    :cond_a
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->w:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1143
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v3, "ab_test_param"

    invoke-virtual {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    :cond_b
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->J:I

    const-string v3, "vbtt"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1148
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1149
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v2, "ad_slot_conf"

    move-object/from16 v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    :cond_c
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1153
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->l:Ljava/lang/String;

    const-string v3, "template_ids"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    :cond_d
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1157
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->i:Ljava/lang/String;

    const-string v3, "tpl_infos"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    :cond_e
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ab:I

    const-string v3, "privacy_ad_enable"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1163
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ac:I

    const-string v3, "privacy_personalized_ad"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1164
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ad:I

    const-string v3, "privacy_sladar_enable"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1165
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ae:I

    const-string v3, "privacy_app_log_enable"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1166
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->af:I

    const-string v3, "privacy_sec_enable"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1167
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ag:I

    const-string v3, "privacy_debug_unlock"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1169
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->o:Ljava/util/Set;

    const-string v3, "gecko_hosts"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 1172
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ah:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 1174
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1175
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ah:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1176
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 1178
    :cond_f
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v24

    invoke-virtual {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    move-object/from16 v3, v24

    .line 1180
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v2, ""

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :goto_3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ak:I

    const-string v3, "read_video_from_cache"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    .line 1184
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->al:F

    const-string v3, "global_rate"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;F)V

    .line 1185
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->L:I

    const-string v3, "webview_cache_count"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 29

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "code_id"

    .line 654
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto_play"

    const/4 v3, 0x1

    .line 655
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "voice_control"

    .line 656
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "rv_preload"

    const/4 v7, 0x2

    .line 657
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v8, "nv_preload"

    .line 658
    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const/16 v9, 0x64

    const-string v10, "proportion_watching"

    .line 660
    invoke-virtual {v0, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "skip_time_displayed"

    const/4 v11, 0x0

    .line 661
    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v12, "video_skip_result"

    .line 662
    invoke-virtual {v0, v12, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "reg_creative_control"

    .line 663
    invoke-virtual {v0, v13, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x3

    const-string v15, "play_bar_show_time"

    .line 664
    invoke-virtual {v0, v15, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "rv_skip_time"

    const/4 v11, -0x1

    .line 665
    invoke-virtual {v0, v15, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 666
    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v11, "if_show_win"

    .line 667
    invoke-virtual {v0, v11, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v3, "sp_preload"

    .line 668
    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v7, 0x5dc

    move/from16 v19, v3

    const-string v3, "stop_time"

    .line 669
    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v7, "native_playable_delay"

    move/from16 v20, v3

    const/4 v3, 0x2

    .line 670
    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v3, "time_out_control"

    move/from16 v21, v7

    const/4 v7, -0x1

    .line 671
    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "playable_close_time"

    .line 672
    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v7, "playable_reward_type"

    move/from16 v22, v3

    const/4 v3, 0x0

    .line 673
    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    move/from16 v16, v7

    const-string v7, "reward_is_callback"

    .line 674
    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v3, "iv_skip_time"

    move/from16 v24, v7

    const/4 v7, 0x5

    .line 675
    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v7, "parent_tpl_ids"

    .line 676
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move-object/from16 v25, v7

    const-string v7, "slot_type"

    move/from16 v26, v3

    const/4 v3, 0x2

    .line 677
    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v7, "close_on_click"

    move/from16 v18, v3

    const/4 v3, 0x0

    .line 678
    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    move/from16 v23, v7

    const-string v7, "allow_system_back"

    .line 679
    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    move/from16 v27, v7

    const-string v7, "splash_skip_time"

    .line 680
    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v7, "splash_image_count_down_time"

    move/from16 v28, v3

    const/4 v3, 0x5

    .line 681
    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 683
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/j/f;->k(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v5, 0x1

    .line 686
    :cond_1
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/j/f;->k(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 690
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/j/a;->a()Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v4

    .line 691
    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/j/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    .line 692
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->k(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    .line 693
    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/j/a;->l(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    .line 694
    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/core/j/a;->m(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    .line 695
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/j/a;->n(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    .line 697
    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/openadsdk/core/j/a;->o(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    .line 698
    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/core/j/a;->p(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    .line 699
    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/openadsdk/core/j/a;->q(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    .line 700
    invoke-virtual {v1, v13}, Lcom/bytedance/sdk/openadsdk/core/j/a;->r(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    .line 701
    invoke-virtual {v1, v14}, Lcom/bytedance/sdk/openadsdk/core/j/a;->j(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    .line 702
    invoke-virtual {v1, v15}, Lcom/bytedance/sdk/openadsdk/core/j/a;->i(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    .line 703
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/j/a;->h(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    .line 704
    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/core/j/a;->s(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    move/from16 v2, v19

    .line 705
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->e(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    move/from16 v2, v20

    .line 706
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->f(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    move/from16 v2, v21

    .line 707
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->g(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    move/from16 v2, v17

    .line 708
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->d(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    move/from16 v2, v16

    .line 709
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->b(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    move/from16 v2, v24

    .line 710
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->c(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    move/from16 v2, v22

    .line 711
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->a(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    move/from16 v2, v18

    .line 712
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->t(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    move/from16 v2, v26

    .line 713
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->u(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    move-object/from16 v2, v25

    .line 714
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->a(Lorg/json/JSONArray;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    move/from16 v2, v23

    .line 715
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->a(Z)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    move/from16 v2, v27

    .line 716
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->v(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    move/from16 v2, v28

    .line 717
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->w(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    .line 718
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/j/a;->x(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v0

    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 940
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v1, "dyn_draw_engine_url"

    if-eqz v0, :cond_1

    .line 941
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->n:Ljava/lang/String;

    const-string v2, "tt_sdk_settings"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/j/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    :goto_0
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/j/f;->n:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->V:Ljava/lang/String;

    .line 947
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settinng---TTDynamic.init().....oldDynDrawEngineUrl="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TemplateManager"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settinng---TTDynamic.init().....newmDynDrawEngineUrl="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->V:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->V:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->V:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Reinitialize the template TTDynamic.init()....."

    .line 950
    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    .line 952
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 954
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 960
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/b;->a()Lcom/bytedance/sdk/component/adexpress/a/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/a/b/b;->g()V

    .line 961
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/b;->a()Lcom/bytedance/sdk/component/adexpress/a/b/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/a/b/b;->b(Z)V

    .line 963
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/a;->b()V

    .line 966
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/b;->a()Lcom/bytedance/sdk/component/adexpress/a/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/a/b/b;->b()V

    :cond_2
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "is_gdpr_user"

    const/4 v1, -0x1

    .line 979
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->S:I

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 981
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->S:I

    :cond_0
    return-void
.end method

.method private e(Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "splash_load_type"

    const/4 v1, 0x1

    .line 986
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->z:I

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return v1

    .line 993
    :cond_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->z:I

    return p1
.end method

.method private f(Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "splash_check_type"

    const/4 v1, 0x1

    .line 999
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->A:I

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    return v1

    .line 1004
    :cond_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->A:I

    return p1
.end method

.method private static k(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 4

    .line 1816
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1820
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/j/a;->a()Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v2

    .line 1821
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/j/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1822
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/j/a;->k(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1823
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/j/a;->l(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    const/4 v0, 0x2

    .line 1824
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/j/a;->m(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1825
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/j/a;->n(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    const/16 v2, 0x64

    .line 1827
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->o(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    const/4 v2, 0x0

    .line 1828
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->p(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1829
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/j/a;->r(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    const/4 v3, 0x3

    .line 1830
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/j/a;->j(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    const/4 v3, -0x1

    .line 1831
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/j/a;->i(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1832
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/j/a;->h(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1833
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/j/a;->s(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1834
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/j/a;->d(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1835
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/j/a;->a(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1836
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/j/a;->t(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    const/4 v0, 0x5

    .line 1837
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/j/a;->u(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    const/4 v1, 0x0

    .line 1838
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/j/a;->a(Lorg/json/JSONArray;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1839
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->a(Z)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1840
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->v(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1841
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/a;->w(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1842
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/j/a;->x(I)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A()I
    .locals 3

    .line 1888
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ac:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1889
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v2, "privacy_personalized_ad"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1890
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ac:I

    goto :goto_0

    .line 1892
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ac:I

    .line 1896
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ac:I

    if-eq v0, v1, :cond_2

    return v0

    .line 1900
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/t;->n()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public B()Z
    .locals 3

    .line 1925
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ad:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1926
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v2, "privacy_sladar_enable"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1927
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ad:I

    goto :goto_0

    .line 1929
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ad:I

    .line 1933
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ad:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public C()Z
    .locals 5

    .line 1977
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->af:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1978
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v2, "privacy_sec_enable"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1979
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->af:I

    goto :goto_0

    .line 1981
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->af:I

    .line 1985
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/j/f;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/t;->n()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 1989
    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->af:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    return v3

    :cond_3
    if-nez v0, :cond_4

    return v1

    .line 1995
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/t;->n()I

    move-result v0

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    return v3

    :cond_6
    :goto_1
    return v1
.end method

.method public D()Z
    .locals 3

    .line 2020
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ag:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 2021
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v2, "privacy_debug_unlock"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 2022
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ag:I

    goto :goto_0

    .line 2024
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ag:I

    .line 2027
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ag:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public E()Z
    .locals 1

    .line 2106
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ai:Z

    return v0
.end method

.method public F()Z
    .locals 3

    .line 2110
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->al:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x4f000000

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 2111
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v2, "global_rate"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 2112
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->al:F

    goto :goto_0

    .line 2114
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->al:F

    .line 2117
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->al:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public G()Z
    .locals 3

    .line 2122
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ak:I

    const/4 v1, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 2123
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v2, "read_video_from_cache"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 2124
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ak:I

    goto :goto_0

    .line 2126
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ak:I

    .line 2129
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ak:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public H()I
    .locals 3

    .line 2133
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->L:I

    const/16 v1, 0x14

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 2134
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v2, "webview_cache_count"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 2135
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->L:I

    goto :goto_0

    .line 2137
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->L:I

    .line 2140
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->L:I

    if-gez v0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 974
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 975
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->r:I

    return p1
.end method

.method public a(Ljava/lang/String;Z)I
    .locals 2

    if-nez p1, :cond_0

    .line 1557
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/j/f;->a(Z)I

    move-result p1

    return p1

    .line 1558
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1559
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->x:I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/j/f;->a(Z)I

    move-result p1

    :goto_0
    return p1
.end method

.method public a(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2091
    :try_start_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 2093
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2094
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2095
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2096
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    return-object v0

    .line 2101
    :catchall_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1
.end method

.method public declared-synchronized a()V
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    const/4 v2, 0x1

    .line 409
    :try_start_0
    iput-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ai:Z

    .line 410
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v3

    const/16 v11, 0xbb8

    const/4 v12, 0x5

    const/16 v13, 0xe10

    const/16 v14, 0x1e

    const/16 v15, 0x32

    const-wide/16 v4, 0x2710

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    if-eqz v3, :cond_7

    const-string v3, "tt_sdk_settings"

    const-string v9, "xpath"

    const-string v10, ""

    .line 412
    invoke-static {v3, v9, v10}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->s:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v9, "duration"

    .line 413
    invoke-static {v3, v9, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->H:J

    const-string v3, "tt_sdk_settings"

    const-string v4, "max"

    .line 414
    invoke-static {v3, v4, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->I:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "download_config_dl_network"

    .line 415
    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->t:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "download_config_dl_size"

    .line 416
    invoke-static {v3, v4, v14}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->u:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "vbtt"

    .line 417
    invoke-static {v3, v4, v12}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->J:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "fetch_template"

    .line 418
    invoke-static {v3, v4, v13}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->K:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "template_ids"

    .line 419
    invoke-static {v3, v4, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->l:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v4, "ab_test_version"

    .line 420
    invoke-static {v3, v4, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->v:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v4, "ab_test_param"

    .line 421
    invoke-static {v3, v4, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->w:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v4, "pyload_h5"

    .line 422
    invoke-static {v3, v4, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->x:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v4, "playableLoadH5Url"

    .line 423
    invoke-static {v3, v4, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->y:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v4, "splash_load_type"

    .line 424
    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->z:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "splash_check_type"

    .line 425
    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->A:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "if_both_open"

    .line 426
    invoke-static {v3, v4, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->F:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "support_tnc"

    .line 427
    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->G:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "force_language"

    const-string v5, ""

    .line 428
    invoke-static {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v4, "fetch_tpl_timeout_ctrl"

    .line 429
    invoke-static {v3, v4, v11}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->Z:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "disable_rotate_banner_on_dislike"

    .line 430
    invoke-static {v3, v4, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->am:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "max_tpl_cnts"

    const/16 v5, 0x64

    .line 431
    invoke-static {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aa:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "tpl_infos"

    .line 433
    invoke-static {v3, v4, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->i:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v4, "insert_js_config"

    .line 434
    invoke-static {v3, v4, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->j:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v4, "app_list_control"

    .line 435
    invoke-static {v3, v4, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->B:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "hit_app_list_time"

    const-wide/16 v9, 0x0

    .line 436
    invoke-static {v3, v4, v9, v10}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->C:J

    const-string v3, "tt_sdk_settings"

    const-string v4, "ads_url"

    .line 439
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/j/f;->q:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->M:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v4, "app_log_url"

    .line 440
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/j/f;->p:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->N:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v4, "apm_url"

    const-string v5, ""

    .line 441
    invoke-static {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->O:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v4, "coppa"

    const/16 v5, -0x63

    .line 442
    invoke-static {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->P:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "ccpa"

    const/4 v5, -0x1

    .line 443
    invoke-static {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->Q:I

    .line 444
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v3

    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->P:I

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/h;->d(I)V

    const-string v3, "tt_sdk_settings"

    const-string v4, "policy_url"

    .line 445
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/j/f;->r:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->R:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v4, "consent_url"

    const-string v5, "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html"

    .line 446
    invoke-static {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->T:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v4, "network_module"

    .line 447
    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->U:I

    .line 448
    invoke-static {}, Lcom/bytedance/sdk/component/b/a/a/a;->a()Lcom/bytedance/sdk/component/b/a/a/a;

    move-result-object v3

    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->U:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/b/a/a/a;->a(Z)V

    const-string v3, "tt_sdk_settings"

    const-string v4, "isGdprUser"

    const/4 v5, -0x1

    .line 449
    invoke-static {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->S:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "dyn_draw_engine_url"

    .line 450
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/j/f;->n:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->V:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v4, "dc"

    .line 451
    invoke-static {v3, v4, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->W:Ljava/lang/String;

    const-string v3, "tt_sdk_settings"

    const-string v4, "privacy_ad_enable"

    .line 454
    invoke-static {v3, v4, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ab:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "privacy_personalized_ad"

    .line 455
    invoke-static {v3, v4, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ac:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "privacy_sladar_enable"

    .line 456
    invoke-static {v3, v4, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ad:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "privacy_app_log_enable"

    .line 457
    invoke-static {v3, v4, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ae:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "privacy_sec_enable"

    .line 458
    invoke-static {v3, v4, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->af:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "privacy_debug_unlock"

    .line 460
    invoke-static {v3, v4, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ag:I

    const-string v3, "tt_sdk_settings"

    const-string v4, "privacy_fields_allowed"

    .line 461
    invoke-static {v3, v4, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tt_sdk_settings"

    const-string v5, "webview_cache_count"

    const/16 v9, 0x14

    .line 462
    invoke-static {v4, v5, v9}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->L:I

    .line 464
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->o:Ljava/util/Set;

    if-eqz v4, :cond_1

    .line 465
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->o:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    :cond_1
    const-string v4, "tt_sdk_settings"

    const-string v5, "gecko_hosts"

    .line 467
    invoke-static {v4, v5, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->o:Ljava/util/Set;

    .line 468
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/j/f;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->o:Ljava/util/Set;

    const-string v4, "tt_sdk_settings"

    const-string v5, "global_rate"

    const/high16 v9, 0x3f800000    # 1.0f

    .line 470
    invoke-static {v4, v5, v9}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v4

    iput v4, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->al:F

    const-string v4, "tt_sdk_settings"

    const-string v5, "sp_key_if_sp_cache"

    .line 473
    invoke-static {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->g:I

    const-string v4, "tt_sdk_settings"

    const-string v5, "landingpage_new_style"

    .line 475
    invoke-static {v4, v5, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->an:I

    .line 477
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 479
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 481
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ah:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    .line 483
    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ah:Ljava/util/Set;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 486
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 491
    :cond_2
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->D:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    const-string v3, "tt_sdk_settings"

    const-string v4, "hit_app_list_data"

    .line 492
    invoke-static {v3, v4, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 493
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 494
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 495
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->D:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 498
    :cond_3
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->E:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    const-string v3, "tt_sdk_settings"

    const-string v4, "scheme_list_data"

    .line 499
    invoke-static {v3, v4, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 500
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 501
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 502
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->E:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const-string v3, "tt_sdk_settings"

    const-string v4, "ad_slot_conf"

    .line 507
    invoke-static {v3, v4, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 508
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_6

    .line 510
    :try_start_3
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 513
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->h:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    :goto_4
    if-ge v6, v3, :cond_6

    .line 515
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 516
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/j/f;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 518
    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->h:Ljava/util/Map;

    iget-object v8, v5, Lcom/bytedance/sdk/openadsdk/core/j/a;->a:Ljava/lang/String;

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :catch_1
    :cond_6
    :try_start_4
    const-string v3, "tt_sdk_settings"

    const-string v4, "read_video_from_cache"

    .line 527
    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ak:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 529
    monitor-exit p0

    return-void

    .line 532
    :cond_7
    :try_start_5
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v9, "xpath"

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->s:Ljava/lang/String;

    .line 533
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v9, "duration"

    invoke-virtual {v3, v9, v4, v5}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->H:J

    .line 534
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "max"

    invoke-virtual {v3, v4, v15}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->I:I

    .line 535
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "download_config_dl_network"

    invoke-virtual {v3, v4, v2}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->t:I

    .line 536
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "download_config_dl_size"

    invoke-virtual {v3, v4, v14}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->u:I

    .line 537
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "fetch_template"

    invoke-virtual {v3, v4, v13}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->K:I

    .line 538
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "ab_test_version"

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->v:Ljava/lang/String;

    .line 539
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "ab_test_param"

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->w:Ljava/lang/String;

    .line 541
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "vbtt"

    invoke-virtual {v3, v4, v12}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->J:I

    .line 542
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "template_ids"

    invoke-virtual {v3, v4, v8}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->l:Ljava/lang/String;

    .line 543
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "pyload_h5"

    invoke-virtual {v3, v4, v8}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->x:Ljava/lang/String;

    .line 544
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "playableLoadH5Url"

    invoke-virtual {v3, v4, v8}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->y:Ljava/lang/String;

    .line 545
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "splash_load_type"

    invoke-virtual {v3, v4, v2}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->z:I

    .line 546
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "splash_check_type"

    invoke-virtual {v3, v4, v2}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->A:I

    .line 547
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "if_both_open"

    invoke-virtual {v3, v4, v6}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->F:I

    .line 548
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "support_tnc"

    invoke-virtual {v3, v4, v2}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->G:I

    .line 549
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "tpl_infos"

    invoke-virtual {v3, v4, v8}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->i:Ljava/lang/String;

    .line 550
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "insert_js_config"

    invoke-virtual {v3, v4, v8}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->j:Ljava/lang/String;

    .line 551
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "app_list_control"

    invoke-virtual {v3, v4, v6}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->B:I

    .line 552
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "force_language"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    .line 553
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "fetch_tpl_timeout_ctrl"

    invoke-virtual {v3, v4, v11}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->Z:I

    .line 554
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "disable_rotate_banner_on_dislike"

    invoke-virtual {v3, v4, v7}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->am:I

    .line 555
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "max_tpl_cnts"

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aa:I

    .line 556
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "hit_app_list_time"

    const-wide/16 v9, 0x0

    invoke-virtual {v3, v4, v9, v10}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->C:J

    .line 558
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "ads_url"

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->M:Ljava/lang/String;

    .line 559
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "app_log_url"

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->N:Ljava/lang/String;

    .line 560
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "apm_url"

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->O:Ljava/lang/String;

    .line 561
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "coppa"

    const/16 v5, -0x63

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->P:I

    .line 562
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "ccpa"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->Q:I

    .line 563
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v3

    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->P:I

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/h;->d(I)V

    .line 564
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "policy_url"

    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/j/f;->r:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->R:Ljava/lang/String;

    .line 565
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "consent_url"

    const-string v5, "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html"

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->T:Ljava/lang/String;

    .line 566
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "network_module"

    invoke-virtual {v3, v4, v2}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->U:I

    .line 567
    invoke-static {}, Lcom/bytedance/sdk/component/b/a/a/a;->a()Lcom/bytedance/sdk/component/b/a/a/a;

    move-result-object v3

    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->U:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/b/a/a/a;->a(Z)V

    .line 568
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "dyn_draw_engine_url"

    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/j/f;->n:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->V:Ljava/lang/String;

    .line 569
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "dc"

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->W:Ljava/lang/String;

    .line 570
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "isGdprUser"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->S:I

    .line 573
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "privacy_ad_enable"

    invoke-virtual {v3, v4, v7}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ab:I

    .line 574
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "privacy_personalized_ad"

    invoke-virtual {v3, v4, v7}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ac:I

    .line 575
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "privacy_sladar_enable"

    invoke-virtual {v3, v4, v7}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ad:I

    .line 576
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "privacy_app_log_enable"

    invoke-virtual {v3, v4, v7}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ae:I

    .line 577
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "privacy_sec_enable"

    invoke-virtual {v3, v4, v7}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->af:I

    .line 579
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "privacy_debug_unlock"

    invoke-virtual {v3, v4, v7}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ag:I

    .line 582
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->o:Ljava/util/Set;

    if-eqz v3, :cond_9

    .line 583
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->o:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 585
    :cond_9
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "gecko_hosts"

    invoke-virtual {v3, v4, v8}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->o:Ljava/util/Set;

    .line 586
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/j/f;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->o:Ljava/util/Set;

    .line 588
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "global_rate"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;F)F

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->al:F

    .line 590
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "sp_key_if_sp_cache"

    invoke-virtual {v3, v4, v6}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->g:I

    .line 592
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "landingpage_new_style"

    invoke-virtual {v3, v4, v7}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->an:I

    .line 594
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "privacy_fields_allowed"

    invoke-virtual {v3, v4, v8}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 596
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v4, :cond_a

    .line 598
    :try_start_6
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 600
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ah:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_a

    .line 602
    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ah:Ljava/util/Set;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 605
    :try_start_7
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 609
    :cond_a
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->D:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 610
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "hit_app_list_data"

    invoke-virtual {v3, v4, v8}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 611
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 612
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 613
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->D:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 616
    :cond_b
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->E:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 617
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "scheme_list_data"

    invoke-virtual {v3, v4, v8}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 618
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 619
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 620
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->E:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 624
    :cond_c
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "ad_slot_conf"

    invoke-virtual {v3, v4, v8}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 625
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v4, :cond_e

    .line 627
    :try_start_8
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_e

    .line 630
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->h:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    :goto_9
    if-ge v6, v3, :cond_e

    .line 632
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 633
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/j/f;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 635
    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->h:Ljava/util/Map;

    iget-object v8, v5, Lcom/bytedance/sdk/openadsdk/core/j/a;->a:Ljava/lang/String;

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 644
    :catch_3
    :cond_e
    :try_start_9
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v4, "read_video_from_cache"

    invoke-virtual {v3, v4, v2}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->ak:I

    .line 645
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    const-string v3, "webview_cache_count"

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/bytedance/sdk/openadsdk/core/j/f;->L:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 647
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    goto :goto_b

    :goto_a
    throw v2

    :goto_b
    goto :goto_a
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .line 1350
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 1351
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1353
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/j/f;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1355
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result p1

    const-string v0, ""

    const-string v1, "force_language"

    if-eqz p1, :cond_1

    const-string p1, "tt_sdk_settings"

    .line 1356
    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    goto :goto_0

    .line 1358
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    .line 1362
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1364
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    const-string v0, "zh-Hant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1365
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "zh"

    const-string v1, "tw"

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/component/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1367
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/component/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_txt_skip"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/j/f;->c:Ljava/lang/String;

    .line 1371
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_feedback_submit_text"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/j/f;->d:Ljava/lang/String;

    .line 1372
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_feedback_thank_text"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_feedback_experience_text"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/j/f;->e:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 12

    const-string v0, "lp_new_style"

    const v1, 0x7fffffff

    .line 739
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->an:I

    const-string v0, "xpath"

    .line 741
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->s:Ljava/lang/String;

    const-string v0, "feq_policy"

    .line 743
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "duration"

    .line 745
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->H:J

    const-string v2, "max"

    .line 746
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->I:I

    :cond_0
    const/4 v0, 0x5

    const-string v2, "vbtt"

    .line 749
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->J:I

    const/16 v0, 0xe10

    const-string v2, "fetch_tpl_interval"

    .line 750
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->K:I

    const-string v0, "abtest"

    .line 754
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "version"

    .line 758
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->v:Ljava/lang/String;

    const-string v2, "param"

    .line 759
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->w:Ljava/lang/String;

    goto :goto_0

    .line 762
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/j/f;->I()V

    :goto_0
    const-string v0, "log_rate_conf"

    .line 765
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v4, "global_rate"

    .line 767
    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->al:F

    :cond_2
    const-string v0, "pyload_h5"

    .line 770
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->x:Ljava/lang/String;

    const-string v0, "pure_pyload_h5"

    .line 771
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->y:Ljava/lang/String;

    const-string v0, "ads_url"

    .line 773
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->M:Ljava/lang/String;

    const-string v0, "app_log_url"

    .line 774
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->N:Ljava/lang/String;

    const-string v0, "apm_url"

    .line 775
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->O:Ljava/lang/String;

    const/16 v0, -0x63

    const-string v2, "coppa"

    .line 776
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->P:I

    const/4 v0, -0x1

    const-string v2, "ccpa"

    .line 777
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Q:I

    .line 778
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->P:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h;->d(I)V

    .line 779
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->r:Ljava/lang/String;

    const-string v2, "privacy_url"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->R:Ljava/lang/String;

    const-string v0, "consent_url"

    const-string v2, "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html"

    .line 780
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->T:Ljava/lang/String;

    const-string v0, "network_module"

    const/4 v2, 0x1

    .line 781
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->U:I

    .line 782
    invoke-static {}, Lcom/bytedance/sdk/component/b/a/a/a;->a()Lcom/bytedance/sdk/component/b/a/a/a;

    move-result-object v0

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->U:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/b/a/a/a;->a(Z)V

    const-string v0, "dc"

    .line 783
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->W:Ljava/lang/String;

    .line 784
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->c(Lorg/json/JSONObject;)V

    .line 785
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->d(Lorg/json/JSONObject;)V

    .line 788
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->e(Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->z:I

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting-\u300bmSplashLoadType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->z:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "splashLoad"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->f(Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->A:I

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting-\u300bmSplashCheckType="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->A:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "if_both_open"

    .line 793
    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->F:I

    const-string v0, "support_tnc"

    .line 794
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->G:I

    const-string v0, "insert_js_config"

    const-string v3, ""

    .line 795
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->j:Ljava/lang/String;

    const-string v0, "al"

    .line 796
    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->B:I

    const/16 v0, 0x64

    const-string v4, "max_tpl_cnts"

    .line 798
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aa:I

    const-string v0, "app_common_config"

    .line 799
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v4, "force_language"

    .line 801
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Y:Ljava/lang/String;

    const/16 v4, 0xbb8

    const-string v6, "fetch_tpl_timeout_ctrl"

    .line 802
    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Z:I

    const-string v4, "disable_rotate_banner_on_dislike"

    .line 804
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->am:I

    const-string v4, "if_sp_cache"

    .line 805
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->g:I

    const/16 v4, 0x14

    const-string v6, "webview_cache_count"

    .line 806
    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->L:I

    .line 810
    :try_start_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->o:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    const-string v4, "gecko_hosts"

    .line 811
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 812
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 813
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 814
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->o:Ljava/util/Set;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 817
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->o:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/j/f;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->o:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 819
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GeckoLog: settings json error "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;)V

    .line 824
    :cond_5
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->C:J

    .line 825
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->D:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-string v0, "spam_app_list"

    .line 826
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 828
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v4, :cond_7

    .line 830
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 831
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 832
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->D:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 837
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->E:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-string v0, "scheme_check_list"

    .line 838
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 840
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_9

    .line 842
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 843
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 844
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->E:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    const-string v0, "download_config"

    .line 849
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v4, "dl_network"

    .line 851
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->t:I

    const/16 v4, 0x1e

    const-string v6, "dl_size"

    .line 852
    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->u:I

    :cond_a
    const-string v0, "read_video_from_cache"

    .line 854
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ak:I

    const-string v0, "ad_slot_conf_list"

    .line 861
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_c

    .line 863
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .line 864
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 866
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->h:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_d

    .line 868
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 869
    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/core/j/f;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 871
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->h:Ljava/util/Map;

    iget-object v11, v9, Lcom/bytedance/sdk/openadsdk/core/j/a;->a:Ljava/lang/String;

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_c
    move-object v6, v4

    :cond_d
    const-string v0, "privacy"

    .line 878
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_f

    const-string v0, "ad_enable"

    .line 880
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ab:I

    const-string v0, "personalized_ad"

    .line 881
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ac:I

    const-string v0, "sladar_enable"

    .line 882
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ad:I

    const-string v0, "app_log_enable"

    .line 883
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ae:I

    const-string v0, "sec_enable"

    .line 884
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->af:I

    const-string v0, "debug_unlock"

    .line 886
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ag:I

    const-string v0, "fields_allowed"

    .line 887
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 890
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 892
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    .line 894
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ah:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :goto_7
    if-ge v5, p1, :cond_10

    .line 896
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ah:Ljava/util/Set;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 899
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8

    .line 902
    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ah:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_8

    .line 906
    :cond_f
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ab:I

    .line 907
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ac:I

    .line 908
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ad:I

    .line 909
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ae:I

    .line 910
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->af:I

    .line 912
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ag:I

    .line 913
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ah:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 916
    :cond_10
    :goto_8
    invoke-direct {p0, v6, v4}, Lcom/bytedance/sdk/openadsdk/core/j/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->a(Ljava/lang/Boolean;)V

    .line 918
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->X:Z

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 1406
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1407
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 3

    .line 726
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aa:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 727
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const/16 v1, 0x64

    const-string v2, "max_tpl_cnts"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 728
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aa:I

    goto :goto_0

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aa:I

    .line 733
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aa:I

    return v0
.end method

.method public b(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1581
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1582
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->l:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .line 1417
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1419
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->e:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    return v2

    .line 1424
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1421
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/o;->d(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public c(I)I
    .locals 0

    .line 1744
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1745
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->b:I

    return p1
.end method

.method public c()Z
    .locals 3

    .line 1201
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->F:I

    const/4 v1, 0x0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 1202
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v2, "if_both_open"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1203
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->F:I

    goto :goto_0

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->F:I

    .line 1208
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->F:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 1446
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1447
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->g:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(I)I
    .locals 0

    .line 1749
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1750
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->i:I

    return p1
.end method

.method public d()Z
    .locals 3

    .line 1213
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->G:I

    const/4 v1, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 1214
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v2, "support_tnc"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1215
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->G:I

    goto :goto_0

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->G:I

    .line 1220
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->G:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1463
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1464
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->m:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(I)I
    .locals 0

    .line 1766
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1767
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->s:I

    return p1
.end method

.method public e(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0x5dc

    return p1

    .line 1474
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1475
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->o:I

    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->v:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1225
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v1, "ab_test_version"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "tt_sdk_settings"

    .line 1226
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->v:Ljava/lang/String;

    goto :goto_0

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->v:Ljava/lang/String;

    .line 1231
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->v:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)I
    .locals 0

    .line 1771
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1772
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->k:I

    return p1
.end method

.method public f(Ljava/lang/String;)I
    .locals 1

    .line 1479
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1480
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->k:I

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 1235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->w:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1236
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v1, "ab_test_param"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "tt_sdk_settings"

    .line 1237
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->w:Ljava/lang/String;

    goto :goto_0

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->w:Ljava/lang/String;

    .line 1242
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->w:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6

    const/4 v0, 0x0

    .line 1485
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/a/b/a;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1486
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1489
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1490
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1491
    invoke-static {v2}, Lcom/bytedance/sdk/component/adexpress/a/b/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/a/c/b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1493
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    .line 1494
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/a/c/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "md5"

    .line 1495
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/a/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1496
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public g()Z
    .locals 3

    .line 1257
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->an:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1258
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v1, "landingpage_new_style"

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v2, "tt_sdk_settings"

    .line 1259
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->an:I

    goto :goto_0

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->an:I

    .line 1264
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->an:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public g(I)Z
    .locals 0

    .line 1776
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1777
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->t:Z

    return p1
.end method

.method public h(I)I
    .locals 0

    .line 1781
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1782
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->y:I

    return p1
.end method

.method public h()J
    .locals 5

    .line 1269
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->H:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 1270
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-wide/16 v1, 0x2710

    const-string v3, "duration"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1271
    invoke-static {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->H:J

    goto :goto_0

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->H:J

    .line 1276
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->H:J

    return-wide v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    .line 1508
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1509
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->v:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public i()I
    .locals 3

    .line 1281
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->I:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1282
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const/16 v1, 0x32

    const-string v2, "max"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1283
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->I:I

    goto :goto_0

    .line 1285
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->I:I

    .line 1288
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->I:I

    return v0
.end method

.method public i(I)I
    .locals 0

    .line 1786
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1787
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->z:I

    return p1
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1

    .line 1520
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1521
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->w:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public j(I)I
    .locals 0

    .line 1791
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1792
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->A:I

    return p1
.end method

.method public j(Ljava/lang/String;)I
    .locals 0

    .line 1541
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1542
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->h:I

    return p1
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 1292
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1293
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "pyload_h5"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1294
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->x:Ljava/lang/String;

    goto :goto_0

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->x:Ljava/lang/String;

    .line 1299
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->x:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)I
    .locals 0

    .line 1552
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1553
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->j:I

    return p1
.end method

.method public k()Lcom/bytedance/sdk/openadsdk/core/j/c;
    .locals 3

    .line 1303
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1304
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "insert_js_config"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1305
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->j:Ljava/lang/String;

    goto :goto_0

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->j:Ljava/lang/String;

    .line 1310
    :cond_1
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/j/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/j/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 3

    .line 1315
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1316
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "playableLoadH5Url"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1317
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->y:Ljava/lang/String;

    goto :goto_0

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->y:Ljava/lang/String;

    .line 1322
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->y:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)Z
    .locals 0

    .line 1576
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->u:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m()I
    .locals 3

    .line 1329
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Z:I

    const/16 v1, 0xbb8

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 1330
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v2, "fetch_tpl_timeout_ctrl"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1331
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Z:I

    goto :goto_0

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Z:I

    .line 1337
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Z:I

    if-gtz v0, :cond_2

    .line 1338
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Z:I

    .line 1342
    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->Z:I

    return v0
.end method

.method public m(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1805
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object p1

    .line 1806
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/j/a;->n:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public n()I
    .locals 3

    .line 1389
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->am:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1390
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v2, "disable_rotate_banner_on_dislike"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1391
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->am:I

    goto :goto_0

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->am:I

    .line 1396
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->am:I

    return v0
.end method

.method public n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 1

    .line 1810
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/j/a;

    if-nez v0, :cond_0

    .line 1811
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    .line 1846
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public o()Z
    .locals 1

    .line 1531
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->X:Z

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    .line 1621
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1622
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v1, "ads_url"

    if-eqz v0, :cond_0

    .line 1624
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->q:Ljava/lang/String;

    const-string v2, "tt_sdk_settings"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->M:Ljava/lang/String;

    goto :goto_0

    .line 1626
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/j/f;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->M:Ljava/lang/String;

    .line 1628
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1629
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->M:Ljava/lang/String;

    .line 1633
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->M:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)Z
    .locals 6

    .line 2037
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ah:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 2039
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/t;->n()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    const-string v3, "mnc"

    const-string v4, "mcc"

    const/4 v5, 0x0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v5

    .line 2054
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v5

    :cond_2
    :goto_0
    return v1

    .line 2044
    :cond_3
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return v5

    :cond_5
    :goto_1
    return v1

    .line 2063
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ah:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public q()Ljava/lang/String;
    .locals 3

    .line 1638
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1639
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v1, "app_log_url"

    if-eqz v0, :cond_0

    .line 1641
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->p:Ljava/lang/String;

    const-string v2, "tt_sdk_settings"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->N:Ljava/lang/String;

    goto :goto_0

    .line 1643
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->N:Ljava/lang/String;

    .line 1645
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1646
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->N:Ljava/lang/String;

    .line 1649
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->N:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    .line 1653
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1654
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v1, ""

    const-string v2, "apm_url"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1656
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->O:Ljava/lang/String;

    goto :goto_0

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->O:Ljava/lang/String;

    .line 1661
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->O:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 3

    .line 1676
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->R:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1677
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v1, "policy_url"

    if-eqz v0, :cond_0

    .line 1678
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->r:Ljava/lang/String;

    const-string v2, "tt_sdk_settings"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->R:Ljava/lang/String;

    goto :goto_0

    .line 1680
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/j/f;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->R:Ljava/lang/String;

    .line 1683
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->R:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 3

    .line 1687
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1688
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v1, "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html"

    const-string v2, "consent_url"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1689
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->T:Ljava/lang/String;

    goto :goto_0

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->T:Ljava/lang/String;

    .line 1694
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->T:Ljava/lang/String;

    return-object v0
.end method

.method public u()I
    .locals 3

    .line 1698
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->U:I

    if-nez v0, :cond_1

    .line 1699
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "network_module"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1700
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->U:I

    goto :goto_0

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->U:I

    .line 1705
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->U:I

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 3

    .line 1710
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->V:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1711
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v1, "dyn_draw_engine_url"

    if-eqz v0, :cond_0

    .line 1712
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j/f;->n:Ljava/lang/String;

    const-string v2, "tt_sdk_settings"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->V:Ljava/lang/String;

    goto :goto_0

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/j/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->V:Ljava/lang/String;

    .line 1717
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->V:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 3

    .line 1722
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->W:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1723
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v1, "dc"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "tt_sdk_settings"

    .line 1724
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->W:Ljava/lang/String;

    goto :goto_0

    .line 1726
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->W:Ljava/lang/String;

    .line 1729
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->W:Ljava/lang/String;

    return-object v0
.end method

.method public x()I
    .locals 3

    .line 1733
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->S:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1734
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "isGdprUser"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1735
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->S:I

    goto :goto_0

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->S:I

    .line 1740
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->S:I

    return v0
.end method

.method public y()I
    .locals 3

    .line 1755
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->J:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1756
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const/4 v1, 0x5

    const-string v2, "vbtt"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1757
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->J:I

    goto :goto_0

    .line 1759
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->J:I

    .line 1762
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->J:I

    return v0
.end method

.method public z()Z
    .locals 4

    .line 1851
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ab:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1852
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const-string v2, "privacy_ad_enable"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1853
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ab:I

    goto :goto_0

    .line 1855
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->aj:Lcom/bytedance/sdk/component/utils/u;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/u;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ab:I

    .line 1860
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/f;->ab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    if-nez v0, :cond_3

    return v2

    .line 1866
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/t;->n()I

    move-result v0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    return v1
.end method

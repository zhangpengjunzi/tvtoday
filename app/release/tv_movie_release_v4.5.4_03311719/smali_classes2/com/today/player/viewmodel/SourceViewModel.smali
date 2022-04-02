.class public Lcom/today/player/viewmodel/SourceViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceViewModel.java"


# instance fields
.field public detailResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/today/player/bean/AbsXml;",
            ">;"
        }
    .end annotation
.end field

.field public listResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/today/player/bean/AbsXml;",
            ">;"
        }
    .end annotation
.end field

.field public searchResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/today/player/bean/AbsXml;",
            ">;"
        }
    .end annotation
.end field

.field public sortResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/today/player/bean/AbsSortXml;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 45
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/today/player/viewmodel/SourceViewModel;->sortResult:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/today/player/viewmodel/SourceViewModel;->listResult:Landroidx/lifecycle/MutableLiveData;

    .line 47
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/today/player/viewmodel/SourceViewModel;->searchResult:Landroidx/lifecycle/MutableLiveData;

    .line 48
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/today/player/viewmodel/SourceViewModel;->detailResult:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/viewmodel/SourceViewModel;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/today/player/viewmodel/SourceViewModel;->sotXml(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/today/player/viewmodel/SourceViewModel;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/today/player/viewmodel/SourceViewModel;->sotJson(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/today/player/viewmodel/SourceViewModel;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/today/player/viewmodel/SourceViewModel;->xml(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/today/player/viewmodel/SourceViewModel;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/today/player/viewmodel/SourceViewModel;->json(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private filterSort(Lcom/today/player/bean/AbsSortXml;)Lcom/today/player/bean/AbsSortXml;
    .locals 5

    .line 235
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/api/ApiConfig;->getFilterResult()Ljava/util/List;

    move-result-object v0

    .line 236
    iget-object v1, p1, Lcom/today/player/bean/AbsSortXml;->movieSort:Lcom/today/player/bean/MovieSort;

    iget-object v1, v1, Lcom/today/player/bean/MovieSort;->sortList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 239
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 240
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/today/player/bean/MovieSort$SortData;

    iget-object v4, v4, Lcom/today/player/bean/MovieSort$SortData;->name:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p1, Lcom/today/player/bean/AbsSortXml;->movieSort:Lcom/today/player/bean/MovieSort;

    iput-object v2, v0, Lcom/today/player/bean/MovieSort;->sortList:Ljava/util/List;

    :cond_2
    return-object p1
.end method

.method private json(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/today/player/bean/AbsXml;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "#"

    const-string v4, "$"

    .line 297
    :try_start_0
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    const-class v6, Lcom/today/player/bean/ListBean;

    move-object/from16 v7, p2

    invoke-virtual {v5, v7, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/today/player/bean/ListBean;

    .line 298
    invoke-virtual {v5}, Lcom/today/player/bean/ListBean;->toAbsXml()Lcom/today/player/bean/AbsXml;

    move-result-object v5

    .line 299
    iput-object v1, v5, Lcom/today/player/bean/AbsXml;->api:Ljava/lang/String;

    .line 300
    iget-object v6, v5, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object v6, v6, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 301
    iget-object v6, v5, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object v6, v6, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/today/player/bean/Movie$Video;

    .line 302
    iget-object v8, v7, Lcom/today/player/bean/Movie$Video;->urlBean:Lcom/today/player/bean/Movie$Video$UrlBean;

    if-eqz v8, :cond_3

    iget-object v8, v7, Lcom/today/player/bean/Movie$Video;->urlBean:Lcom/today/player/bean/Movie$Video$UrlBean;

    iget-object v8, v8, Lcom/today/player/bean/Movie$Video$UrlBean;->infoList:Ljava/util/List;

    if-eqz v8, :cond_3

    .line 303
    iget-object v8, v7, Lcom/today/player/bean/Movie$Video;->urlBean:Lcom/today/player/bean/Movie$Video$UrlBean;

    iget-object v8, v8, Lcom/today/player/bean/Movie$Video$UrlBean;->infoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;

    .line 305
    iget-object v10, v9, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;->urls:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_0

    .line 306
    iget-object v10, v9, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;->urls:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_0
    new-array v10, v12, [Ljava/lang/String;

    .line 308
    iget-object v13, v9, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;->urls:Ljava/lang/String;

    aput-object v13, v10, v11

    .line 310
    :goto_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 311
    array-length v14, v10

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v14, :cond_2

    aget-object v12, v10, v15

    .line 312
    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 313
    new-instance v11, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo$InfoBean;

    move-object/from16 v17, v3

    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v18, v6

    const/4 v6, 0x0

    invoke-virtual {v12, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    const/16 v19, 0x1

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v3, v6}, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo$InfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    const/16 v19, 0x1

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .line 316
    iput-object v13, v9, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;->beanList:Ljava/util/List;

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    goto :goto_1

    :cond_3
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .line 319
    iput-object v1, v7, Lcom/today/player/bean/Movie$Video;->api:Ljava/lang/String;

    .line 320
    iput-object v2, v7, Lcom/today/player/bean/Movie$Video;->sourceName:Ljava/lang/String;

    .line 321
    iput-object v2, v7, Lcom/today/player/bean/Movie$Video;->sourceKey:Ljava/lang/String;

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    goto/16 :goto_0

    .line 324
    :cond_4
    invoke-virtual {v0, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const/4 v1, 0x0

    .line 326
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_5
    return-void
.end method

.method private sotJson(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/today/player/bean/AbsSortXml;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 211
    :try_start_0
    new-instance v0, Lcom/today/player/bean/MovieSort;

    invoke-direct {v0}, Lcom/today/player/bean/MovieSort;-><init>()V

    .line 212
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "class"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/today/player/viewmodel/SourceViewModel$5;

    invoke-direct {v2, p0}, Lcom/today/player/viewmodel/SourceViewModel$5;-><init>(Lcom/today/player/viewmodel/SourceViewModel;)V

    .line 214
    invoke-virtual {v2}, Lcom/today/player/viewmodel/SourceViewModel$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 213
    invoke-virtual {p2, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/today/player/api/ApiConfig;->getFilterResult()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 217
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 218
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/today/player/bean/SortTitle;

    invoke-virtual {v4}, Lcom/today/player/bean/SortTitle;->getType_name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 219
    new-instance v4, Lcom/today/player/bean/MovieSort$SortData;

    invoke-direct {v4}, Lcom/today/player/bean/MovieSort$SortData;-><init>()V

    .line 220
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/today/player/bean/SortTitle;

    invoke-virtual {v5}, Lcom/today/player/bean/SortTitle;->getType_id()I

    move-result v5

    iput v5, v4, Lcom/today/player/bean/MovieSort$SortData;->id:I

    .line 221
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/today/player/bean/SortTitle;

    invoke-virtual {v5}, Lcom/today/player/bean/SortTitle;->getType_name()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/today/player/bean/MovieSort$SortData;->name:Ljava/lang/String;

    .line 222
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    :cond_1
    iput-object v1, v0, Lcom/today/player/bean/MovieSort;->sortList:Ljava/util/List;

    .line 226
    new-instance p2, Lcom/today/player/bean/AbsSortXml;

    invoke-direct {p2}, Lcom/today/player/bean/AbsSortXml;-><init>()V

    .line 227
    iput-object v0, p2, Lcom/today/player/bean/AbsSortXml;->movieSort:Lcom/today/player/bean/MovieSort;

    .line 228
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p2, 0x0

    .line 230
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private sotXml(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/today/player/bean/AbsSortXml;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 197
    :try_start_0
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 198
    sget-object v1, Lcom/thoughtworks/xstream/security/AnyTypePermission;->ANY:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    const/4 v1, 0x1

    .line 199
    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/XStream;->autodetectAnnotations(Z)V

    .line 200
    const-class v1, Lcom/today/player/bean/AbsSortXml;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 201
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/XStream;->ignoreUnknownElements()V

    .line 202
    invoke-virtual {v0, p2}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/today/player/bean/AbsSortXml;

    .line 203
    invoke-direct {p0, p2}, Lcom/today/player/viewmodel/SourceViewModel;->filterSort(Lcom/today/player/bean/AbsSortXml;)Lcom/today/player/bean/AbsSortXml;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    .line 205
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private xml(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/today/player/bean/AbsXml;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "#"

    const-string v5, "<state></state>"

    const-string v6, "<year></year>"

    const-string v7, "$"

    .line 251
    :try_start_0
    new-instance v8, Lcom/thoughtworks/xstream/XStream;

    new-instance v9, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v9}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v8, v9}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 252
    sget-object v9, Lcom/thoughtworks/xstream/security/AnyTypePermission;->ANY:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {v8, v9}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    const/4 v9, 0x1

    .line 253
    invoke-virtual {v8, v9}, Lcom/thoughtworks/xstream/XStream;->autodetectAnnotations(Z)V

    .line 254
    const-class v10, Lcom/today/player/bean/AbsXml;

    invoke-virtual {v8, v10}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 255
    invoke-virtual {v8}, Lcom/thoughtworks/xstream/XStream;->ignoreUnknownElements()V

    .line 256
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "<year>0</year>"

    .line 257
    invoke-virtual {v1, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 259
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "<state>0</state>"

    .line 260
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 262
    :cond_1
    invoke-virtual {v8, v1}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/AbsXml;

    .line 263
    iput-object v2, v1, Lcom/today/player/bean/AbsXml;->api:Ljava/lang/String;

    .line 264
    iget-object v5, v1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    if-eqz v5, :cond_6

    iget-object v5, v1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object v5, v5, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    if-eqz v5, :cond_6

    .line 265
    iget-object v5, v1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object v5, v5, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/today/player/bean/Movie$Video;

    .line 266
    iget-object v8, v6, Lcom/today/player/bean/Movie$Video;->urlBean:Lcom/today/player/bean/Movie$Video$UrlBean;

    if-eqz v8, :cond_5

    iget-object v8, v6, Lcom/today/player/bean/Movie$Video;->urlBean:Lcom/today/player/bean/Movie$Video$UrlBean;

    iget-object v8, v8, Lcom/today/player/bean/Movie$Video$UrlBean;->infoList:Ljava/util/List;

    if-eqz v8, :cond_5

    .line 267
    iget-object v8, v6, Lcom/today/player/bean/Movie$Video;->urlBean:Lcom/today/player/bean/Movie$Video$UrlBean;

    iget-object v8, v8, Lcom/today/player/bean/Movie$Video$UrlBean;->infoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;

    .line 269
    iget-object v11, v10, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;->urls:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_2

    .line 270
    iget-object v11, v10, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;->urls:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_2
    new-array v11, v9, [Ljava/lang/String;

    .line 272
    iget-object v13, v10, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;->urls:Ljava/lang/String;

    aput-object v13, v11, v12

    .line 274
    :goto_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 275
    array-length v14, v11

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v14, :cond_4

    aget-object v9, v11, v15

    .line 276
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 277
    new-instance v12, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo$InfoBean;

    move-object/from16 v17, v4

    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v18, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v16, 0x1

    add-int/lit8 v5, v19, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v4, v5}, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo$InfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    const/16 v16, 0x1

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    const/4 v9, 0x1

    const/4 v12, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    const/16 v16, 0x1

    .line 280
    iput-object v13, v10, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;->beanList:Ljava/util/List;

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    const/16 v16, 0x1

    .line 283
    iput-object v2, v6, Lcom/today/player/bean/Movie$Video;->api:Ljava/lang/String;

    .line 284
    iput-object v3, v6, Lcom/today/player/bean/Movie$Video;->sourceName:Ljava/lang/String;

    .line 285
    iput-object v3, v6, Lcom/today/player/bean/Movie$Video;->sourceKey:Ljava/lang/String;

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 288
    :cond_6
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const/4 v1, 0x0

    .line 290
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_5
    return-void
.end method


# virtual methods
.method public getDetail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .line 159
    invoke-static {p1}, Lcom/lzy/okgo/OkGo;->get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    move-result-object v0

    const-string v1, "detail"

    .line 160
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/GetRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    const/4 v1, 0x0

    new-array v2, v1, [Z

    const-string v3, "ac"

    const-string v4, "videolist"

    .line 161
    invoke-virtual {v0, v3, v4, v2}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    new-array v1, v1, [Z

    const-string v2, "ids"

    .line 162
    invoke-virtual {v0, v2, p2, v1}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lcom/lzy/okgo/request/GetRequest;

    new-instance v0, Lcom/today/player/viewmodel/SourceViewModel$4;

    invoke-direct {v0, p0, p3, p1}, Lcom/today/player/viewmodel/SourceViewModel$4;-><init>(Lcom/today/player/viewmodel/SourceViewModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2, v0}, Lcom/lzy/okgo/request/GetRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public getFenCi(Ljava/lang/String;)V
    .locals 1

    .line 339
    invoke-static {p1}, Lcom/lzy/okgo/OkGo;->get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    move-result-object p1

    const-string v0, "fenci"

    .line 340
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/GetRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/GetRequest;

    new-instance v0, Lcom/today/player/viewmodel/SourceViewModel$6;

    invoke-direct {v0, p0}, Lcom/today/player/viewmodel/SourceViewModel$6;-><init>(Lcom/today/player/viewmodel/SourceViewModel;)V

    .line 341
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/GetRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public getList(II)V
    .locals 5

    .line 86
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/api/ApiConfig;->getDefaultSourceBean()Lcom/today/player/bean/PlayerModel$SourcesDTO;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/api/ApiConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okgo/OkGo;->get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/today/player/api/ApiConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/GetRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    const/4 v1, 0x0

    new-array v2, v1, [Z

    const-string v3, "ac"

    const-string v4, "videolist"

    .line 89
    invoke-virtual {v0, v3, v4, v2}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    new-array v2, v1, [Z

    const-string v3, "t"

    .line 90
    invoke-virtual {v0, v3, p1, v2}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/GetRequest;

    new-array v0, v1, [Z

    const-string v1, "pg"

    .line 91
    invoke-virtual {p1, v1, p2, v0}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/GetRequest;

    new-instance p2, Lcom/today/player/viewmodel/SourceViewModel$2;

    invoke-direct {p2, p0}, Lcom/today/player/viewmodel/SourceViewModel$2;-><init>(Lcom/today/player/viewmodel/SourceViewModel;)V

    .line 92
    invoke-virtual {p1, p2}, Lcom/lzy/okgo/request/GetRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public getSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 124
    invoke-static {p1}, Lcom/lzy/okgo/OkGo;->get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    const-string v2, "wd"

    .line 125
    invoke-virtual {v0, v2, p2, v1}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lcom/lzy/okgo/request/GetRequest;

    const-string v0, "search"

    .line 126
    invoke-virtual {p2, v0}, Lcom/lzy/okgo/request/GetRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p2

    check-cast p2, Lcom/lzy/okgo/request/GetRequest;

    new-instance v0, Lcom/today/player/viewmodel/SourceViewModel$3;

    invoke-direct {v0, p0, p3, p1}, Lcom/today/player/viewmodel/SourceViewModel$3;-><init>(Lcom/today/player/viewmodel/SourceViewModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2, v0}, Lcom/lzy/okgo/request/GetRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public getSort()V
    .locals 2

    .line 52
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/api/ApiConfig;->getDefaultSourceBean()Lcom/today/player/bean/PlayerModel$SourcesDTO;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/api/ApiConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okgo/OkGo;->get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/today/player/api/ApiConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/GetRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    new-instance v1, Lcom/today/player/viewmodel/SourceViewModel$1;

    invoke-direct {v1, p0}, Lcom/today/player/viewmodel/SourceViewModel$1;-><init>(Lcom/today/player/viewmodel/SourceViewModel;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/GetRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method protected onCleared()V
    .locals 1

    .line 333
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 334
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->cancelAll()V

    return-void
.end method

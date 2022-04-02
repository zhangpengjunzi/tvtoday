.class public Lcom/today/player/ui/dialog/TestSpeed$wl$a;
.super Lcom/lzy/okgo/callback/AbsCallback;
.source "TestSpeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/dialog/TestSpeed$wl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/dialog/TestSpeed$wl$a$b;,
        Lcom/today/player/ui/dialog/TestSpeed$wl$a$C0008a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/callback/AbsCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:[J

.field public final b:I

.field final synthetic this$0:Lcom/today/player/ui/dialog/TestSpeed$wl;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/dialog/TestSpeed$wl;[JI)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->this$0:Lcom/today/player/ui/dialog/TestSpeed$wl;

    invoke-direct {p0}, Lcom/lzy/okgo/callback/AbsCallback;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->a:[J

    .line 76
    iput p3, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->b:I

    return-void
.end method


# virtual methods
.method public bridge synthetic convertResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->convertResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertResponse(Lokhttp3/Response;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 168
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\u7f51\u7edc\u8bf7\u6c42\u9519\u8bef"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onError(Lcom/lzy/okgo/model/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    iget-object p1, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->this$0:Lcom/today/player/ui/dialog/TestSpeed$wl;

    iget-object p1, p1, Lcom/today/player/ui/dialog/TestSpeed$wl;->a:Lcom/today/player/ui/dialog/TestSpeed$vg;

    const v0, 0x7fffffff

    iput v0, p1, Lcom/today/player/ui/dialog/TestSpeed$vg;->b:I

    return-void
.end method

.method public onFinish()V
    .locals 8

    .line 148
    iget-object v0, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->a:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 149
    iget-object v0, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->this$0:Lcom/today/player/ui/dialog/TestSpeed$wl;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed$wl;->a:Lcom/today/player/ui/dialog/TestSpeed$vg;

    .line 150
    iget v1, v0, Lcom/today/player/ui/dialog/TestSpeed$vg;->b:I

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->a:[J

    .line 152
    aget-wide v4, v1, v3

    const/4 v2, 0x0

    aget-wide v6, v1, v2

    sub-long/2addr v4, v6

    long-to-int v1, v4

    iput v1, v0, Lcom/today/player/ui/dialog/TestSpeed$vg;->b:I

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->this$0:Lcom/today/player/ui/dialog/TestSpeed$wl;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed$wl;->c:Lcom/today/player/ui/dialog/TestSpeed;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed;->e:Landroid/os/Handler;

    new-instance v1, Lcom/today/player/ui/dialog/TestSpeed$wl$a$C0008a;

    invoke-direct {v1, p0}, Lcom/today/player/ui/dialog/TestSpeed$wl$a$C0008a;-><init>(Lcom/today/player/ui/dialog/TestSpeed$wl$a;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    iget-object v0, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->this$0:Lcom/today/player/ui/dialog/TestSpeed$wl;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed$wl;->c:Lcom/today/player/ui/dialog/TestSpeed;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->this$0:Lcom/today/player/ui/dialog/TestSpeed$wl;

    iget-object v1, v1, Lcom/today/player/ui/dialog/TestSpeed$wl;->c:Lcom/today/player/ui/dialog/TestSpeed;

    .line 157
    iget v2, v1, Lcom/today/player/ui/dialog/TestSpeed;->h:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/today/player/ui/dialog/TestSpeed;->h:I

    .line 158
    iget-object v1, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->this$0:Lcom/today/player/ui/dialog/TestSpeed$wl;

    iget-object v1, v1, Lcom/today/player/ui/dialog/TestSpeed$wl;->c:Lcom/today/player/ui/dialog/TestSpeed;

    .line 159
    iget v2, v1, Lcom/today/player/ui/dialog/TestSpeed;->f40j:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/today/player/ui/dialog/TestSpeed;->f40j:I

    .line 160
    iget-object v1, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->this$0:Lcom/today/player/ui/dialog/TestSpeed$wl;

    iget-object v1, v1, Lcom/today/player/ui/dialog/TestSpeed$wl;->c:Lcom/today/player/ui/dialog/TestSpeed;

    iget v1, v1, Lcom/today/player/ui/dialog/TestSpeed;->f40j:I

    if-gtz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->this$0:Lcom/today/player/ui/dialog/TestSpeed$wl;

    iget-object v1, v1, Lcom/today/player/ui/dialog/TestSpeed$wl;->c:Lcom/today/player/ui/dialog/TestSpeed;

    iget-object v1, v1, Lcom/today/player/ui/dialog/TestSpeed;->e:Landroid/os/Handler;

    new-instance v2, Lcom/today/player/ui/dialog/TestSpeed$wl$a$b;

    invoke-direct {v2, p0}, Lcom/today/player/ui/dialog/TestSpeed$wl$a$b;-><init>(Lcom/today/player/ui/dialog/TestSpeed$wl$a;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStart(Lcom/lzy/okgo/request/base/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/request/base/Request<",
            "Ljava/lang/String;",
            "+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)V"
        }
    .end annotation

    .line 102
    iget-object p1, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->a:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, p1, v2

    return-void
.end method

.method public onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    :try_start_0
    iget v0, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 110
    sget-object v2, Lcom/thoughtworks/xstream/security/AnyTypePermission;->ANY:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 112
    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/XStream;->autodetectAnnotations(Z)V

    .line 113
    const-class v1, Lcom/today/player/bean/AbsSortXml;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 114
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/XStream;->ignoreUnknownElements()V

    .line 115
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/AbsSortXml;

    goto/16 :goto_1

    .line 116
    :cond_0
    iget v0, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->b:I

    if-ne v0, v1, :cond_3

    .line 117
    new-instance v0, Lcom/today/player/bean/MovieSort;

    invoke-direct {v0}, Lcom/today/player/bean/MovieSort;-><init>()V

    .line 118
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "class"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/today/player/ui/dialog/TestSpeed$wl$a$1;

    invoke-direct {v2, p0}, Lcom/today/player/ui/dialog/TestSpeed$wl$a$1;-><init>(Lcom/today/player/ui/dialog/TestSpeed$wl$a;)V

    .line 120
    invoke-virtual {v2}, Lcom/today/player/ui/dialog/TestSpeed$wl$a$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 119
    invoke-virtual {p1, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/today/player/api/ApiConfig;->getFilterResult()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 123
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 124
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/today/player/bean/SortTitle;

    invoke-virtual {v4}, Lcom/today/player/bean/SortTitle;->getType_name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 125
    new-instance v4, Lcom/today/player/bean/MovieSort$SortData;

    invoke-direct {v4}, Lcom/today/player/bean/MovieSort$SortData;-><init>()V

    .line 126
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/today/player/bean/SortTitle;

    invoke-virtual {v5}, Lcom/today/player/bean/SortTitle;->getType_id()I

    move-result v5

    iput v5, v4, Lcom/today/player/bean/MovieSort$SortData;->id:I

    .line 127
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/today/player/bean/SortTitle;

    invoke-virtual {v5}, Lcom/today/player/bean/SortTitle;->getType_name()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/today/player/bean/MovieSort$SortData;->name:Ljava/lang/String;

    .line 128
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_2
    iput-object v1, v0, Lcom/today/player/bean/MovieSort;->sortList:Ljava/util/List;

    .line 132
    new-instance p1, Lcom/today/player/bean/AbsSortXml;

    invoke-direct {p1}, Lcom/today/player/bean/AbsSortXml;-><init>()V

    .line 133
    iput-object v0, p1, Lcom/today/player/bean/AbsSortXml;->movieSort:Lcom/today/player/bean/MovieSort;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 136
    :catchall_0
    iget-object p1, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->this$0:Lcom/today/player/ui/dialog/TestSpeed$wl;

    iget-object p1, p1, Lcom/today/player/ui/dialog/TestSpeed$wl;->a:Lcom/today/player/ui/dialog/TestSpeed$vg;

    const v0, 0x7fffffff

    iput v0, p1, Lcom/today/player/ui/dialog/TestSpeed$vg;->b:I

    :cond_3
    :goto_1
    return-void
.end method

.class public interface abstract Lcom/bt/jrsdk/httplib/iml/IIntercepter;
.super Ljava/lang/Object;
.source "IIntercepter.java"


# virtual methods
.method public abstract requestAdapterIntercept(Lcom/bt/jrsdk/httplib/iml/IAdapter;)Lcom/bt/jrsdk/httplib/iml/IAdapter;
.end method

.method public abstract requestCallbackIntercept(Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)Lcom/bt/jrsdk/httplib/iml/ResponseCallback;
.end method

.method public abstract requestHeaderIntercept(Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestHostIntercept(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract requestMethodIntercept(Lcom/bt/jrsdk/httplib/config/HttpMethod;)Lcom/bt/jrsdk/httplib/config/HttpMethod;
.end method

.method public abstract requestParamsIntercept(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract requestPathIntercept(Ljava/lang/String;)Ljava/lang/String;
.end method

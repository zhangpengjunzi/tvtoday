.class public abstract Lcom/bt/jrsdk/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field protected static final REQUEST_CODE:I = 0x2021


# instance fields
.field public ads_id:I

.field private lastClick:J

.field protected pic:Landroid/graphics/Bitmap;

.field protected pid:Ljava/lang/String;

.field protected reqId:Ljava/lang/String;

.field protected showTime:J

.field protected webUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/bt/jrsdk/activity/BaseActivity;->lastClick:J

    return-void
.end method

.method private goBrowser(Ljava/lang/String;)V
    .locals 5

    const-string v0, "android.intent.action.VIEW"

    const/high16 v1, 0x10000000

    .line 124
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 125
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.android.browser"

    const-string v4, "com.android.browser.BrowserActivity"

    .line 126
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v2}, Lcom/bt/jrsdk/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v2}, Lcom/bt/jrsdk/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method private reportAdResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 103
    iget-object v3, p0, Lcom/bt/jrsdk/activity/BaseActivity;->reqId:Ljava/lang/String;

    const-string v4, "reqId"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "ts"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget v0, p0, Lcom/bt/jrsdk/activity/BaseActivity;->ads_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ads_id"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "url"

    .line 106
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "state"

    .line 107
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {}, Lcom/bt/jrsdk/util/NetUtil;->getInstance()Lcom/bt/jrsdk/util/NetUtil;

    move-result-object p1

    sget-object p2, Lcom/bt/jrsdk/httplib/config/HttpMethod;->GET:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    invoke-virtual {p1, v2, p2}, Lcom/bt/jrsdk/util/NetUtil;->report(Ljava/util/Map;Lcom/bt/jrsdk/httplib/config/HttpMethod;)V

    return-void
.end method

.method private reportFinish()V
    .locals 5

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 90
    iget-object v3, p0, Lcom/bt/jrsdk/activity/BaseActivity;->reqId:Ljava/lang/String;

    const-string v4, "reqId"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "ts"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget v3, p0, Lcom/bt/jrsdk/activity/BaseActivity;->ads_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ads_id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-wide v3, p0, Lcom/bt/jrsdk/activity/BaseActivity;->showTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "show"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-wide v3, p0, Lcom/bt/jrsdk/activity/BaseActivity;->showTime:J

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "delay"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "state"

    const-string v1, "web"

    .line 95
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/bt/jrsdk/util/NetUtil;->getInstance()Lcom/bt/jrsdk/util/NetUtil;

    move-result-object v0

    sget-object v1, Lcom/bt/jrsdk/httplib/config/HttpMethod;->GET:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    invoke-virtual {v0, v2, v1}, Lcom/bt/jrsdk/util/NetUtil;->report(Ljava/util/Map;Lcom/bt/jrsdk/httplib/config/HttpMethod;)V

    return-void
.end method

.method private startPage(Ljava/lang/String;)V
    .locals 2

    .line 114
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->reportFinish()V

    .line 116
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onResult()V

    .line 117
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected go2WebActivity()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/bt/jrsdk/activity/BaseActivity;->webUrl:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bt/jrsdk/activity/BaseActivity;->webUrl:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/bt/jrsdk/activity/BaseActivity;->webUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bt/jrsdk/activity/BaseActivity;->startPage(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/bt/jrsdk/activity/BaseActivity;->webUrl:Ljava/lang/String;

    const-string v1, "deeplink"

    invoke-direct {p0, v0, v1}, Lcom/bt/jrsdk/activity/BaseActivity;->reportAdResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/bt/jrsdk/activity/BaseActivity;->webUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bt/jrsdk/activity/BaseActivity;->goBrowser(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/bt/jrsdk/activity/BaseActivity;->webUrl:Ljava/lang/String;

    const-string v1, "goBrowser"

    invoke-direct {p0, v0, v1}, Lcom/bt/jrsdk/activity/BaseActivity;->reportAdResult(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  ,result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/16 v0, 0x2021

    if-ne p1, v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->reportFinish()V

    .line 79
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onResult()V

    .line 80
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->finish()V

    .line 82
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected abstract onResult()V
.end method

.method protected reportClick(FFF)V
    .locals 3

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/bt/jrsdk/activity/BaseActivity;->reqId:Ljava/lang/String;

    const-string v2, "reqId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget v1, p0, Lcom/bt/jrsdk/activity/BaseActivity;->ads_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ads_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "state"

    const-string v2, "click"

    .line 45
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/bt/jrsdk/activity/BaseActivity;->webUrl:Ljava/lang/String;

    const-string v2, "url"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "x"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "y"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "pressure"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/bt/jrsdk/util/NetUtil;->getInstance()Lcom/bt/jrsdk/util/NetUtil;

    move-result-object p1

    sget-object p2, Lcom/bt/jrsdk/httplib/config/HttpMethod;->GET:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    invoke-virtual {p1, v0, p2}, Lcom/bt/jrsdk/util/NetUtil;->report(Ljava/util/Map;Lcom/bt/jrsdk/httplib/config/HttpMethod;)V

    return-void
.end method

.method protected responseClick()Z
    .locals 7

    .line 27
    iget-wide v0, p0, Lcom/bt/jrsdk/activity/BaseActivity;->lastClick:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bt/jrsdk/activity/BaseActivity;->lastClick:J

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 31
    iget-wide v2, p0, Lcom/bt/jrsdk/activity/BaseActivity;->lastClick:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    const/4 v0, 0x0

    return v0

    .line 34
    :cond_1
    iput-wide v0, p0, Lcom/bt/jrsdk/activity/BaseActivity;->lastClick:J

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

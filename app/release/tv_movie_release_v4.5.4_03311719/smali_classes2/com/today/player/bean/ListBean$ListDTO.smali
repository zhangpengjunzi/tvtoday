.class public Lcom/today/player/bean/ListBean$ListDTO;
.super Ljava/lang/Object;
.source "ListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/bean/ListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListDTO"
.end annotation


# instance fields
.field private group_id:I

.field private type_id:I

.field private type_id_1:I

.field private type_name:Ljava/lang/String;

.field private vod_actor:Ljava/lang/String;

.field private vod_area:Ljava/lang/String;

.field private vod_author:Ljava/lang/String;

.field private vod_behind:Ljava/lang/String;

.field private vod_blurb:Ljava/lang/String;

.field private vod_class:Ljava/lang/String;

.field private vod_color:Ljava/lang/String;

.field private vod_content:Ljava/lang/String;

.field private vod_copyright:I

.field private vod_director:Ljava/lang/String;

.field private vod_douban_id:I

.field private vod_douban_score:Ljava/lang/String;

.field private vod_down:I

.field private vod_down_from:Ljava/lang/String;

.field private vod_down_note:Ljava/lang/String;

.field private vod_down_server:Ljava/lang/String;

.field private vod_down_url:Ljava/lang/String;

.field private vod_duration:Ljava/lang/String;

.field private vod_en:Ljava/lang/String;

.field private vod_hits:I

.field private vod_hits_day:I

.field private vod_hits_month:I

.field private vod_hits_week:I

.field private vod_id:I

.field private vod_isend:I

.field private vod_jumpurl:Ljava/lang/String;

.field private vod_lang:Ljava/lang/String;

.field private vod_letter:Ljava/lang/String;

.field private vod_level:I

.field private vod_lock:I

.field private vod_name:Ljava/lang/String;

.field private vod_pic:Ljava/lang/String;

.field private vod_pic_screenshot:Ljava/lang/String;

.field private vod_pic_slide:Ljava/lang/String;

.field private vod_pic_thumb:Ljava/lang/String;

.field private vod_play_from:Ljava/lang/String;

.field private vod_play_note:Ljava/lang/String;

.field private vod_play_server:Ljava/lang/String;

.field private vod_play_url:Ljava/lang/String;

.field private vod_plot:I

.field private vod_plot_detail:Ljava/lang/String;

.field private vod_plot_name:Ljava/lang/String;

.field private vod_points:I

.field private vod_points_down:I

.field private vod_points_play:I

.field private vod_pubdate:Ljava/lang/String;

.field private vod_pwd:Ljava/lang/String;

.field private vod_pwd_down:Ljava/lang/String;

.field private vod_pwd_down_url:Ljava/lang/String;

.field private vod_pwd_play:Ljava/lang/String;

.field private vod_pwd_play_url:Ljava/lang/String;

.field private vod_pwd_url:Ljava/lang/String;

.field private vod_rel_art:Ljava/lang/String;

.field private vod_rel_vod:Ljava/lang/String;

.field private vod_remarks:Ljava/lang/String;

.field private vod_reurl:Ljava/lang/String;

.field private vod_score:Ljava/lang/String;

.field private vod_score_all:I

.field private vod_score_num:I

.field private vod_serial:Ljava/lang/String;

.field private vod_state:Ljava/lang/String;

.field private vod_status:I

.field private vod_sub:Ljava/lang/String;

.field private vod_tag:Ljava/lang/String;

.field private vod_time:Ljava/lang/String;

.field private vod_time_add:I

.field private vod_time_hits:I

.field private vod_time_make:I

.field private vod_total:I

.field private vod_tpl:Ljava/lang/String;

.field private vod_tpl_down:Ljava/lang/String;

.field private vod_tpl_play:Ljava/lang/String;

.field private vod_trysee:I

.field private vod_tv:Ljava/lang/String;

.field private vod_up:I

.field private vod_version:Ljava/lang/String;

.field private vod_weekday:Ljava/lang/String;

.field private vod_writer:Ljava/lang/String;

.field private vod_year:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroup_id()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->group_id:I

    return v0
.end method

.method public getType_id()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->type_id:I

    return v0
.end method

.method public getType_id_1()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->type_id_1:I

    return v0
.end method

.method public getType_name()Ljava/lang/String;
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->type_name:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_actor()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_actor:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_area()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_area:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_author()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_author:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_behind()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_behind:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_blurb()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_blurb:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_class()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_class:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_color()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_color:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_content()Ljava/lang/String;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_content:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_copyright()I
    .locals 1

    .line 471
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_copyright:I

    return v0
.end method

.method public getVod_director()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_director:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_douban_id()I
    .locals 1

    .line 623
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_douban_id:I

    return v0
.end method

.method public getVod_douban_score()Ljava/lang/String;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_douban_score:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_down()I
    .locals 1

    .line 551
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_down:I

    return v0
.end method

.method public getVod_down_from()Ljava/lang/String;
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_down_from:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_down_note()Ljava/lang/String;
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_down_note:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_down_server()Ljava/lang/String;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_down_server:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_down_url()Ljava/lang/String;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_duration()Ljava/lang/String;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_duration:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_en()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_en:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_hits()I
    .locals 1

    .line 503
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_hits:I

    return v0
.end method

.method public getVod_hits_day()I
    .locals 1

    .line 511
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_hits_day:I

    return v0
.end method

.method public getVod_hits_month()I
    .locals 1

    .line 527
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_hits_month:I

    return v0
.end method

.method public getVod_hits_week()I
    .locals 1

    .line 519
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_hits_week:I

    return v0
.end method

.method public getVod_id()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_id:I

    return v0
.end method

.method public getVod_isend()I
    .locals 1

    .line 447
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_isend:I

    return v0
.end method

.method public getVod_jumpurl()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_jumpurl:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_lang()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_lang:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_letter()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_letter:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_level()I
    .locals 1

    .line 463
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_level:I

    return v0
.end method

.method public getVod_lock()I
    .locals 1

    .line 455
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_lock:I

    return v0
.end method

.method public getVod_name()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_name:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_pic()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_pic_screenshot()Ljava/lang/String;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pic_screenshot:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_pic_slide()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pic_slide:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_pic_thumb()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pic_thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_play_from()Ljava/lang/String;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_play_from:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_play_note()Ljava/lang/String;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_play_note:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_play_server()Ljava/lang/String;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_play_server:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_play_url()Ljava/lang/String;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_play_url:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_plot()I
    .locals 1

    .line 783
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_plot:I

    return v0
.end method

.method public getVod_plot_detail()Ljava/lang/String;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_plot_detail:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_plot_name()Ljava/lang/String;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_plot_name:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_points()I
    .locals 1

    .line 479
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_points:I

    return v0
.end method

.method public getVod_points_down()I
    .locals 1

    .line 495
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_points_down:I

    return v0
.end method

.method public getVod_points_play()I
    .locals 1

    .line 487
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_points_play:I

    return v0
.end method

.method public getVod_pubdate()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pubdate:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_pwd()Ljava/lang/String;
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_pwd_down()Ljava/lang/String;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pwd_down:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_pwd_down_url()Ljava/lang/String;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pwd_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_pwd_play()Ljava/lang/String;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pwd_play:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_pwd_play_url()Ljava/lang/String;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pwd_play_url:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_pwd_url()Ljava/lang/String;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pwd_url:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_rel_art()Ljava/lang/String;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_rel_art:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_rel_vod()Ljava/lang/String;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_rel_vod:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_remarks()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_remarks:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_reurl()Ljava/lang/String;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_reurl:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_score()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_score:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_score_all()I
    .locals 1

    .line 567
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_score_all:I

    return v0
.end method

.method public getVod_score_num()I
    .locals 1

    .line 575
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_score_num:I

    return v0
.end method

.method public getVod_serial()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_serial:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_state()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_state:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_status()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_status:I

    return v0
.end method

.method public getVod_sub()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_sub:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_tag()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_tag:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_time()Ljava/lang/String;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_time:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_time_add()I
    .locals 1

    .line 591
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_time_add:I

    return v0
.end method

.method public getVod_time_hits()I
    .locals 1

    .line 599
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_time_hits:I

    return v0
.end method

.method public getVod_time_make()I
    .locals 1

    .line 607
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_time_make:I

    return v0
.end method

.method public getVod_total()I
    .locals 1

    .line 335
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_total:I

    return v0
.end method

.method public getVod_tpl()Ljava/lang/String;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_tpl:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_tpl_down()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_tpl_down:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_tpl_play()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_tpl_play:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_trysee()I
    .locals 1

    .line 615
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_trysee:I

    return v0
.end method

.method public getVod_tv()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_tv:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_up()I
    .locals 1

    .line 543
    iget v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_up:I

    return v0
.end method

.method public getVod_version()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_version:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_weekday()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_weekday:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_writer()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_writer:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_year()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_year:Ljava/lang/String;

    return-object v0
.end method

.method public setGroup_id(I)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->group_id:I

    return-void
.end method

.method public setType_id(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->type_id:I

    return-void
.end method

.method public setType_id_1(I)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->type_id_1:I

    return-void
.end method

.method public setType_name(Ljava/lang/String;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->type_name:Ljava/lang/String;

    return-void
.end method

.method public setVod_actor(Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_actor:Ljava/lang/String;

    return-void
.end method

.method public setVod_area(Ljava/lang/String;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_area:Ljava/lang/String;

    return-void
.end method

.method public setVod_author(Ljava/lang/String;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_author:Ljava/lang/String;

    return-void
.end method

.method public setVod_behind(Ljava/lang/String;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_behind:Ljava/lang/String;

    return-void
.end method

.method public setVod_blurb(Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_blurb:Ljava/lang/String;

    return-void
.end method

.method public setVod_class(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_class:Ljava/lang/String;

    return-void
.end method

.method public setVod_color(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_color:Ljava/lang/String;

    return-void
.end method

.method public setVod_content(Ljava/lang/String;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_content:Ljava/lang/String;

    return-void
.end method

.method public setVod_copyright(I)V
    .locals 0

    .line 475
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_copyright:I

    return-void
.end method

.method public setVod_director(Ljava/lang/String;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_director:Ljava/lang/String;

    return-void
.end method

.method public setVod_douban_id(I)V
    .locals 0

    .line 627
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_douban_id:I

    return-void
.end method

.method public setVod_douban_score(Ljava/lang/String;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_douban_score:Ljava/lang/String;

    return-void
.end method

.method public setVod_down(I)V
    .locals 0

    .line 555
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_down:I

    return-void
.end method

.method public setVod_down_from(Ljava/lang/String;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_down_from:Ljava/lang/String;

    return-void
.end method

.method public setVod_down_note(Ljava/lang/String;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_down_note:Ljava/lang/String;

    return-void
.end method

.method public setVod_down_server(Ljava/lang/String;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_down_server:Ljava/lang/String;

    return-void
.end method

.method public setVod_down_url(Ljava/lang/String;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_down_url:Ljava/lang/String;

    return-void
.end method

.method public setVod_duration(Ljava/lang/String;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_duration:Ljava/lang/String;

    return-void
.end method

.method public setVod_en(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_en:Ljava/lang/String;

    return-void
.end method

.method public setVod_hits(I)V
    .locals 0

    .line 507
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_hits:I

    return-void
.end method

.method public setVod_hits_day(I)V
    .locals 0

    .line 515
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_hits_day:I

    return-void
.end method

.method public setVod_hits_month(I)V
    .locals 0

    .line 531
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_hits_month:I

    return-void
.end method

.method public setVod_hits_week(I)V
    .locals 0

    .line 523
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_hits_week:I

    return-void
.end method

.method public setVod_id(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_id:I

    return-void
.end method

.method public setVod_isend(I)V
    .locals 0

    .line 451
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_isend:I

    return-void
.end method

.method public setVod_jumpurl(Ljava/lang/String;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_jumpurl:Ljava/lang/String;

    return-void
.end method

.method public setVod_lang(Ljava/lang/String;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_lang:Ljava/lang/String;

    return-void
.end method

.method public setVod_letter(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_letter:Ljava/lang/String;

    return-void
.end method

.method public setVod_level(I)V
    .locals 0

    .line 467
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_level:I

    return-void
.end method

.method public setVod_lock(I)V
    .locals 0

    .line 459
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_lock:I

    return-void
.end method

.method public setVod_name(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_name:Ljava/lang/String;

    return-void
.end method

.method public setVod_pic(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pic:Ljava/lang/String;

    return-void
.end method

.method public setVod_pic_screenshot(Ljava/lang/String;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pic_screenshot:Ljava/lang/String;

    return-void
.end method

.method public setVod_pic_slide(Ljava/lang/String;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pic_slide:Ljava/lang/String;

    return-void
.end method

.method public setVod_pic_thumb(Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pic_thumb:Ljava/lang/String;

    return-void
.end method

.method public setVod_play_from(Ljava/lang/String;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_play_from:Ljava/lang/String;

    return-void
.end method

.method public setVod_play_note(Ljava/lang/String;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_play_note:Ljava/lang/String;

    return-void
.end method

.method public setVod_play_server(Ljava/lang/String;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_play_server:Ljava/lang/String;

    return-void
.end method

.method public setVod_play_url(Ljava/lang/String;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_play_url:Ljava/lang/String;

    return-void
.end method

.method public setVod_plot(I)V
    .locals 0

    .line 787
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_plot:I

    return-void
.end method

.method public setVod_plot_detail(Ljava/lang/String;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_plot_detail:Ljava/lang/String;

    return-void
.end method

.method public setVod_plot_name(Ljava/lang/String;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_plot_name:Ljava/lang/String;

    return-void
.end method

.method public setVod_points(I)V
    .locals 0

    .line 483
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_points:I

    return-void
.end method

.method public setVod_points_down(I)V
    .locals 0

    .line 499
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_points_down:I

    return-void
.end method

.method public setVod_points_play(I)V
    .locals 0

    .line 491
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_points_play:I

    return-void
.end method

.method public setVod_pubdate(Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pubdate:Ljava/lang/String;

    return-void
.end method

.method public setVod_pwd(Ljava/lang/String;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pwd:Ljava/lang/String;

    return-void
.end method

.method public setVod_pwd_down(Ljava/lang/String;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pwd_down:Ljava/lang/String;

    return-void
.end method

.method public setVod_pwd_down_url(Ljava/lang/String;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pwd_down_url:Ljava/lang/String;

    return-void
.end method

.method public setVod_pwd_play(Ljava/lang/String;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pwd_play:Ljava/lang/String;

    return-void
.end method

.method public setVod_pwd_play_url(Ljava/lang/String;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pwd_play_url:Ljava/lang/String;

    return-void
.end method

.method public setVod_pwd_url(Ljava/lang/String;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pwd_url:Ljava/lang/String;

    return-void
.end method

.method public setVod_rel_art(Ljava/lang/String;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_rel_art:Ljava/lang/String;

    return-void
.end method

.method public setVod_rel_vod(Ljava/lang/String;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_rel_vod:Ljava/lang/String;

    return-void
.end method

.method public setVod_remarks(Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_remarks:Ljava/lang/String;

    return-void
.end method

.method public setVod_reurl(Ljava/lang/String;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_reurl:Ljava/lang/String;

    return-void
.end method

.method public setVod_score(Ljava/lang/String;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_score:Ljava/lang/String;

    return-void
.end method

.method public setVod_score_all(I)V
    .locals 0

    .line 571
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_score_all:I

    return-void
.end method

.method public setVod_score_num(I)V
    .locals 0

    .line 579
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_score_num:I

    return-void
.end method

.method public setVod_serial(Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_serial:Ljava/lang/String;

    return-void
.end method

.method public setVod_state(Ljava/lang/String;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_state:Ljava/lang/String;

    return-void
.end method

.method public setVod_status(I)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_status:I

    return-void
.end method

.method public setVod_sub(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_sub:Ljava/lang/String;

    return-void
.end method

.method public setVod_tag(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_tag:Ljava/lang/String;

    return-void
.end method

.method public setVod_time(Ljava/lang/String;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_time:Ljava/lang/String;

    return-void
.end method

.method public setVod_time_add(I)V
    .locals 0

    .line 595
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_time_add:I

    return-void
.end method

.method public setVod_time_hits(I)V
    .locals 0

    .line 603
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_time_hits:I

    return-void
.end method

.method public setVod_time_make(I)V
    .locals 0

    .line 611
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_time_make:I

    return-void
.end method

.method public setVod_total(I)V
    .locals 0

    .line 339
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_total:I

    return-void
.end method

.method public setVod_tpl(Ljava/lang/String;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_tpl:Ljava/lang/String;

    return-void
.end method

.method public setVod_tpl_down(Ljava/lang/String;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_tpl_down:Ljava/lang/String;

    return-void
.end method

.method public setVod_tpl_play(Ljava/lang/String;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_tpl_play:Ljava/lang/String;

    return-void
.end method

.method public setVod_trysee(I)V
    .locals 0

    .line 619
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_trysee:I

    return-void
.end method

.method public setVod_tv(Ljava/lang/String;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_tv:Ljava/lang/String;

    return-void
.end method

.method public setVod_up(I)V
    .locals 0

    .line 547
    iput p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_up:I

    return-void
.end method

.method public setVod_version(Ljava/lang/String;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_version:Ljava/lang/String;

    return-void
.end method

.method public setVod_weekday(Ljava/lang/String;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_weekday:Ljava/lang/String;

    return-void
.end method

.method public setVod_writer(Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_writer:Ljava/lang/String;

    return-void
.end method

.method public setVod_year(Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_year:Ljava/lang/String;

    return-void
.end method

.method public toXmlVideo()Lcom/today/player/bean/Movie$Video;
    .locals 8

    .line 823
    new-instance v0, Lcom/today/player/bean/Movie$Video;

    invoke-direct {v0}, Lcom/today/player/bean/Movie$Video;-><init>()V

    .line 824
    iget-object v1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_time:Ljava/lang/String;

    iput-object v1, v0, Lcom/today/player/bean/Movie$Video;->last:Ljava/lang/String;

    .line 825
    iget v1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_id:I

    iput v1, v0, Lcom/today/player/bean/Movie$Video;->id:I

    .line 826
    iget v1, p0, Lcom/today/player/bean/ListBean$ListDTO;->type_id:I

    iput v1, v0, Lcom/today/player/bean/Movie$Video;->tid:I

    .line 827
    iget-object v1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/today/player/bean/Movie$Video;->name:Ljava/lang/String;

    .line 828
    iget-object v1, p0, Lcom/today/player/bean/ListBean$ListDTO;->type_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/today/player/bean/Movie$Video;->type:Ljava/lang/String;

    .line 829
    iget-object v1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_play_from:Ljava/lang/String;

    const-string v2, "$$$"

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/today/player/bean/Movie$Video;->dt:Ljava/lang/String;

    .line 830
    iget-object v1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_pic:Ljava/lang/String;

    iput-object v1, v0, Lcom/today/player/bean/Movie$Video;->pic:Ljava/lang/String;

    .line 831
    iget-object v1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_lang:Ljava/lang/String;

    iput-object v1, v0, Lcom/today/player/bean/Movie$Video;->lang:Ljava/lang/String;

    .line 832
    iget-object v1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_area:Ljava/lang/String;

    iput-object v1, v0, Lcom/today/player/bean/Movie$Video;->area:Ljava/lang/String;

    const/4 v1, 0x0

    .line 834
    :try_start_0
    iget-object v2, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_year:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/today/player/bean/Movie$Video;->year:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 836
    :catchall_0
    iput v1, v0, Lcom/today/player/bean/Movie$Video;->year:I

    .line 838
    :goto_0
    iget-object v2, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_state:Ljava/lang/String;

    iput-object v2, v0, Lcom/today/player/bean/Movie$Video;->state:Ljava/lang/String;

    .line 839
    iget-object v2, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_remarks:Ljava/lang/String;

    iput-object v2, v0, Lcom/today/player/bean/Movie$Video;->note:Ljava/lang/String;

    .line 840
    iget-object v2, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_actor:Ljava/lang/String;

    iput-object v2, v0, Lcom/today/player/bean/Movie$Video;->actor:Ljava/lang/String;

    .line 841
    iget-object v2, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_director:Ljava/lang/String;

    iput-object v2, v0, Lcom/today/player/bean/Movie$Video;->director:Ljava/lang/String;

    .line 842
    new-instance v2, Lcom/today/player/bean/Movie$Video$UrlBean;

    invoke-direct {v2}, Lcom/today/player/bean/Movie$Video$UrlBean;-><init>()V

    .line 843
    iget-object v3, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_play_url:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "\\$\\$\\$"

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_play_from:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 844
    :goto_1
    iget-object v6, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_play_url:Ljava/lang/String;

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 845
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_3

    .line 846
    array-length v6, v3

    if-lez v6, :cond_3

    .line 847
    :goto_3
    array-length v6, v3

    if-ge v1, v6, :cond_3

    .line 848
    new-instance v6, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;

    invoke-direct {v6}, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;-><init>()V

    .line 849
    aget-object v7, v3, v1

    iput-object v7, v6, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;->flag:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v7, ""

    goto :goto_4

    .line 850
    :cond_2
    aget-object v7, v4, v1

    :goto_4
    iput-object v7, v6, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;->urls:Ljava/lang/String;

    .line 851
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 854
    :cond_3
    iput-object v5, v2, Lcom/today/player/bean/Movie$Video$UrlBean;->infoList:Ljava/util/List;

    .line 855
    iput-object v2, v0, Lcom/today/player/bean/Movie$Video;->urlBean:Lcom/today/player/bean/Movie$Video$UrlBean;

    .line 856
    iget-object v1, p0, Lcom/today/player/bean/ListBean$ListDTO;->vod_content:Ljava/lang/String;

    iput-object v1, v0, Lcom/today/player/bean/Movie$Video;->des:Ljava/lang/String;

    return-object v0
.end method

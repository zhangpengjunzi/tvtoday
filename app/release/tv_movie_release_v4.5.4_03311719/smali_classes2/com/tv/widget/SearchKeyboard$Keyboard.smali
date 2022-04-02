.class Lcom/tv/widget/SearchKeyboard$Keyboard;
.super Ljava/lang/Object;
.source "SearchKeyboard.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tv/widget/SearchKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Keyboard"
.end annotation


# instance fields
.field private itemType:I

.field private key:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p1, p0, Lcom/tv/widget/SearchKeyboard$Keyboard;->itemType:I

    .line 134
    iput-object p2, p0, Lcom/tv/widget/SearchKeyboard$Keyboard;->key:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/tv/widget/SearchKeyboard$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/tv/widget/SearchKeyboard$Keyboard;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tv/widget/SearchKeyboard$Keyboard;)Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/tv/widget/SearchKeyboard$Keyboard;->key:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getItemType()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/tv/widget/SearchKeyboard$Keyboard;->itemType:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/tv/widget/SearchKeyboard$Keyboard;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/tv/widget/SearchKeyboard$Keyboard;->key:Ljava/lang/String;

    return-void
.end method

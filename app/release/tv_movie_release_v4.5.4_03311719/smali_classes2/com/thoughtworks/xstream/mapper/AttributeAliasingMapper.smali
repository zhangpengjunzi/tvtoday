.class public Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;
.super Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;
.source "AttributeAliasingMapper.java"


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method


# virtual methods
.method public aliasForAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;->nameToAlias:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 31
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->aliasForAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public attributeForAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;->aliasToName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 36
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->attributeForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

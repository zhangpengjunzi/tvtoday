.class public Lcom/thoughtworks/xstream/io/xml/DomReader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;
.source "DomReader.java"


# instance fields
.field private childElements:Ljava/util/List;

.field private currentElement:Lorg/w3c/dom/Element;

.field private textBuffer:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 0

    .line 37
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/DomReader;-><init>(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    .line 52
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/DomReader;-><init>(Lorg/w3c/dom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    .line 68
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/DomReader;-><init>(Lorg/w3c/dom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 33
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/DomReader;-><init>(Lorg/w3c/dom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 45
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->textBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/DomReader;-><init>(Lorg/w3c/dom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method public getAttribute(I)Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Attr;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/DomReader;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getAttributeCount()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Attr;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/DomReader;->decodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getChild(I)Ljava/lang/Object;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->childElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParent()Ljava/lang/Object;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->textBuffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 78
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 80
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 81
    instance-of v4, v3, Lorg/w3c/dom/Text;

    if-eqz v4, :cond_0

    .line 82
    check-cast v3, Lorg/w3c/dom/Text;

    .line 83
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->textBuffer:Ljava/lang/StringBuffer;

    invoke-interface {v3}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    .line 132
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 133
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 134
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 135
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected reassignCurrentElement(Ljava/lang/Object;)V
    .locals 3

    .line 119
    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    .line 120
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->childElements:Ljava/util/List;

    const/4 v0, 0x0

    .line 122
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 123
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 124
    instance-of v2, v1, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->childElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.class public abstract Lcom/thoughtworks/xstream/io/xml/AbstractXmlReader;
.super Lcom/thoughtworks/xstream/io/AbstractReader;
.source "AbstractXmlReader.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlReader;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method protected constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/AbstractReader;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method protected constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlReader;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method protected escapeXmlName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlReader;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unescapeXmlName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

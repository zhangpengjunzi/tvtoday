.class public abstract Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;
.super Lcom/thoughtworks/xstream/io/AbstractDriver;
.source "AbstractXmlDriver.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/AbstractDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method protected xmlFriendlyReplacer()Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v0

    .line 61
    instance-of v1, v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

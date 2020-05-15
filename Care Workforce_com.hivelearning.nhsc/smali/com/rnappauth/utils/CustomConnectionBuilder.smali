.class public final Lcom/rnappauth/utils/CustomConnectionBuilder;
.super Ljava/lang/Object;
.source "CustomConnectionBuilder.java"

# interfaces
.implements Lnet/openid/appauth/connectivity/ConnectionBuilder;


# instance fields
.field private connectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/openid/appauth/connectivity/ConnectionBuilder;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->headers:Ljava/util/Map;

    .line 39
    iput-object p1, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->connectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    return-void
.end method


# virtual methods
.method public openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->connectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    invoke-interface {v0, p1}, Lnet/openid/appauth/connectivity/ConnectionBuilder;->openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->headers:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->headers:Ljava/util/Map;

    return-void
.end method

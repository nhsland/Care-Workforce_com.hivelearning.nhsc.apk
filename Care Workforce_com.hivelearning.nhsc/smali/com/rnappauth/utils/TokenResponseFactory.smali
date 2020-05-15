.class public final Lcom/rnappauth/utils/TokenResponseFactory;
.super Ljava/lang/Object;
.source "TokenResponseFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final createAdditionalParametersMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/react/bridge/WritableMap;"
        }
    .end annotation

    .line 17
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 19
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 25
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final createScopeArray(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableArray;
    .locals 3

    .line 33
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 37
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 39
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final tokenResponseToMap(Lnet/openid/appauth/TokenResponse;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 51
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    const-string v2, "accessToken"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->additionalParameters:Ljava/util/Map;

    invoke-static {v1}, Lcom/rnappauth/utils/TokenResponseFactory;->createAdditionalParametersMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "additionalParameters"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 55
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->idToken:Ljava/lang/String;

    const-string v2, "idToken"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->refreshToken:Ljava/lang/String;

    const-string v2, "refreshToken"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->tokenType:Ljava/lang/String;

    const-string v2, "tokenType"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 60
    iget-object p0, p0, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    invoke-static {p0}, Lcom/rnappauth/utils/DateUtil;->formatTimestamp(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "accessTokenExpirationDate"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final tokenResponseToMap(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationResponse;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 70
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    const-string v2, "accessToken"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p1, Lnet/openid/appauth/AuthorizationResponse;->additionalParameters:Ljava/util/Map;

    invoke-static {v1}, Lcom/rnappauth/utils/TokenResponseFactory;->createAdditionalParametersMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "authorizeAdditionalParameters"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 74
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->additionalParameters:Ljava/util/Map;

    invoke-static {v1}, Lcom/rnappauth/utils/TokenResponseFactory;->createAdditionalParametersMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "tokenAdditionalParameters"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 75
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->additionalParameters:Ljava/util/Map;

    invoke-static {v1}, Lcom/rnappauth/utils/TokenResponseFactory;->createAdditionalParametersMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "additionalParameters"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 76
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->idToken:Ljava/lang/String;

    const-string v2, "idToken"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->refreshToken:Ljava/lang/String;

    const-string v2, "refreshToken"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->tokenType:Ljava/lang/String;

    const-string v2, "tokenType"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p1, p1, Lnet/openid/appauth/AuthorizationResponse;->scope:Ljava/lang/String;

    invoke-static {p1}, Lcom/rnappauth/utils/TokenResponseFactory;->createScopeArray(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    const-string v1, "scopes"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 81
    iget-object p1, p0, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 82
    iget-object p0, p0, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    invoke-static {p0}, Lcom/rnappauth/utils/DateUtil;->formatTimestamp(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "accessTokenExpirationDate"

    invoke-interface {v0, p1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

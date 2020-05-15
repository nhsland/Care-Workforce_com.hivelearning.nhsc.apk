.class public Lnet/openid/appauth/TokenResponse;
.super Ljava/lang/Object;
.source "TokenResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/TokenResponse$Builder;
    }
.end annotation


# static fields
.field private static final BUILT_IN_PARAMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field static final KEY_ADDITIONAL_PARAMETERS:Ljava/lang/String; = "additionalParameters"

.field static final KEY_EXPIRES_AT:Ljava/lang/String; = "expires_at"

.field static final KEY_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field static final KEY_ID_TOKEN:Ljava/lang/String; = "id_token"

.field static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field static final KEY_REQUEST:Ljava/lang/String; = "request"

.field static final KEY_SCOPE:Ljava/lang/String; = "scope"

.field static final KEY_TOKEN_TYPE:Ljava/lang/String; = "token_type"

.field public static final TOKEN_TYPE_BEARER:Ljava/lang/String; = "bearer"


# instance fields
.field public final accessToken:Ljava/lang/String;

.field public final accessTokenExpirationTime:Ljava/lang/Long;

.field public final additionalParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final idToken:Ljava/lang/String;

.field public final refreshToken:Ljava/lang/String;

.field public final request:Lnet/openid/appauth/TokenRequest;

.field public final scope:Ljava/lang/String;

.field public final tokenType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 83
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "token_type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "access_token"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "expires_in"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "refresh_token"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "id_token"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "scope"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lnet/openid/appauth/TokenResponse;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lnet/openid/appauth/TokenRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/TokenRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lnet/openid/appauth/TokenResponse;->request:Lnet/openid/appauth/TokenRequest;

    .line 403
    iput-object p2, p0, Lnet/openid/appauth/TokenResponse;->tokenType:Ljava/lang/String;

    .line 404
    iput-object p3, p0, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    .line 405
    iput-object p4, p0, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    .line 406
    iput-object p5, p0, Lnet/openid/appauth/TokenResponse;->idToken:Ljava/lang/String;

    .line 407
    iput-object p6, p0, Lnet/openid/appauth/TokenResponse;->refreshToken:Ljava/lang/String;

    .line 408
    iput-object p7, p0, Lnet/openid/appauth/TokenResponse;->scope:Ljava/lang/String;

    .line 409
    iput-object p8, p0, Lnet/openid/appauth/TokenResponse;->additionalParameters:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 45
    sget-object v0, Lnet/openid/appauth/TokenResponse;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-object v0
.end method

.method public static jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "jsonStr cannot be null or empty"

    .line 481
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 482
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/TokenResponse;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenResponse;

    move-result-object p0

    return-object p0
.end method

.method public static jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "request"

    .line 457
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    new-instance v1, Lnet/openid/appauth/TokenResponse$Builder;

    .line 462
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lnet/openid/appauth/TokenRequest;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenRequest;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/openid/appauth/TokenResponse$Builder;-><init>(Lnet/openid/appauth/TokenRequest;)V

    const-string v0, "token_type"

    .line 463
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/openid/appauth/TokenResponse$Builder;->setTokenType(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    move-result-object v0

    const-string v1, "access_token"

    .line 464
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenResponse$Builder;->setAccessToken(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    move-result-object v0

    const-string v1, "expires_at"

    .line 465
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getLongIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenResponse$Builder;->setAccessTokenExpirationTime(Ljava/lang/Long;)Lnet/openid/appauth/TokenResponse$Builder;

    move-result-object v0

    const-string v1, "id_token"

    .line 466
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenResponse$Builder;->setIdToken(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    move-result-object v0

    const-string v1, "refresh_token"

    .line 467
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenResponse$Builder;->setRefreshToken(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    move-result-object v0

    const-string v1, "scope"

    .line 468
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenResponse$Builder;->setScope(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    move-result-object v0

    const-string v1, "additionalParameters"

    .line 469
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/openid/appauth/TokenResponse$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/TokenResponse$Builder;

    move-result-object p0

    .line 470
    invoke-virtual {p0}, Lnet/openid/appauth/TokenResponse$Builder;->build()Lnet/openid/appauth/TokenResponse;

    move-result-object p0

    return-object p0

    .line 458
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "token request not provided and not found in JSON"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getScopeSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lnet/openid/appauth/TokenResponse;->scope:Ljava/lang/String;

    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public jsonSerialize()Lorg/json/JSONObject;
    .locals 3

    .line 427
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 428
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->request:Lnet/openid/appauth/TokenRequest;

    invoke-virtual {v1}, Lnet/openid/appauth/TokenRequest;->jsonSerialize()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "request"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 429
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->tokenType:Ljava/lang/String;

    const-string v2, "token_type"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    const-string v2, "access_token"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    const-string v2, "expires_at"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 432
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->idToken:Ljava/lang/String;

    const-string v2, "id_token"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->refreshToken:Ljava/lang/String;

    const-string v2, "refresh_token"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->scope:Ljava/lang/String;

    const-string v2, "scope"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->additionalParameters:Ljava/util/Map;

    .line 436
    invoke-static {v1}, Lnet/openid/appauth/JsonUtil;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "additionalParameters"

    .line 435
    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public jsonSerializeString()Ljava/lang/String;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lnet/openid/appauth/TokenResponse;->jsonSerialize()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

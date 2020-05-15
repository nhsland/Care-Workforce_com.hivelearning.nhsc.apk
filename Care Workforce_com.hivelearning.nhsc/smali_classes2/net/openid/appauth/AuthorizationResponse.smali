.class public Lnet/openid/appauth/AuthorizationResponse;
.super Ljava/lang/Object;
.source "AuthorizationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationResponse$Builder;
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

.field public static final EXTRA_RESPONSE:Ljava/lang/String; = "net.openid.appauth.AuthorizationResponse"

.field static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field static final KEY_ADDITIONAL_PARAMETERS:Ljava/lang/String; = "additional_parameters"

.field static final KEY_AUTHORIZATION_CODE:Ljava/lang/String; = "code"

.field static final KEY_EXPIRES_AT:Ljava/lang/String; = "expires_at"

.field static final KEY_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field static final KEY_ID_TOKEN:Ljava/lang/String; = "id_token"

.field static final KEY_REQUEST:Ljava/lang/String; = "request"

.field static final KEY_SCOPE:Ljava/lang/String; = "scope"

.field static final KEY_STATE:Ljava/lang/String; = "state"

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

.field public final authorizationCode:Ljava/lang/String;

.field public final idToken:Ljava/lang/String;

.field public final request:Lnet/openid/appauth/AuthorizationRequest;

.field public final scope:Ljava/lang/String;

.field public final state:Ljava/lang/String;

.field public final tokenType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "token_type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "state"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "code"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "access_token"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "expires_in"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "id_token"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "scope"

    aput-object v3, v1, v2

    .line 89
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 88
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationResponse;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lnet/openid/appauth/AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    .line 406
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationResponse;->state:Ljava/lang/String;

    .line 407
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationResponse;->tokenType:Ljava/lang/String;

    .line 408
    iput-object p4, p0, Lnet/openid/appauth/AuthorizationResponse;->authorizationCode:Ljava/lang/String;

    .line 409
    iput-object p5, p0, Lnet/openid/appauth/AuthorizationResponse;->accessToken:Ljava/lang/String;

    .line 410
    iput-object p6, p0, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    .line 411
    iput-object p7, p0, Lnet/openid/appauth/AuthorizationResponse;->idToken:Ljava/lang/String;

    .line 412
    iput-object p8, p0, Lnet/openid/appauth/AuthorizationResponse;->scope:Ljava/lang/String;

    .line 413
    iput-object p9, p0, Lnet/openid/appauth/AuthorizationResponse;->additionalParameters:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lnet/openid/appauth/AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/AuthorizationResponse$1;)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p9}, Lnet/openid/appauth/AuthorizationResponse;-><init>(Lnet/openid/appauth/AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 49
    sget-object v0, Lnet/openid/appauth/AuthorizationResponse;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-object v0
.end method

.method public static fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationResponse;
    .locals 2

    const-string v0, "dataIntent must not be null"

    .line 564
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "net.openid.appauth.AuthorizationResponse"

    .line 565
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 570
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/openid/appauth/AuthorizationResponse;->jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent contains malformed auth response"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 542
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationResponse;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "request"

    .line 511
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationRequest;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationRequest;

    move-result-object v0

    .line 519
    new-instance v1, Lnet/openid/appauth/AuthorizationResponse$Builder;

    invoke-direct {v1, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;-><init>(Lnet/openid/appauth/AuthorizationRequest;)V

    const-string v0, "token_type"

    .line 520
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setTokenType(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v0

    const-string v1, "access_token"

    .line 521
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAccessToken(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v0

    const-string v1, "code"

    .line 522
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAuthorizationCode(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v0

    const-string v1, "id_token"

    .line 523
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setIdToken(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v0

    const-string v1, "scope"

    .line 524
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setScope(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v0

    const-string v1, "state"

    .line 525
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setState(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v0

    const-string v1, "expires_at"

    .line 526
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getLongIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAccessTokenExpirationTime(Ljava/lang/Long;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object v0

    const-string v1, "additional_parameters"

    .line 528
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 527
    invoke-virtual {v0, p0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object p0

    .line 529
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->build()Lnet/openid/appauth/AuthorizationResponse;

    move-result-object p0

    return-object p0

    .line 512
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "authorization request not provided and not found in JSON"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createTokenExchangeRequest()Lnet/openid/appauth/TokenRequest;
    .locals 1

    .line 444
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse;->createTokenExchangeRequest(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public createTokenExchangeRequest(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/TokenRequest;"
        }
    .end annotation

    const-string v0, "additionalExchangeParameters cannot be null"

    .line 454
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationResponse;->authorizationCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Lnet/openid/appauth/TokenRequest$Builder;

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v1, v1, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v2, v2, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnet/openid/appauth/TokenRequest$Builder;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;)V

    const-string v1, "authorization_code"

    .line 464
    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenRequest$Builder;->setGrantType(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v1, v1, Lnet/openid/appauth/AuthorizationRequest;->redirectUri:Landroid/net/Uri;

    .line 465
    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenRequest$Builder;->setRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v1, v1, Lnet/openid/appauth/AuthorizationRequest;->codeVerifier:Ljava/lang/String;

    .line 466
    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenRequest$Builder;->setCodeVerifier(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->authorizationCode:Ljava/lang/String;

    .line 467
    invoke-virtual {v0, v1}, Lnet/openid/appauth/TokenRequest$Builder;->setAuthorizationCode(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object v0

    .line 468
    invoke-virtual {v0, p1}, Lnet/openid/appauth/TokenRequest$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object p1

    .line 469
    invoke-virtual {p1}, Lnet/openid/appauth/TokenRequest$Builder;->build()Lnet/openid/appauth/TokenRequest;

    move-result-object p1

    return-object p1

    .line 458
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "authorizationCode not available for exchange request"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

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

    .line 436
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationResponse;->scope:Ljava/lang/String;

    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasAccessTokenExpired()Z
    .locals 1

    .line 420
    sget-object v0, Lnet/openid/appauth/SystemClock;->INSTANCE:Lnet/openid/appauth/SystemClock;

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse;->hasAccessTokenExpired(Lnet/openid/appauth/Clock;)Z

    move-result v0

    return v0
.end method

.method hasAccessTokenExpired(Lnet/openid/appauth/Clock;)Z
    .locals 4

    .line 425
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 426
    invoke-static {p1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/openid/appauth/Clock;

    invoke-interface {p1}, Lnet/openid/appauth/Clock;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public jsonSerialize()Lorg/json/JSONObject;
    .locals 3

    .line 478
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 479
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->request:Lnet/openid/appauth/AuthorizationRequest;

    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationRequest;->jsonSerialize()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "request"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 480
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->state:Ljava/lang/String;

    const-string v2, "state"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->tokenType:Ljava/lang/String;

    const-string v2, "token_type"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->authorizationCode:Ljava/lang/String;

    const-string v2, "code"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->accessToken:Ljava/lang/String;

    const-string v2, "access_token"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    const-string v2, "expires_at"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 485
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->idToken:Ljava/lang/String;

    const-string v2, "id_token"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->scope:Ljava/lang/String;

    const-string v2, "scope"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->additionalParameters:Ljava/util/Map;

    .line 488
    invoke-static {v1}, Lnet/openid/appauth/JsonUtil;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "additional_parameters"

    .line 487
    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public jsonSerializeString()Ljava/lang/String;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationResponse;->jsonSerialize()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 3

    .line 552
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 553
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationResponse;->jsonSerializeString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "net.openid.appauth.AuthorizationResponse"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

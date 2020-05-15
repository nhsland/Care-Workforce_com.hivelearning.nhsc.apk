.class public final Lnet/openid/appauth/TokenRequest$Builder;
.super Ljava/lang/Object;
.source "TokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/TokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAdditionalParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthorizationCode:Ljava/lang/String;

.field private mClientId:Ljava/lang/String;

.field private mCodeVerifier:Ljava/lang/String;

.field private mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

.field private mGrantType:Ljava/lang/String;

.field private mRedirectUri:Landroid/net/Uri;

.field private mRefreshToken:Ljava/lang/String;

.field private mScope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;)V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-virtual {p0, p1}, Lnet/openid/appauth/TokenRequest$Builder;->setConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;)Lnet/openid/appauth/TokenRequest$Builder;

    .line 245
    invoke-virtual {p0, p2}, Lnet/openid/appauth/TokenRequest$Builder;->setClientId(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    .line 246
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    return-void
.end method

.method private inferGrantType()Ljava/lang/String;
    .locals 2

    .line 441
    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mGrantType:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 443
    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAuthorizationCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "authorization_code"

    return-object v0

    .line 445
    :cond_1
    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRefreshToken:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "refresh_token"

    return-object v0

    .line 448
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "grant type not specified and cannot be inferred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lnet/openid/appauth/TokenRequest;
    .locals 12

    .line 408
    invoke-direct {p0}, Lnet/openid/appauth/TokenRequest$Builder;->inferGrantType()Ljava/lang/String;

    move-result-object v3

    const-string v0, "authorization_code"

    .line 410
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAuthorizationCode:Ljava/lang/String;

    const-string v2, "authorization code must be specified for grant_type = authorization_code"

    invoke-static {v1, v2}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "refresh_token"

    .line 416
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRefreshToken:Ljava/lang/String;

    const-string v2, "refresh token must be specified for grant_type = refresh_token"

    invoke-static {v1, v2}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRedirectUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 424
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no redirect URI specified on token request for code exchange"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_3
    :goto_0
    new-instance v11, Lnet/openid/appauth/TokenRequest;

    iget-object v1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest$Builder;->mClientId:Ljava/lang/String;

    iget-object v4, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRedirectUri:Landroid/net/Uri;

    iget-object v5, p0, Lnet/openid/appauth/TokenRequest$Builder;->mScope:Ljava/lang/String;

    iget-object v6, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAuthorizationCode:Ljava/lang/String;

    iget-object v7, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRefreshToken:Ljava/lang/String;

    iget-object v8, p0, Lnet/openid/appauth/TokenRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 437
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lnet/openid/appauth/TokenRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/TokenRequest$1;)V

    return-object v11
.end method

.method public setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/TokenRequest$Builder;"
        }
    .end annotation

    .line 399
    invoke-static {}, Lnet/openid/appauth/TokenRequest;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    return-object p0
.end method

.method public setAuthorizationCode(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1

    const-string v0, "authorization code must not be empty"

    .line 358
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 359
    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAuthorizationCode:Ljava/lang/String;

    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1

    const-string v0, "clientId cannot be null or empty"

    .line 264
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public setCodeVerifier(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 387
    invoke-static {p1}, Lnet/openid/appauth/CodeVerifierUtil;->checkCodeVerifier(Ljava/lang/String;)V

    .line 390
    :cond_0
    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    return-object p0
.end method

.method public setConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 0

    .line 255
    invoke-static {p1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    return-object p0
.end method

.method public setGrantType(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1

    const-string v0, "grantType cannot be null or empty"

    .line 273
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mGrantType:Ljava/lang/String;

    return-object p0
.end method

.method public setRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "redirectUri must have a scheme"

    invoke-static {v0, v1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_0
    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRedirectUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "refresh token cannot be empty if defined"

    .line 374
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 376
    :cond_0
    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRefreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 300
    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mScope:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, " +"

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/TokenRequest$Builder;->setScopes([Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    :goto_0
    return-object p0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/TokenRequest$Builder;"
        }
    .end annotation

    .line 344
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 325
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/TokenRequest$Builder;->setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/TokenRequest$Builder;

    return-object p0
.end method

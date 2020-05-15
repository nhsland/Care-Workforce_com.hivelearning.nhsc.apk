.class public Lcom/rnappauth/RNAppAuthModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNAppAuthModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# static fields
.field public static final CUSTOM_TAB_PACKAGE_NAME:Ljava/lang/String; = "com.android.chrome"


# instance fields
.field private additionalParametersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private authorizationRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private clientAuthMethod:Ljava/lang/String;

.field private clientSecret:Ljava/lang/String;

.field private dangerouslyAllowInsecureHttpRequests:Ljava/lang/Boolean;

.field private isPrefetched:Z

.field private final mServiceConfiguration:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private promise:Lcom/facebook/react/bridge/Promise;

.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private tokenRequestHeaders:Ljava/util/Map;
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
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const-string v0, "basic"

    .line 59
    iput-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->clientAuthMethod:Ljava/lang/String;

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->authorizationRequestHeaders:Ljava/util/Map;

    .line 61
    iput-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->tokenRequestHeaders:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->mServiceConfiguration:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/rnappauth/RNAppAuthModule;->isPrefetched:Z

    .line 69
    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 70
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/rnappauth/RNAppAuthModule;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/rnappauth/RNAppAuthModule;->mServiceConfiguration:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$102(Lcom/rnappauth/RNAppAuthModule;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/rnappauth/RNAppAuthModule;->isPrefetched:Z

    return p1
.end method

.method static synthetic access$200(Lcom/rnappauth/RNAppAuthModule;Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p7}, Lcom/rnappauth/RNAppAuthModule;->authorizeWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lcom/rnappauth/RNAppAuthModule;Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p10}, Lcom/rnappauth/RNAppAuthModule;->refreshWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method static synthetic access$400(Lcom/rnappauth/RNAppAuthModule;)Lcom/facebook/react/bridge/Promise;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/rnappauth/RNAppAuthModule;->promise:Lcom/facebook/react/bridge/Promise;

    return-object p0
.end method

.method private arrayToString(Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;
    .locals 3

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 508
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x20

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    :cond_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private authorizeWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            "Lnet/openid/appauth/AppAuthConfiguration;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 360
    invoke-direct {p0, p4}, Lcom/rnappauth/RNAppAuthModule;->arrayToString(Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, v0

    .line 363
    :goto_0
    iget-object v1, p0, Lcom/rnappauth/RNAppAuthModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 364
    invoke-virtual {p0}, Lcom/rnappauth/RNAppAuthModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 366
    new-instance v3, Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 371
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    const-string v4, "code"

    invoke-direct {v3, p1, p3, v4, p5}, Lnet/openid/appauth/AuthorizationRequest$Builder;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p4, :cond_1

    .line 375
    invoke-virtual {v3, p4}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setScope(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    :cond_1
    if-eqz p7, :cond_5

    const-string p1, "display"

    .line 381
    invoke-interface {p7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 382
    invoke-interface {p7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v3, p3}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setDisplay(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 383
    invoke-interface {p7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "login_hint"

    .line 385
    invoke-interface {p7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 386
    invoke-interface {p7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v3, p3}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setLoginHint(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 387
    invoke-interface {p7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p1, "prompt"

    .line 389
    invoke-interface {p7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 390
    invoke-interface {p7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v3, p3}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setPrompt(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 391
    invoke-interface {p7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_4
    invoke-virtual {v3, p7}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 397
    :cond_5
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    .line 398
    invoke-virtual {v3, v0}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setCodeVerifier(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 401
    :cond_6
    invoke-virtual {v3}, Lnet/openid/appauth/AuthorizationRequest$Builder;->build()Lnet/openid/appauth/AuthorizationRequest;

    move-result-object p1

    .line 403
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    const/4 p5, 0x0

    if-lt p3, p4, :cond_7

    .line 404
    new-instance p3, Lnet/openid/appauth/AuthorizationService;

    invoke-direct {p3, v1, p2}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lnet/openid/appauth/AppAuthConfiguration;)V

    .line 405
    invoke-virtual {p3, p1}, Lnet/openid/appauth/AuthorizationService;->getAuthorizationRequestIntent(Lnet/openid/appauth/AuthorizationRequest;)Landroid/content/Intent;

    move-result-object p1

    .line 407
    invoke-virtual {v2, p1, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 409
    :cond_7
    new-instance p3, Lnet/openid/appauth/AuthorizationService;

    invoke-direct {p3, v2, p2}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lnet/openid/appauth/AppAuthConfiguration;)V

    .line 410
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p5, p2, p5}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 412
    invoke-virtual {p3, p1, p2}, Lnet/openid/appauth/AuthorizationService;->performAuthorizationRequest(Lnet/openid/appauth/AuthorizationRequest;Landroid/app/PendingIntent;)V

    :goto_1
    return-void
.end method

.method private buildConfigurationUriFromIssuer(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 551
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, ".well-known"

    .line 552
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "openid-configuration"

    .line 553
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 554
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private createAppAuthConfiguration(Lnet/openid/appauth/connectivity/ConnectionBuilder;)Lnet/openid/appauth/AppAuthConfiguration;
    .locals 1

    .line 521
    new-instance v0, Lnet/openid/appauth/AppAuthConfiguration$Builder;

    invoke-direct {v0}, Lnet/openid/appauth/AppAuthConfiguration$Builder;-><init>()V

    .line 523
    invoke-virtual {v0, p1}, Lnet/openid/appauth/AppAuthConfiguration$Builder;->setConnectionBuilder(Lnet/openid/appauth/connectivity/ConnectionBuilder;)Lnet/openid/appauth/AppAuthConfiguration$Builder;

    move-result-object p1

    .line 524
    invoke-virtual {p1}, Lnet/openid/appauth/AppAuthConfiguration$Builder;->build()Lnet/openid/appauth/AppAuthConfiguration;

    move-result-object p1

    return-object p1
.end method

.method private createAuthorizationServiceConfiguration(Lcom/facebook/react/bridge/ReadableMap;)Lnet/openid/appauth/AuthorizationServiceConfiguration;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "authorizationEndpoint"

    .line 558
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "tokenEndpoint"

    .line 562
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 566
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 567
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "registrationEndpoint"

    .line 569
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 570
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 573
    :cond_0
    new-instance p1, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    invoke-direct {p1, v0, v1, v2}, Lnet/openid/appauth/AuthorizationServiceConfiguration;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object p1

    .line 563
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "serviceConfiguration passed without a tokenEndpoint"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 559
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "serviceConfiguration passed without an authorizationEndpoint"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createConnectionBuilder(Ljava/lang/Boolean;Ljava/util/Map;)Lnet/openid/appauth/connectivity/ConnectionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/connectivity/ConnectionBuilder;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 533
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 534
    sget-object p1, Lcom/rnappauth/utils/UnsafeConnectionBuilder;->INSTANCE:Lcom/rnappauth/utils/UnsafeConnectionBuilder;

    goto :goto_0

    .line 536
    :cond_0
    sget-object p1, Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;->INSTANCE:Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;

    .line 539
    :goto_0
    new-instance v0, Lcom/rnappauth/utils/CustomConnectionBuilder;

    invoke-direct {v0, p1}, Lcom/rnappauth/utils/CustomConnectionBuilder;-><init>(Lnet/openid/appauth/connectivity/ConnectionBuilder;)V

    if-eqz p2, :cond_1

    .line 541
    invoke-virtual {v0, p2}, Lcom/rnappauth/utils/CustomConnectionBuilder;->setHeaders(Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method

.method private getClientAuthentication(Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/ClientAuthentication;
    .locals 1

    const-string v0, "post"

    .line 496
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 497
    new-instance p2, Lnet/openid/appauth/ClientSecretPost;

    invoke-direct {p2, p1}, Lnet/openid/appauth/ClientSecretPost;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 500
    :cond_0
    new-instance p2, Lnet/openid/appauth/ClientSecretBasic;

    invoke-direct {p2, p1}, Lnet/openid/appauth/ClientSecretBasic;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private parseHeaderMap(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "authorize"

    .line 486
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_1

    .line 487
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/rnappauth/utils/MapUtil;->readableMapToHashMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->authorizationRequestHeaders:Ljava/util/Map;

    :cond_1
    const-string v0, "token"

    .line 489
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_2

    .line 490
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    invoke-static {p1}, Lcom/rnappauth/utils/MapUtil;->readableMapToHashMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->tokenRequestHeaders:Ljava/util/Map;

    :cond_2
    return-void
.end method

.method private refreshWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            "Lnet/openid/appauth/AppAuthConfiguration;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/Promise;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 435
    invoke-direct {p0, p5}, Lcom/rnappauth/RNAppAuthModule;->arrayToString(Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 438
    :goto_0
    iget-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 440
    new-instance v1, Lnet/openid/appauth/TokenRequest$Builder;

    invoke-direct {v1, p1, p4}, Lnet/openid/appauth/TokenRequest$Builder;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v1, p3}, Lnet/openid/appauth/TokenRequest$Builder;->setRefreshToken(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object p1

    .line 446
    invoke-static {p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Lnet/openid/appauth/TokenRequest$Builder;->setRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object p1

    if-eqz p5, :cond_1

    .line 449
    invoke-virtual {p1, p5}, Lnet/openid/appauth/TokenRequest$Builder;->setScope(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    .line 452
    :cond_1
    invoke-interface {p7}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 453
    invoke-virtual {p1, p7}, Lnet/openid/appauth/TokenRequest$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest$Builder;

    .line 456
    :cond_2
    invoke-virtual {p1}, Lnet/openid/appauth/TokenRequest$Builder;->build()Lnet/openid/appauth/TokenRequest;

    move-result-object p1

    .line 458
    new-instance p3, Lnet/openid/appauth/AuthorizationService;

    invoke-direct {p3, v0, p2}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lnet/openid/appauth/AppAuthConfiguration;)V

    .line 460
    new-instance p2, Lcom/rnappauth/RNAppAuthModule$5;

    invoke-direct {p2, p0, p10}, Lcom/rnappauth/RNAppAuthModule$5;-><init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;)V

    if-eqz p9, :cond_3

    .line 474
    invoke-direct {p0, p9, p8}, Lcom/rnappauth/RNAppAuthModule;->getClientAuthentication(Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/ClientAuthentication;

    move-result-object p4

    .line 475
    invoke-virtual {p3, p1, p4, p2}, Lnet/openid/appauth/AuthorizationService;->performTokenRequest(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/ClientAuthentication;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V

    goto :goto_1

    .line 478
    :cond_3
    invoke-virtual {p3, p1, p2}, Lnet/openid/appauth/AuthorizationService;->performTokenRequest(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V

    :goto_1
    return-void
.end method

.method private warmChromeCustomTab(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 581
    new-instance v0, Lcom/rnappauth/RNAppAuthModule$6;

    invoke-direct {v0, p0, p2}, Lcom/rnappauth/RNAppAuthModule$6;-><init>(Lcom/rnappauth/RNAppAuthModule;Ljava/lang/String;)V

    const-string p2, "com.android.chrome"

    .line 593
    invoke-static {p1, p2, v0}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    return-void
.end method


# virtual methods
.method public authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 14
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object v10, p0

    move-object/from16 v0, p4

    move-object/from16 v1, p7

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v9, p12

    .line 149
    invoke-direct {p0, v3}, Lcom/rnappauth/RNAppAuthModule;->parseHeaderMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 150
    iget-object v3, v10, Lcom/rnappauth/RNAppAuthModule;->authorizationRequestHeaders:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lcom/rnappauth/RNAppAuthModule;->createConnectionBuilder(Ljava/lang/Boolean;Ljava/util/Map;)Lnet/openid/appauth/connectivity/ConnectionBuilder;

    move-result-object v11

    .line 151
    invoke-direct {p0, v11}, Lcom/rnappauth/RNAppAuthModule;->createAppAuthConfiguration(Lnet/openid/appauth/connectivity/ConnectionBuilder;)Lnet/openid/appauth/AppAuthConfiguration;

    move-result-object v4

    .line 152
    invoke-static/range {p6 .. p6}, Lcom/rnappauth/utils/MapUtil;->readableMapToHashMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/HashMap;

    move-result-object v12

    if-eqz v0, :cond_0

    const-string v3, "client_secret"

    .line 155
    invoke-virtual {v12, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_0
    iput-object v9, v10, Lcom/rnappauth/RNAppAuthModule;->promise:Lcom/facebook/react/bridge/Promise;

    .line 160
    iput-object v2, v10, Lcom/rnappauth/RNAppAuthModule;->dangerouslyAllowInsecureHttpRequests:Ljava/lang/Boolean;

    .line 161
    iput-object v12, v10, Lcom/rnappauth/RNAppAuthModule;->additionalParametersMap:Ljava/util/Map;

    .line 162
    iput-object v0, v10, Lcom/rnappauth/RNAppAuthModule;->clientSecret:Ljava/lang/String;

    move-object/from16 v0, p9

    .line 163
    iput-object v0, v10, Lcom/rnappauth/RNAppAuthModule;->clientAuthMethod:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 166
    iget-object v0, v10, Lcom/rnappauth/RNAppAuthModule;->mServiceConfiguration:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 184
    invoke-direct {p0, v0}, Lcom/rnappauth/RNAppAuthModule;->buildConfigurationUriFromIssuer(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    new-instance v13, Lcom/rnappauth/RNAppAuthModule$2;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p12

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p8

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/rnappauth/RNAppAuthModule$2;-><init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;)V

    .line 183
    invoke-static {v0, v13, v11}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fetchFromUrl(Landroid/net/Uri;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;Lnet/openid/appauth/connectivity/ConnectionBuilder;)V

    goto :goto_2

    .line 168
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, v10, Lcom/rnappauth/RNAppAuthModule;->mServiceConfiguration:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v10, Lcom/rnappauth/RNAppAuthModule;->mServiceConfiguration:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/rnappauth/RNAppAuthModule;->createAuthorizationServiceConfiguration(Lcom/facebook/react/bridge/ReadableMap;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v0

    :goto_1
    move-object v2, v0

    move-object v1, p0

    move-object v3, v4

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p8

    move-object v8, v12

    .line 169
    invoke-direct/range {v1 .. v8}, Lcom/rnappauth/RNAppAuthModule;->authorizeWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to authenticate"

    invoke-interface {v9, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNAppAuth"

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_2

    .line 303
    invoke-static {p4}, Lnet/openid/appauth/AuthorizationResponse;->fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationResponse;

    move-result-object p1

    .line 304
    invoke-static {p4}, Lnet/openid/appauth/AuthorizationException;->fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 306
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->promise:Lcom/facebook/react/bridge/Promise;

    iget-object p2, p2, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    const-string p3, "Failed to authenticate"

    invoke-interface {p1, p3, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 310
    :cond_0
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule;->promise:Lcom/facebook/react/bridge/Promise;

    .line 311
    iget-object p3, p0, Lcom/rnappauth/RNAppAuthModule;->dangerouslyAllowInsecureHttpRequests:Ljava/lang/Boolean;

    iget-object p4, p0, Lcom/rnappauth/RNAppAuthModule;->tokenRequestHeaders:Ljava/util/Map;

    .line 312
    invoke-direct {p0, p3, p4}, Lcom/rnappauth/RNAppAuthModule;->createConnectionBuilder(Ljava/lang/Boolean;Ljava/util/Map;)Lnet/openid/appauth/connectivity/ConnectionBuilder;

    move-result-object p3

    .line 311
    invoke-direct {p0, p3}, Lcom/rnappauth/RNAppAuthModule;->createAppAuthConfiguration(Lnet/openid/appauth/connectivity/ConnectionBuilder;)Lnet/openid/appauth/AppAuthConfiguration;

    move-result-object p3

    .line 315
    new-instance p4, Lnet/openid/appauth/AuthorizationService;

    iget-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {p4, v0, p3}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lnet/openid/appauth/AppAuthConfiguration;)V

    .line 317
    iget-object p3, p0, Lcom/rnappauth/RNAppAuthModule;->additionalParametersMap:Ljava/util/Map;

    invoke-virtual {p1, p3}, Lnet/openid/appauth/AuthorizationResponse;->createTokenExchangeRequest(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest;

    move-result-object p3

    .line 319
    new-instance v0, Lcom/rnappauth/RNAppAuthModule$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/rnappauth/RNAppAuthModule$4;-><init>(Lcom/rnappauth/RNAppAuthModule;Lnet/openid/appauth/AuthorizationResponse;Lcom/facebook/react/bridge/Promise;)V

    .line 333
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->clientSecret:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 334
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule;->clientAuthMethod:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/rnappauth/RNAppAuthModule;->getClientAuthentication(Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/ClientAuthentication;

    move-result-object p1

    .line 335
    invoke-virtual {p4, p3, p1, v0}, Lnet/openid/appauth/AuthorizationService;->performTokenRequest(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/ClientAuthentication;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {p4, p3, v0}, Lnet/openid/appauth/AuthorizationService;->performTokenRequest(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public prefetchConfiguration(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 85
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {p0, p1, p2}, Lcom/rnappauth/RNAppAuthModule;->warmChromeCustomTab(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-direct {p0, p8}, Lcom/rnappauth/RNAppAuthModule;->parseHeaderMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 90
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->authorizationRequestHeaders:Ljava/util/Map;

    invoke-direct {p0, p7, p1}, Lcom/rnappauth/RNAppAuthModule;->createConnectionBuilder(Ljava/lang/Boolean;Ljava/util/Map;)Lnet/openid/appauth/connectivity/ConnectionBuilder;

    move-result-object p1

    .line 91
    new-instance p3, Ljava/util/concurrent/CountDownLatch;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 93
    iget-boolean p5, p0, Lcom/rnappauth/RNAppAuthModule;->isPrefetched:Z

    const-string p7, "RNAppAuth Error"

    if-nez p5, :cond_2

    if-eqz p6, :cond_1

    .line 94
    iget-object p5, p0, Lcom/rnappauth/RNAppAuthModule;->mServiceConfiguration:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p5

    if-nez p5, :cond_1

    .line 96
    :try_start_0
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->mServiceConfiguration:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p6}, Lcom/rnappauth/RNAppAuthModule;->createAuthorizationServiceConfiguration(Lcom/facebook/react/bridge/ReadableMap;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 97
    iput-boolean p4, p0, Lcom/rnappauth/RNAppAuthModule;->isPrefetched:Z

    .line 98
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to convert serviceConfiguration"

    .line 100
    invoke-interface {p9, p7, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object p4, p0, Lcom/rnappauth/RNAppAuthModule;->mServiceConfiguration:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_3

    .line 103
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 105
    invoke-direct {p0, p2}, Lcom/rnappauth/RNAppAuthModule;->buildConfigurationUriFromIssuer(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    new-instance p4, Lcom/rnappauth/RNAppAuthModule$1;

    invoke-direct {p4, p0, p9, p3}, Lcom/rnappauth/RNAppAuthModule$1;-><init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;Ljava/util/concurrent/CountDownLatch;)V

    .line 104
    invoke-static {p2, p4, p1}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fetchFromUrl(Landroid/net/Uri;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;Lnet/openid/appauth/connectivity/ConnectionBuilder;)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 127
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 128
    iget-boolean p1, p0, Lcom/rnappauth/RNAppAuthModule;->isPrefetched:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p9, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "Failed to await fetch configuration"

    .line 130
    invoke-interface {p9, p7, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public refresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 16
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p4

    move-object/from16 v1, p8

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    .line 231
    invoke-direct {v12, v3}, Lcom/rnappauth/RNAppAuthModule;->parseHeaderMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 232
    iget-object v3, v12, Lcom/rnappauth/RNAppAuthModule;->tokenRequestHeaders:Ljava/util/Map;

    invoke-direct {v12, v2, v3}, Lcom/rnappauth/RNAppAuthModule;->createConnectionBuilder(Ljava/lang/Boolean;Ljava/util/Map;)Lnet/openid/appauth/connectivity/ConnectionBuilder;

    move-result-object v13

    .line 233
    invoke-direct {v12, v13}, Lcom/rnappauth/RNAppAuthModule;->createAppAuthConfiguration(Lnet/openid/appauth/connectivity/ConnectionBuilder;)Lnet/openid/appauth/AppAuthConfiguration;

    move-result-object v4

    .line 234
    invoke-static/range {p7 .. p7}, Lcom/rnappauth/utils/MapUtil;->readableMapToHashMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/HashMap;

    move-result-object v9

    if-eqz v0, :cond_0

    const-string v3, "client_secret"

    .line 237
    invoke-virtual {v9, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_0
    iput-object v2, v12, Lcom/rnappauth/RNAppAuthModule;->dangerouslyAllowInsecureHttpRequests:Ljava/lang/Boolean;

    .line 242
    iput-object v9, v12, Lcom/rnappauth/RNAppAuthModule;->additionalParametersMap:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 245
    iget-object v2, v12, Lcom/rnappauth/RNAppAuthModule;->mServiceConfiguration:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 266
    invoke-direct {v12, v1}, Lcom/rnappauth/RNAppAuthModule;->buildConfigurationUriFromIssuer(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    new-instance v15, Lcom/rnappauth/RNAppAuthModule$3;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p12

    move-object/from16 v5, p5

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p2

    move-object/from16 v10, p9

    move-object/from16 v11, p4

    invoke-direct/range {v1 .. v11}, Lcom/rnappauth/RNAppAuthModule$3;-><init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {v14, v15, v13}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fetchFromUrl(Landroid/net/Uri;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;Lnet/openid/appauth/connectivity/ConnectionBuilder;)V

    goto :goto_2

    .line 247
    :cond_2
    :goto_0
    :try_start_0
    iget-object v2, v12, Lcom/rnappauth/RNAppAuthModule;->mServiceConfiguration:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v1, v12, Lcom/rnappauth/RNAppAuthModule;->mServiceConfiguration:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    goto :goto_1

    :cond_3
    invoke-direct {v12, v1}, Lcom/rnappauth/RNAppAuthModule;->createAuthorizationServiceConfiguration(Lcom/facebook/react/bridge/ReadableMap;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v1

    :goto_1
    move-object v2, v1

    move-object/from16 v1, p0

    move-object v3, v4

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p2

    move-object v8, v9

    move-object/from16 v9, p9

    move-object/from16 v10, p4

    move-object/from16 v11, p12

    .line 248
    invoke-direct/range {v1 .. v11}, Lcom/rnappauth/RNAppAuthModule;->refreshWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to refresh token"

    move-object/from16 v2, p12

    invoke-interface {v2, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

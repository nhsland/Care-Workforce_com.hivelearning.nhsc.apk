.class public Lnet/openid/appauth/RegistrationRequest;
.super Ljava/lang/Object;
.source "RegistrationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/RegistrationRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPLICATION_TYPE_NATIVE:Ljava/lang/String; = "native"

.field private static final BUILT_IN_PARAMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final KEY_ADDITIONAL_PARAMETERS:Ljava/lang/String; = "additionalParameters"

.field static final KEY_CONFIGURATION:Ljava/lang/String; = "configuration"

.field static final PARAM_APPLICATION_TYPE:Ljava/lang/String; = "application_type"

.field static final PARAM_GRANT_TYPES:Ljava/lang/String; = "grant_types"

.field static final PARAM_REDIRECT_URIS:Ljava/lang/String; = "redirect_uris"

.field static final PARAM_RESPONSE_TYPES:Ljava/lang/String; = "response_types"

.field static final PARAM_SUBJECT_TYPE:Ljava/lang/String; = "subject_type"

.field static final PARAM_TOKEN_ENDPOINT_AUTHENTICATION_METHOD:Ljava/lang/String; = "token_endpoint_auth_method"

.field public static final SUBJECT_TYPE_PAIRWISE:Ljava/lang/String; = "pairwise"

.field public static final SUBJECT_TYPE_PUBLIC:Ljava/lang/String; = "public"


# instance fields
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

.field public final applicationType:Ljava/lang/String;

.field public final configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

.field public final grantTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final redirectUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final responseTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final subjectType:Ljava/lang/String;

.field public final tokenEndpointAuthenticationMethod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "redirect_uris"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "response_types"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "grant_types"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "application_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "subject_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "token_endpoint_auth_method"

    aput-object v2, v0, v1

    .line 50
    invoke-static {v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->builtInParams([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/RegistrationRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lnet/openid/appauth/RegistrationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    .line 324
    iput-object p2, p0, Lnet/openid/appauth/RegistrationRequest;->redirectUris:Ljava/util/List;

    .line 325
    iput-object p3, p0, Lnet/openid/appauth/RegistrationRequest;->responseTypes:Ljava/util/List;

    .line 326
    iput-object p4, p0, Lnet/openid/appauth/RegistrationRequest;->grantTypes:Ljava/util/List;

    .line 327
    iput-object p5, p0, Lnet/openid/appauth/RegistrationRequest;->subjectType:Ljava/lang/String;

    .line 328
    iput-object p6, p0, Lnet/openid/appauth/RegistrationRequest;->tokenEndpointAuthenticationMethod:Ljava/lang/String;

    .line 329
    iput-object p7, p0, Lnet/openid/appauth/RegistrationRequest;->additionalParameters:Ljava/util/Map;

    const-string p1, "native"

    .line 330
    iput-object p1, p0, Lnet/openid/appauth/RegistrationRequest;->applicationType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/RegistrationRequest$1;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p7}, Lnet/openid/appauth/RegistrationRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 37
    sget-object v0, Lnet/openid/appauth/RegistrationRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-object v0
.end method

.method public static jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/RegistrationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "jsonStr must not be empty or null"

    .line 415
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 416
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/RegistrationRequest;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/RegistrationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/RegistrationRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "json must not be null"

    .line 393
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "redirect_uris"

    .line 394
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getUriList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 396
    new-instance v1, Lnet/openid/appauth/RegistrationRequest$Builder;

    const-string v2, "configuration"

    .line 397
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/openid/appauth/RegistrationRequest$Builder;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/util/List;)V

    const-string v0, "subject_type"

    .line 399
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/openid/appauth/RegistrationRequest$Builder;->setSubjectType(Ljava/lang/String;)Lnet/openid/appauth/RegistrationRequest$Builder;

    move-result-object v0

    const-string v1, "response_types"

    .line 400
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringListIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/RegistrationRequest$Builder;->setResponseTypeValues(Ljava/util/List;)Lnet/openid/appauth/RegistrationRequest$Builder;

    move-result-object v0

    const-string v1, "grant_types"

    .line 401
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringListIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/RegistrationRequest$Builder;->setGrantTypeValues(Ljava/util/List;)Lnet/openid/appauth/RegistrationRequest$Builder;

    move-result-object v0

    const-string v1, "additionalParameters"

    .line 402
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/openid/appauth/RegistrationRequest$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/RegistrationRequest$Builder;

    move-result-object p0

    .line 404
    invoke-virtual {p0}, Lnet/openid/appauth/RegistrationRequest$Builder;->build()Lnet/openid/appauth/RegistrationRequest;

    move-result-object p0

    return-object p0
.end method

.method private jsonSerializeParams()Lorg/json/JSONObject;
    .locals 3

    .line 370
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 371
    iget-object v1, p0, Lnet/openid/appauth/RegistrationRequest;->redirectUris:Ljava/util/List;

    invoke-static {v1}, Lnet/openid/appauth/JsonUtil;->toJsonArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "redirect_uris"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 372
    iget-object v1, p0, Lnet/openid/appauth/RegistrationRequest;->applicationType:Ljava/lang/String;

    const-string v2, "application_type"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lnet/openid/appauth/RegistrationRequest;->responseTypes:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 375
    invoke-static {v1}, Lnet/openid/appauth/JsonUtil;->toJsonArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "response_types"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 377
    :cond_0
    iget-object v1, p0, Lnet/openid/appauth/RegistrationRequest;->grantTypes:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 378
    invoke-static {v1}, Lnet/openid/appauth/JsonUtil;->toJsonArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "grant_types"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 380
    :cond_1
    iget-object v1, p0, Lnet/openid/appauth/RegistrationRequest;->subjectType:Ljava/lang/String;

    const-string v2, "subject_type"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lnet/openid/appauth/RegistrationRequest;->tokenEndpointAuthenticationMethod:Ljava/lang/String;

    const-string v2, "token_endpoint_auth_method"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public jsonSerialize()Lorg/json/JSONObject;
    .locals 3

    .line 352
    invoke-direct {p0}, Lnet/openid/appauth/RegistrationRequest;->jsonSerializeParams()Lorg/json/JSONObject;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lnet/openid/appauth/RegistrationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "configuration"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 354
    iget-object v1, p0, Lnet/openid/appauth/RegistrationRequest;->additionalParameters:Ljava/util/Map;

    .line 355
    invoke-static {v1}, Lnet/openid/appauth/JsonUtil;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "additionalParameters"

    .line 354
    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public jsonSerializeString()Ljava/lang/String;
    .locals 1

    .line 366
    invoke-virtual {p0}, Lnet/openid/appauth/RegistrationRequest;->jsonSerialize()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 4

    .line 339
    invoke-direct {p0}, Lnet/openid/appauth/RegistrationRequest;->jsonSerializeParams()Lorg/json/JSONObject;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lnet/openid/appauth/RegistrationRequest;->additionalParameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 341
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lnet/openid/appauth/AuthorizationRequest;
.super Ljava/lang/Object;
.source "AuthorizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationRequest$Builder;,
        Lnet/openid/appauth/AuthorizationRequest$ResponseMode;,
        Lnet/openid/appauth/AuthorizationRequest$Scope;,
        Lnet/openid/appauth/AuthorizationRequest$Prompt;,
        Lnet/openid/appauth/AuthorizationRequest$Display;
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

.field public static final CODE_CHALLENGE_METHOD_PLAIN:Ljava/lang/String; = "plain"

.field public static final CODE_CHALLENGE_METHOD_S256:Ljava/lang/String; = "S256"

.field private static final KEY_ADDITIONAL_PARAMETERS:Ljava/lang/String; = "additionalParameters"

.field private static final KEY_CLIENT_ID:Ljava/lang/String; = "clientId"

.field private static final KEY_CODE_VERIFIER:Ljava/lang/String; = "codeVerifier"

.field private static final KEY_CODE_VERIFIER_CHALLENGE:Ljava/lang/String; = "codeVerifierChallenge"

.field private static final KEY_CODE_VERIFIER_CHALLENGE_METHOD:Ljava/lang/String; = "codeVerifierChallengeMethod"

.field private static final KEY_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final KEY_DISPLAY:Ljava/lang/String; = "display"

.field private static final KEY_LOGIN_HINT:Ljava/lang/String; = "login_hint"

.field private static final KEY_PROMPT:Ljava/lang/String; = "prompt"

.field private static final KEY_REDIRECT_URI:Ljava/lang/String; = "redirectUri"

.field private static final KEY_RESPONSE_MODE:Ljava/lang/String; = "responseMode"

.field private static final KEY_RESPONSE_TYPE:Ljava/lang/String; = "responseType"

.field private static final KEY_SCOPE:Ljava/lang/String; = "scope"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field static final PARAM_CLIENT_ID:Ljava/lang/String; = "client_id"

.field static final PARAM_CODE_CHALLENGE:Ljava/lang/String; = "code_challenge"

.field static final PARAM_CODE_CHALLENGE_METHOD:Ljava/lang/String; = "code_challenge_method"

.field static final PARAM_DISPLAY:Ljava/lang/String; = "display"

.field static final PARAM_LOGIN_HINT:Ljava/lang/String; = "login_hint"

.field static final PARAM_PROMPT:Ljava/lang/String; = "prompt"

.field static final PARAM_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field static final PARAM_RESPONSE_MODE:Ljava/lang/String; = "response_mode"

.field static final PARAM_RESPONSE_TYPE:Ljava/lang/String; = "response_type"

.field static final PARAM_SCOPE:Ljava/lang/String; = "scope"

.field static final PARAM_STATE:Ljava/lang/String; = "state"

.field private static final STATE_LENGTH:I = 0x10


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

.field public final clientId:Ljava/lang/String;

.field public final codeVerifier:Ljava/lang/String;

.field public final codeVerifierChallenge:Ljava/lang/String;

.field public final codeVerifierChallengeMethod:Ljava/lang/String;

.field public final configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

.field public final display:Ljava/lang/String;

.field public final loginHint:Ljava/lang/String;

.field public final prompt:Ljava/lang/String;

.field public final redirectUri:Landroid/net/Uri;

.field public final responseMode:Ljava/lang/String;

.field public final responseType:Ljava/lang/String;

.field public final scope:Ljava/lang/String;

.field public final state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "client_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "code_challenge"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "code_challenge_method"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "login_hint"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "prompt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "redirect_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "response_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "response_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "scope"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "state"

    aput-object v2, v0, v1

    .line 305
    invoke-static {v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->builtInParams([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    .line 905
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    .line 906
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationRequest;->responseType:Ljava/lang/String;

    .line 907
    iput-object p4, p0, Lnet/openid/appauth/AuthorizationRequest;->redirectUri:Landroid/net/Uri;

    .line 908
    iput-object p14, p0, Lnet/openid/appauth/AuthorizationRequest;->additionalParameters:Ljava/util/Map;

    .line 911
    iput-object p5, p0, Lnet/openid/appauth/AuthorizationRequest;->display:Ljava/lang/String;

    .line 912
    iput-object p6, p0, Lnet/openid/appauth/AuthorizationRequest;->loginHint:Ljava/lang/String;

    .line 913
    iput-object p7, p0, Lnet/openid/appauth/AuthorizationRequest;->prompt:Ljava/lang/String;

    .line 914
    iput-object p8, p0, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    .line 915
    iput-object p9, p0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    .line 916
    iput-object p10, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifier:Ljava/lang/String;

    .line 917
    iput-object p11, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallenge:Ljava/lang/String;

    .line 918
    iput-object p12, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallengeMethod:Ljava/lang/String;

    .line 919
    iput-object p13, p0, Lnet/openid/appauth/AuthorizationRequest;->responseMode:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/AuthorizationRequest$1;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p14}, Lnet/openid/appauth/AuthorizationRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-static {}, Lnet/openid/appauth/AuthorizationRequest;->generateRandomState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .line 52
    sget-object v0, Lnet/openid/appauth/AuthorizationRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-object v0
.end method

.method private static generateRandomState()Ljava/lang/String;
    .locals 2

    .line 1050
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 1052
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v0, 0xb

    .line 1053
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "json string cannot be null"

    .line 1045
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationRequest;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "json cannot be null"

    .line 1013
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    new-instance v0, Lnet/openid/appauth/AuthorizationRequest$Builder;

    const-string v1, "configuration"

    .line 1015
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v1

    const-string v2, "clientId"

    .line 1016
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "responseType"

    .line 1017
    invoke-static {p0, v3}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "redirectUri"

    .line 1018
    invoke-static {p0, v4}, Lnet/openid/appauth/JsonUtil;->getUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/openid/appauth/AuthorizationRequest$Builder;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "display"

    .line 1019
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setDisplay(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object v0

    const-string v1, "login_hint"

    .line 1020
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setLoginHint(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object v0

    const-string v1, "prompt"

    .line 1021
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setPrompt(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object v0

    const-string v1, "state"

    .line 1022
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setState(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object v0

    const-string v1, "codeVerifier"

    .line 1024
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "codeVerifierChallenge"

    .line 1025
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "codeVerifierChallengeMethod"

    .line 1026
    invoke-static {p0, v3}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1023
    invoke-virtual {v0, v1, v2, v3}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setCodeVerifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object v0

    const-string v1, "responseMode"

    .line 1027
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setResponseMode(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object v0

    const-string v1, "additionalParameters"

    .line 1028
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object v0

    const-string v1, "scope"

    .line 1030
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1031
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 1033
    :cond_0
    invoke-virtual {v0}, Lnet/openid/appauth/AuthorizationRequest$Builder;->build()Lnet/openid/appauth/AuthorizationRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getPromptValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 938
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationRequest;->prompt:Ljava/lang/String;

    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
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

    .line 929
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public jsonSerialize()Lorg/json/JSONObject;
    .locals 3

    .line 976
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 977
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "configuration"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 978
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    const-string v2, "clientId"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->responseType:Ljava/lang/String;

    const-string v2, "responseType"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->redirectUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "redirectUri"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->display:Ljava/lang/String;

    const-string v2, "display"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->loginHint:Ljava/lang/String;

    const-string v2, "login_hint"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    const-string v2, "scope"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->prompt:Ljava/lang/String;

    const-string v2, "prompt"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    const-string v2, "state"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifier:Ljava/lang/String;

    const-string v2, "codeVerifier"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallenge:Ljava/lang/String;

    const-string v2, "codeVerifierChallenge"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallengeMethod:Ljava/lang/String;

    const-string v2, "codeVerifierChallengeMethod"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->responseMode:Ljava/lang/String;

    const-string v2, "responseMode"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->additionalParameters:Ljava/util/Map;

    .line 992
    invoke-static {v1}, Lnet/openid/appauth/JsonUtil;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "additionalParameters"

    .line 991
    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public jsonSerializeString()Ljava/lang/String;
    .locals 1

    .line 1002
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationRequest;->jsonSerialize()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Landroid/net/Uri;
    .locals 4

    .line 946
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v0, v0, Lnet/openid/appauth/AuthorizationServiceConfiguration;->authorizationEndpoint:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->redirectUri:Landroid/net/Uri;

    .line 947
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "redirect_uri"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    const-string v2, "client_id"

    .line 948
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->responseType:Ljava/lang/String;

    const-string v2, "response_type"

    .line 949
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 951
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->display:Ljava/lang/String;

    const-string v2, "display"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 952
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->loginHint:Ljava/lang/String;

    const-string v2, "login_hint"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 953
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->prompt:Ljava/lang/String;

    const-string v2, "prompt"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 954
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    const-string v2, "state"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 955
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    const-string v2, "scope"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 956
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->responseMode:Ljava/lang/String;

    const-string v2, "response_mode"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 958
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifier:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 959
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallenge:Ljava/lang/String;

    const-string v2, "code_challenge"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallengeMethod:Ljava/lang/String;

    const-string v3, "code_challenge_method"

    .line 960
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 963
    :cond_0
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->additionalParameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 964
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 967
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

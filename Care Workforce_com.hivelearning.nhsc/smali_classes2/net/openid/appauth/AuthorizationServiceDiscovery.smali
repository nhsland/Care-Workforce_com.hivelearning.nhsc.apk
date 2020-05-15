.class public Lnet/openid/appauth/AuthorizationServiceDiscovery;
.super Ljava/lang/Object;
.source "AuthorizationServiceDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;
    }
.end annotation


# static fields
.field static final ACR_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final AUTHORIZATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

.field static final CLAIMS_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final CLAIMS_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

.field static final CLAIMS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final CLAIM_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final DISPLAY_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final GRANT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final ID_TOKEN_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final ID_TOKEN_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final ID_TOKEN_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final ISSUER:Lnet/openid/appauth/JsonUtil$StringField;

.field static final JWKS_URI:Lnet/openid/appauth/JsonUtil$UriField;

.field private static final MANDATORY_METADATA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final OP_POLICY_URI:Lnet/openid/appauth/JsonUtil$UriField;

.field static final OP_TOS_URI:Lnet/openid/appauth/JsonUtil$UriField;

.field static final REGISTRATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

.field static final REQUEST_OBJECT_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final REQUEST_OBJECT_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final REQUEST_OBJECT_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final REQUEST_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

.field static final REQUEST_URI_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

.field static final REQUIRE_REQUEST_URI_REGISTRATION:Lnet/openid/appauth/JsonUtil$BooleanField;

.field static final RESPONSE_MODES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final RESPONSE_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final SCOPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final SERVICE_DOCUMENTATION:Lnet/openid/appauth/JsonUtil$UriField;

.field static final SUBJECT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final TOKEN_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

.field static final TOKEN_ENDPOINT_AUTH_METHODS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final TOKEN_ENDPOINT_AUTH_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final UI_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final USERINFO_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final USERINFO_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final USERINFO_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

.field static final USERINFO_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;


# instance fields
.field public final docJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "issuer"

    .line 46
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->str(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ISSUER:Lnet/openid/appauth/JsonUtil$StringField;

    const-string v0, "authorization_endpoint"

    .line 49
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->AUTHORIZATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    const-string v0, "token_endpoint"

    .line 52
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    const-string v0, "userinfo_endpoint"

    .line 55
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    const-string v0, "jwks_uri"

    .line 58
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->JWKS_URI:Lnet/openid/appauth/JsonUtil$UriField;

    const-string v0, "registration_endpoint"

    .line 61
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REGISTRATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    const-string v0, "scopes_supported"

    .line 64
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SCOPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v0, "response_types_supported"

    .line 67
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->RESPONSE_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v0, "response_modes_supported"

    .line 70
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->RESPONSE_MODES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "authorization_code"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "implicit"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 74
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "grant_types_supported"

    invoke-static {v2, v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;Ljava/util/List;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->GRANT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "acr_values_supported"

    .line 77
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ACR_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "subject_types_supported"

    .line 80
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SUBJECT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "id_token_signing_alg_values_supported"

    .line 84
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "id_token_encryption_enc_values_supported"

    .line 88
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v2

    sput-object v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 92
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "userinfo_signing_alg_values_supported"

    .line 96
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "userinfo_encryption_alg_values_supported"

    .line 100
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "userinfo_encryption_enc_values_supported"

    .line 104
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "request_object_signing_alg_values_supported"

    .line 108
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "request_object_encryption_alg_values_supported"

    .line 112
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "request_object_encryption_enc_values_supported"

    .line 116
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "client_secret_basic"

    .line 121
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "token_endpoint_auth_methods_supported"

    .line 120
    invoke-static {v2, v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;Ljava/util/List;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT_AUTH_METHODS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "token_endpoint_auth_signing_alg_values_supported"

    .line 125
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT_AUTH_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "display_values_supported"

    .line 128
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->DISPLAY_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "normal"

    .line 132
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "claim_types_supported"

    invoke-static {v2, v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;Ljava/util/List;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIM_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "claims_supported"

    .line 135
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "service_documentation"

    .line 138
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SERVICE_DOCUMENTATION:Lnet/openid/appauth/JsonUtil$UriField;

    const-string v1, "claims_locales_supported"

    .line 141
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "ui_locales_supported"

    .line 144
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->UI_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v1, "claims_parameter_supported"

    .line 148
    invoke-static {v1, v3}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->bool(Ljava/lang/String;Z)Lnet/openid/appauth/JsonUtil$BooleanField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    const-string v1, "request_parameter_supported"

    .line 152
    invoke-static {v1, v3}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->bool(Ljava/lang/String;Z)Lnet/openid/appauth/JsonUtil$BooleanField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    const-string v1, "request_uri_parameter_supported"

    .line 156
    invoke-static {v1, v4}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->bool(Ljava/lang/String;Z)Lnet/openid/appauth/JsonUtil$BooleanField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_URI_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    const-string v1, "require_request_uri_registration"

    .line 160
    invoke-static {v1, v3}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->bool(Ljava/lang/String;Z)Lnet/openid/appauth/JsonUtil$BooleanField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUIRE_REQUEST_URI_REGISTRATION:Lnet/openid/appauth/JsonUtil$BooleanField;

    const-string v1, "op_policy_uri"

    .line 163
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->OP_POLICY_URI:Lnet/openid/appauth/JsonUtil$UriField;

    const-string v1, "op_tos_uri"

    .line 166
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->OP_TOS_URI:Lnet/openid/appauth/JsonUtil$UriField;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    .line 171
    sget-object v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ISSUER:Lnet/openid/appauth/JsonUtil$StringField;

    iget-object v2, v2, Lnet/openid/appauth/JsonUtil$StringField;->key:Ljava/lang/String;

    aput-object v2, v1, v3

    sget-object v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->AUTHORIZATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    iget-object v2, v2, Lnet/openid/appauth/JsonUtil$UriField;->key:Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->JWKS_URI:Lnet/openid/appauth/JsonUtil$UriField;

    iget-object v2, v2, Lnet/openid/appauth/JsonUtil$UriField;->key:Ljava/lang/String;

    aput-object v2, v1, v0

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->RESPONSE_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    iget-object v0, v0, Lnet/openid/appauth/JsonUtil$StringListField;->key:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SUBJECT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    iget-object v0, v0, Lnet/openid/appauth/JsonUtil$StringListField;->key:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    iget-object v0, v0, Lnet/openid/appauth/JsonUtil$StringListField;->key:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->MANDATORY_METADATA:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    .line 194
    sget-object p1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->MANDATORY_METADATA:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    new-instance p1, Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;

    invoke-direct {p1, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private static bool(Ljava/lang/String;Z)Lnet/openid/appauth/JsonUtil$BooleanField;
    .locals 1

    .line 609
    new-instance v0, Lnet/openid/appauth/JsonUtil$BooleanField;

    invoke-direct {v0, p0, p1}, Lnet/openid/appauth/JsonUtil$BooleanField;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/openid/appauth/JsonUtil$Field<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lnet/openid/appauth/JsonUtil;->get(Lorg/json/JSONObject;Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/openid/appauth/JsonUtil$ListField<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lnet/openid/appauth/JsonUtil;->get(Lorg/json/JSONObject;Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static str(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringField;
    .locals 1

    .line 581
    new-instance v0, Lnet/openid/appauth/JsonUtil$StringField;

    invoke-direct {v0, p0}, Lnet/openid/appauth/JsonUtil$StringField;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;
    .locals 1

    .line 595
    new-instance v0, Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {v0, p0}, Lnet/openid/appauth/JsonUtil$StringListField;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static strList(Ljava/lang/String;Ljava/util/List;)Lnet/openid/appauth/JsonUtil$StringListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/JsonUtil$StringListField;"
        }
    .end annotation

    .line 602
    new-instance v0, Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {v0, p0, p1}, Lnet/openid/appauth/JsonUtil$StringListField;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method private static uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;
    .locals 1

    .line 588
    new-instance v0, Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {v0, p0}, Lnet/openid/appauth/JsonUtil$UriField;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAcrValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ACR_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationEndpoint()Landroid/net/Uri;
    .locals 1

    .line 251
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->AUTHORIZATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getClaimTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 479
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIM_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClaimsLocalesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 507
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClaimsSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 487
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 468
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->DISPLAY_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGrantTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 322
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->GRANT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdTokenEncryptionAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 357
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdTokenEncryptionEncodingValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 367
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdTokenSigningAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 347
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .line 243
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ISSUER:Lnet/openid/appauth/JsonUtil$StringField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getJwksUri()Landroid/net/Uri;
    .locals 1

    .line 277
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->JWKS_URI:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getOpPolicyUri()Landroid/net/Uri;
    .locals 1

    .line 566
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->OP_POLICY_URI:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getOpTosUri()Landroid/net/Uri;
    .locals 1

    .line 574
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->OP_TOS_URI:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getRegistrationEndpoint()Landroid/net/Uri;
    .locals 1

    .line 285
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REGISTRATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getRequestObjectEncryptionAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 422
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestObjectEncryptionEncodingValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 430
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestObjectSigningAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 414
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponseModesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 313
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->RESPONSE_MODES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 303
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->RESPONSE_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScopesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 295
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SCOPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServiceDocumentation()Landroid/net/Uri;
    .locals 1

    .line 496
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SERVICE_DOCUMENTATION:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getSubjectTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 337
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SUBJECT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTokenEndpoint()Landroid/net/Uri;
    .locals 1

    .line 259
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getTokenEndpointAuthMethodsSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 445
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT_AUTH_METHODS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTokenEndpointAuthSigningAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 457
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT_AUTH_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUiLocalesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 518
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->UI_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserinfoEncryptionAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 393
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserinfoEncryptionEncodingValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 404
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserinfoEndpoint()Landroid/net/Uri;
    .locals 1

    .line 267
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getUserinfoSigningAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 380
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isClaimsParameterSupported()Z
    .locals 1

    .line 528
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRequestParameterSupported()Z
    .locals 1

    .line 538
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRequestUriParameterSupported()Z
    .locals 1

    .line 548
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_URI_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public requireRequestUriRegistration()Z
    .locals 1

    .line 558
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUIRE_REQUEST_URI_REGISTRATION:Lnet/openid/appauth/JsonUtil$BooleanField;

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

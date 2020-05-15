.class public final Lnet/openid/appauth/AuthorizationException$RegistrationRequestErrors;
.super Ljava/lang/Object;
.source "AuthorizationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegistrationRequestErrors"
.end annotation


# static fields
.field public static final CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_CLIENT_METADATA:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_REDIRECT_URI:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

.field public static final OTHER:Lnet/openid/appauth/AuthorizationException;

.field private static final STRING_TO_EXCEPTION:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/openid/appauth/AuthorizationException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xfa0

    const-string v1, "invalid_request"

    .line 402
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$400(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$RegistrationRequestErrors;->INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0xfa1

    const-string v1, "invalid_redirect_uri"

    .line 408
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$400(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$RegistrationRequestErrors;->INVALID_REDIRECT_URI:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0xfa2

    const-string v1, "invalid_client_metadata"

    .line 414
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$400(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$RegistrationRequestErrors;->INVALID_CLIENT_METADATA:Lnet/openid/appauth/AuthorizationException;

    const/4 v0, 0x0

    const/16 v1, 0xfa3

    .line 421
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$400(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationException$RegistrationRequestErrors;->CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

    const/16 v1, 0xfa4

    .line 430
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$400(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$RegistrationRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x5

    new-array v1, v1, [Lnet/openid/appauth/AuthorizationException;

    .line 432
    sget-object v2, Lnet/openid/appauth/AuthorizationException$RegistrationRequestErrors;->INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lnet/openid/appauth/AuthorizationException$RegistrationRequestErrors;->INVALID_REDIRECT_URI:Lnet/openid/appauth/AuthorizationException;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lnet/openid/appauth/AuthorizationException$RegistrationRequestErrors;->INVALID_CLIENT_METADATA:Lnet/openid/appauth/AuthorizationException;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lnet/openid/appauth/AuthorizationException$RegistrationRequestErrors;->CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 433
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationException;->access$200([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$RegistrationRequestErrors;->STRING_TO_EXCEPTION:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byString(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 1

    .line 445
    sget-object v0, Lnet/openid/appauth/AuthorizationException$RegistrationRequestErrors;->STRING_TO_EXCEPTION:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/openid/appauth/AuthorizationException;

    if-eqz p0, :cond_0

    return-object p0

    .line 449
    :cond_0
    sget-object p0, Lnet/openid/appauth/AuthorizationException$RegistrationRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    return-object p0
.end method

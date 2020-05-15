.class public final Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;
.super Ljava/lang/Object;
.source "AuthorizationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorizationRequestErrors"
.end annotation


# static fields
.field public static final ACCESS_DENIED:Lnet/openid/appauth/AuthorizationException;

.field public static final CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_SCOPE:Lnet/openid/appauth/AuthorizationException;

.field public static final OTHER:Lnet/openid/appauth/AuthorizationException;

.field public static final SERVER_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final STATE_MISMATCH:Lnet/openid/appauth/AuthorizationException;

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

.field public static final TEMPORARILY_UNAVAILABLE:Lnet/openid/appauth/AuthorizationException;

.field public static final UNAUTHORIZED_CLIENT:Lnet/openid/appauth/AuthorizationException;

.field public static final UNSUPPORTED_RESPONSE_TYPE:Lnet/openid/appauth/AuthorizationException;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x3e8

    const-string v1, "invalid_request"

    .line 218
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0x3e9

    const-string v1, "unauthorized_client"

    .line 224
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->UNAUTHORIZED_CLIENT:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0x3ea

    const-string v1, "access_denied"

    .line 230
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->ACCESS_DENIED:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0x3eb

    const-string v1, "unsupported_response_type"

    .line 236
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->UNSUPPORTED_RESPONSE_TYPE:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0x3ec

    const-string v1, "invalid_scope"

    .line 242
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->INVALID_SCOPE:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0x3ed

    const-string v1, "server_error"

    .line 249
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->SERVER_ERROR:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0x3ee

    const-string v1, "temporarily_unavailable"

    .line 256
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->TEMPORARILY_UNAVAILABLE:Lnet/openid/appauth/AuthorizationException;

    const/4 v0, 0x0

    const/16 v1, 0x3ef

    .line 263
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

    const/16 v1, 0x3f0

    .line 272
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0x9

    const-string v1, "Response state param did not match request state"

    .line 279
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->STATE_MISMATCH:Lnet/openid/appauth/AuthorizationException;

    new-array v0, v0, [Lnet/openid/appauth/AuthorizationException;

    .line 281
    sget-object v1, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->UNAUTHORIZED_CLIENT:Lnet/openid/appauth/AuthorizationException;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->ACCESS_DENIED:Lnet/openid/appauth/AuthorizationException;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->UNSUPPORTED_RESPONSE_TYPE:Lnet/openid/appauth/AuthorizationException;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->INVALID_SCOPE:Lnet/openid/appauth/AuthorizationException;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->SERVER_ERROR:Lnet/openid/appauth/AuthorizationException;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->TEMPORARILY_UNAVAILABLE:Lnet/openid/appauth/AuthorizationException;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 282
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationException;->access$200([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->STRING_TO_EXCEPTION:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byString(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 1

    .line 299
    sget-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->STRING_TO_EXCEPTION:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/openid/appauth/AuthorizationException;

    if-eqz p0, :cond_0

    return-object p0

    .line 303
    :cond_0
    sget-object p0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    return-object p0
.end method

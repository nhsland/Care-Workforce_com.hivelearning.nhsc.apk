.class public final Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;
.super Ljava/lang/Object;
.source "AuthorizationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenRequestErrors"
.end annotation


# static fields
.field public static final CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_CLIENT:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_GRANT:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_SCOPE:Lnet/openid/appauth/AuthorizationException;

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

.field public static final UNAUTHORIZED_CLIENT:Lnet/openid/appauth/AuthorizationException;

.field public static final UNSUPPORTED_GRANT_TYPE:Lnet/openid/appauth/AuthorizationException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x7d0

    const-string v1, "invalid_request"

    .line 320
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0x7d1

    const-string v1, "invalid_client"

    .line 326
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_CLIENT:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0x7d2

    const-string v1, "invalid_grant"

    .line 332
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_GRANT:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0x7d3

    const-string v1, "unauthorized_client"

    .line 338
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->UNAUTHORIZED_CLIENT:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0x7d4

    const-string v1, "unsupported_grant_type"

    .line 344
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->UNSUPPORTED_GRANT_TYPE:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0x7d5

    const-string v1, "invalid_scope"

    .line 350
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_SCOPE:Lnet/openid/appauth/AuthorizationException;

    const/4 v0, 0x0

    const/16 v1, 0x7d6

    .line 357
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

    const/16 v1, 0x7d7

    .line 366
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    const/16 v1, 0x8

    new-array v1, v1, [Lnet/openid/appauth/AuthorizationException;

    .line 368
    sget-object v2, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_CLIENT:Lnet/openid/appauth/AuthorizationException;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_GRANT:Lnet/openid/appauth/AuthorizationException;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->UNAUTHORIZED_CLIENT:Lnet/openid/appauth/AuthorizationException;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->UNSUPPORTED_GRANT_TYPE:Lnet/openid/appauth/AuthorizationException;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->INVALID_SCOPE:Lnet/openid/appauth/AuthorizationException;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 369
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationException;->access$200([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->STRING_TO_EXCEPTION:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byString(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 1

    .line 384
    sget-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->STRING_TO_EXCEPTION:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/openid/appauth/AuthorizationException;

    if-eqz p0, :cond_0

    return-object p0

    .line 388
    :cond_0
    sget-object p0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    return-object p0
.end method

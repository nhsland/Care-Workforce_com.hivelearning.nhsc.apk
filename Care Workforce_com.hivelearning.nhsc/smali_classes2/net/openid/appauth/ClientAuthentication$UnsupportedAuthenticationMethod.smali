.class public Lnet/openid/appauth/ClientAuthentication$UnsupportedAuthenticationMethod;
.super Ljava/lang/Exception;
.source "ClientAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/ClientAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnsupportedAuthenticationMethod"
.end annotation


# instance fields
.field private mAuthMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported client authentication method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lnet/openid/appauth/ClientAuthentication$UnsupportedAuthenticationMethod;->mAuthMethod:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUnsupportedAuthenticationMethod()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lnet/openid/appauth/ClientAuthentication$UnsupportedAuthenticationMethod;->mAuthMethod:Ljava/lang/String;

    return-object v0
.end method

.class Lcom/rnappauth/RNAppAuthModule$5;
.super Ljava/lang/Object;
.source "RNAppAuthModule.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnappauth/RNAppAuthModule;->refreshWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnappauth/RNAppAuthModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule$5;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iput-object p2, p0, Lcom/rnappauth/RNAppAuthModule$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 464
    invoke-static {p1}, Lcom/rnappauth/utils/TokenResponseFactory;->tokenResponseToMap(Lnet/openid/appauth/TokenResponse;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 465
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 467
    :cond_0
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object p2, p2, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    const-string v0, "Failed to refresh token"

    invoke-interface {p1, v0, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

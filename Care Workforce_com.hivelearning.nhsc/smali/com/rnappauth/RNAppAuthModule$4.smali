.class Lcom/rnappauth/RNAppAuthModule$4;
.super Ljava/lang/Object;
.source "RNAppAuthModule.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnappauth/RNAppAuthModule;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnappauth/RNAppAuthModule;

.field final synthetic val$authorizePromise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$response:Lnet/openid/appauth/AuthorizationResponse;


# direct methods
.method constructor <init>(Lcom/rnappauth/RNAppAuthModule;Lnet/openid/appauth/AuthorizationResponse;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule$4;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iput-object p2, p0, Lcom/rnappauth/RNAppAuthModule$4;->val$response:Lnet/openid/appauth/AuthorizationResponse;

    iput-object p3, p0, Lcom/rnappauth/RNAppAuthModule$4;->val$authorizePromise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 325
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$4;->val$response:Lnet/openid/appauth/AuthorizationResponse;

    invoke-static {p1, p2}, Lcom/rnappauth/utils/TokenResponseFactory;->tokenResponseToMap(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationResponse;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 326
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$4;->val$authorizePromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$4;->this$0:Lcom/rnappauth/RNAppAuthModule;

    invoke-static {p1}, Lcom/rnappauth/RNAppAuthModule;->access$400(Lcom/rnappauth/RNAppAuthModule;)Lcom/facebook/react/bridge/Promise;

    move-result-object p1

    iget-object p2, p2, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    const-string v0, "Failed exchange token"

    invoke-interface {p1, v0, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

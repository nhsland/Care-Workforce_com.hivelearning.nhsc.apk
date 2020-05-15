.class Lcom/rnappauth/RNAppAuthModule$3;
.super Ljava/lang/Object;
.source "RNAppAuthModule.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnappauth/RNAppAuthModule;->refresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnappauth/RNAppAuthModule;

.field final synthetic val$additionalParametersMap:Ljava/util/HashMap;

.field final synthetic val$appAuthConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

.field final synthetic val$clientAuthMethod:Ljava/lang/String;

.field final synthetic val$clientId:Ljava/lang/String;

.field final synthetic val$clientSecret:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$redirectUrl:Ljava/lang/String;

.field final synthetic val$refreshToken:Ljava/lang/String;

.field final synthetic val$scopes:Lcom/facebook/react/bridge/ReadableArray;


# direct methods
.method constructor <init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule$3;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iput-object p2, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$appAuthConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

    iput-object p4, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$refreshToken:Ljava/lang/String;

    iput-object p5, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$clientId:Ljava/lang/String;

    iput-object p6, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$scopes:Lcom/facebook/react/bridge/ReadableArray;

    iput-object p7, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$redirectUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$additionalParametersMap:Ljava/util/HashMap;

    iput-object p9, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$clientAuthMethod:Ljava/lang/String;

    iput-object p10, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$clientSecret:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchConfigurationCompleted(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AuthorizationException;)V
    .locals 11

    if-eqz p2, :cond_0

    .line 272
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object p2, p2, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    const-string v0, "Failed to fetch configuration"

    invoke-interface {p1, v0, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 276
    :cond_0
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$3;->this$0:Lcom/rnappauth/RNAppAuthModule;

    invoke-static {p2}, Lcom/rnappauth/RNAppAuthModule;->access$000(Lcom/rnappauth/RNAppAuthModule;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/rnappauth/RNAppAuthModule$3;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iget-object v2, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$appAuthConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

    iget-object v3, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$refreshToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$clientId:Ljava/lang/String;

    iget-object v5, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$scopes:Lcom/facebook/react/bridge/ReadableArray;

    iget-object v6, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$redirectUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$additionalParametersMap:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$clientAuthMethod:Ljava/lang/String;

    iget-object v9, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$clientSecret:Ljava/lang/String;

    iget-object v10, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    move-object v1, p1

    invoke-static/range {v0 .. v10}, Lcom/rnappauth/RNAppAuthModule;->access$300(Lcom/rnappauth/RNAppAuthModule;Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

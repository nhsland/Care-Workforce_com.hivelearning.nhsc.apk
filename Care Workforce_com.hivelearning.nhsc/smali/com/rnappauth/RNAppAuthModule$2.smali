.class Lcom/rnappauth/RNAppAuthModule$2;
.super Ljava/lang/Object;
.source "RNAppAuthModule.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnappauth/RNAppAuthModule;->authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnappauth/RNAppAuthModule;

.field final synthetic val$additionalParametersMap:Ljava/util/HashMap;

.field final synthetic val$appAuthConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

.field final synthetic val$clientId:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$redirectUrl:Ljava/lang/String;

.field final synthetic val$scopes:Lcom/facebook/react/bridge/ReadableArray;

.field final synthetic val$usePKCE:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule$2;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iput-object p2, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$appAuthConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

    iput-object p4, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$clientId:Ljava/lang/String;

    iput-object p5, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$scopes:Lcom/facebook/react/bridge/ReadableArray;

    iput-object p6, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$redirectUrl:Ljava/lang/String;

    iput-object p7, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$usePKCE:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$additionalParametersMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchConfigurationCompleted(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AuthorizationException;)V
    .locals 8

    if-eqz p2, :cond_0

    .line 190
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object p2, p2, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    const-string v0, "Failed to fetch configuration"

    invoke-interface {p1, v0, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 194
    :cond_0
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$2;->this$0:Lcom/rnappauth/RNAppAuthModule;

    invoke-static {p2}, Lcom/rnappauth/RNAppAuthModule;->access$000(Lcom/rnappauth/RNAppAuthModule;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/rnappauth/RNAppAuthModule$2;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iget-object v2, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$appAuthConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

    iget-object v3, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$clientId:Ljava/lang/String;

    iget-object v4, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$scopes:Lcom/facebook/react/bridge/ReadableArray;

    iget-object v5, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$redirectUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$usePKCE:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$additionalParametersMap:Ljava/util/HashMap;

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/rnappauth/RNAppAuthModule;->access$200(Lcom/rnappauth/RNAppAuthModule;Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    return-void
.end method

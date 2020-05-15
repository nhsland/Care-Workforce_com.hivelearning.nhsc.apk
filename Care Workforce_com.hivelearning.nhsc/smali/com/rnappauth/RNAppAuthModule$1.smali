.class Lcom/rnappauth/RNAppAuthModule$1;
.super Ljava/lang/Object;
.source "RNAppAuthModule.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnappauth/RNAppAuthModule;->prefetchConfiguration(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnappauth/RNAppAuthModule;

.field final synthetic val$fetchConfigurationLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule$1;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iput-object p2, p0, Lcom/rnappauth/RNAppAuthModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lcom/rnappauth/RNAppAuthModule$1;->val$fetchConfigurationLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchConfigurationCompleted(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AuthorizationException;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 111
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "RNAppAuth Error"

    const-string v1, "Failed to fetch configuration"

    invoke-interface {p1, v0, v1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 114
    :cond_0
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$1;->this$0:Lcom/rnappauth/RNAppAuthModule;

    invoke-static {p2}, Lcom/rnappauth/RNAppAuthModule;->access$000(Lcom/rnappauth/RNAppAuthModule;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 115
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$1;->this$0:Lcom/rnappauth/RNAppAuthModule;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/rnappauth/RNAppAuthModule;->access$102(Lcom/rnappauth/RNAppAuthModule;Z)Z

    .line 116
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$1;->val$fetchConfigurationLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

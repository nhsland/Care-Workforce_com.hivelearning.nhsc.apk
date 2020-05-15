.class Lio/invertase/firebase/config/RNFirebaseRemoteConfig$1;
.super Ljava/lang/Object;
.source "RNFirebaseRemoteConfig.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/config/RNFirebaseRemoteConfig;->fetchInternal(Lcom/facebook/react/bridge/Promise;Ljava/lang/Boolean;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/config/RNFirebaseRemoteConfig;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/config/RNFirebaseRemoteConfig;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lio/invertase/firebase/config/RNFirebaseRemoteConfig$1;->this$0:Lio/invertase/firebase/config/RNFirebaseRemoteConfig;

    iput-object p2, p0, Lio/invertase/firebase/config/RNFirebaseRemoteConfig$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object p1, p0, Lio/invertase/firebase/config/RNFirebaseRemoteConfig$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lio/invertase/firebase/config/RNFirebaseRemoteConfig$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 154
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v1, "config/throttled"

    const-string v2, "fetch() operation cannot be completed successfully, due to throttling."

    .line 151
    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lio/invertase/firebase/config/RNFirebaseRemoteConfig$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 160
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v1, "config/failure"

    const-string v2, "fetch() operation cannot be completed successfully."

    .line 157
    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

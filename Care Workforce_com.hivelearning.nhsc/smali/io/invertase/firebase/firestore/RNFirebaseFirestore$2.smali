.class Lio/invertase/firebase/firestore/RNFirebaseFirestore$2;
.super Ljava/lang/Object;
.source "RNFirebaseFirestore.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/firestore/RNFirebaseFirestore;->enableNetwork(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
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
.field final synthetic this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestore;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/firestore/RNFirebaseFirestore;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$2;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestore;

    iput-object p2, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$2;->val$promise:Lcom/facebook/react/bridge/Promise;

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

    .line 271
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "RNFirebaseFirestore"

    if-eqz v0, :cond_0

    const-string p1, "enableNetwork:onComplete:success"

    .line 272
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    const-string v2, "enableNetwork:onComplete:failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 278
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 276
    invoke-static {v0, p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->promiseRejectException(Lcom/facebook/react/bridge/Promise;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    :goto_0
    return-void
.end method

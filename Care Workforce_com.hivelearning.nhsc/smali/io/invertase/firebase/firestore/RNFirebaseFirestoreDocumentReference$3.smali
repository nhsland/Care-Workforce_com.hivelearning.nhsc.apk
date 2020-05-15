.class Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$3;
.super Ljava/lang/Object;
.source "RNFirebaseFirestoreDocumentReference.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->get(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/firestore/DocumentSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$serializeAsyncTask:Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;


# direct methods
.method constructor <init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$3;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    iput-object p2, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$3;->val$serializeAsyncTask:Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;

    iput-object p3, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$3;->val$promise:Lcom/facebook/react/bridge/Promise;

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
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "RNFBFSDocumentReference"

    if-eqz v0, :cond_0

    const-string v0, "get:onComplete:success"

    .line 105
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$3;->val$serializeAsyncTask:Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    const-string v2, "get:onComplete:failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 111
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 109
    invoke-static {v0, p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->promiseRejectException(Lcom/facebook/react/bridge/Promise;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    :goto_0
    return-void
.end method

.class Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$1;
.super Lio/invertase/firebase/firestore/QuerySnapshotSerializeAsyncTask;
.source "RNFirebaseFirestoreCollectionReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->get(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;Lcom/facebook/react/bridge/ReactContext;Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$1;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;

    iput-object p4, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0, p2, p3}, Lio/invertase/firebase/firestore/QuerySnapshotSerializeAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 86
    check-cast p1, Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$1;->onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.class Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$2;
.super Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;
.source "RNFirebaseFirestoreDocumentReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->get(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Lcom/facebook/react/bridge/ReactContext;Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$2;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    iput-object p4, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0, p2, p3}, Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$2;->onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

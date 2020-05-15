.class Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$7;
.super Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;
.source "RNFirebaseFirestoreDocumentReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->handleDocumentSnapshotEvent(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

.field final synthetic val$listenerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Lcom/facebook/react/bridge/ReactContext;Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$7;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    iput-object p4, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$7;->val$listenerId:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 3

    .line 242
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$7;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    invoke-static {v1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->access$300(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$7;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    invoke-static {v1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->access$400(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appName"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$7;->val$listenerId:Ljava/lang/String;

    const-string v2, "listenerId"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "documentSnapshot"

    .line 246
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 247
    iget-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$7;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    invoke-static {p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->access$500(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    const-string v1, "firestore_document_sync_event"

    invoke-static {p1, v1, v0}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 239
    check-cast p1, Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$7;->onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

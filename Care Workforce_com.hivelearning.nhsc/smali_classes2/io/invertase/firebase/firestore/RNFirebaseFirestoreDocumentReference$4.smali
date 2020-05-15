.class Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$4;
.super Ljava/lang/Object;
.source "RNFirebaseFirestoreDocumentReference.java"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->onSnapshot(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/firestore/EventListener<",
        "Lcom/google/firebase/firestore/DocumentSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

.field final synthetic val$listenerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$4;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    iput-object p2, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$4;->val$listenerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    if-nez p2, :cond_0

    .line 127
    iget-object p2, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$4;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$4;->val$listenerId:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->access$000(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->access$100()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$4;->val$listenerId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/ListenerRegistration;

    if-eqz p1, :cond_1

    .line 132
    invoke-interface {p1}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    .line 135
    :cond_1
    iget-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$4;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$4;->val$listenerId:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->access$200(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    .line 120
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    invoke-virtual {p0, p1, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$4;->onEvent(Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

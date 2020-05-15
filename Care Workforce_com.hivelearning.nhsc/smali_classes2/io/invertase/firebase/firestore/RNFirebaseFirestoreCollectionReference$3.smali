.class Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$3;
.super Ljava/lang/Object;
.source "RNFirebaseFirestoreCollectionReference.java"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->onSnapshot(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/firestore/EventListener<",
        "Lcom/google/firebase/firestore/QuerySnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;

.field final synthetic val$listenerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$3;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;

    iput-object p2, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$3;->val$listenerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    if-nez p2, :cond_0

    .line 118
    iget-object p2, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$3;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;

    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$3;->val$listenerId:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->access$000(Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;Ljava/lang/String;Lcom/google/firebase/firestore/QuerySnapshot;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->access$100()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$3;->val$listenerId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/ListenerRegistration;

    if-eqz p1, :cond_1

    .line 123
    invoke-interface {p1}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    .line 125
    :cond_1
    iget-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$3;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;

    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$3;->val$listenerId:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->access$200(Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    .line 114
    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {p0, p1, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference$3;->onEvent(Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

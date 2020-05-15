.class Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$1;
.super Ljava/lang/Object;
.source "RNFirebaseFirestore.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;


# direct methods
.method constructor <init>(Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$1;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 689
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$1;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object v0, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$transactionHandler:Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    iget-boolean v0, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->aborted:Z

    if-nez v0, :cond_0

    const-string v0, "RNFirebaseFirestore"

    const-string v1, "Transaction onFailure."

    .line 690
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 691
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$1;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object v0, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$transactionHandler:Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    check-cast p1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v1, "error"

    invoke-virtual {v0, p1, v1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->createEventMap(Lcom/google/firebase/firestore/FirebaseFirestoreException;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 695
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$1;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object v0, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestore;

    .line 696
    invoke-static {v0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->access$000(Lio/invertase/firebase/firestore/RNFirebaseFirestore;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "firestore_transaction_event"

    .line 695
    invoke-static {v0, v1, p1}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

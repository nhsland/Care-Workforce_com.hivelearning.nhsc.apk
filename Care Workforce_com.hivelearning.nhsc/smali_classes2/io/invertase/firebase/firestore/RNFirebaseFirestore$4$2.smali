.class Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$2;
.super Ljava/lang/Object;
.source "RNFirebaseFirestore.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;


# direct methods
.method constructor <init>(Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$2;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 672
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2

    .line 675
    iget-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$2;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object p1, p1, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$transactionHandler:Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    iget-boolean p1, p1, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->aborted:Z

    if-nez p1, :cond_0

    const-string p1, "RNFirebaseFirestore"

    const-string v0, "Transaction onSuccess!"

    .line 676
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$2;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object p1, p1, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$transactionHandler:Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    const/4 v0, 0x0

    const-string v1, "complete"

    invoke-virtual {p1, v0, v1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->createEventMap(Lcom/google/firebase/firestore/FirebaseFirestoreException;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 678
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$2;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object v0, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestore;

    .line 679
    invoke-static {v0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->access$100(Lio/invertase/firebase/firestore/RNFirebaseFirestore;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "firestore_transaction_event"

    .line 678
    invoke-static {v0, v1, p1}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

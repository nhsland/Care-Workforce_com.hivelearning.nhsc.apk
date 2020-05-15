.class Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3$1;
.super Ljava/lang/Object;
.source "RNFirebaseFirestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;->apply(Lcom/google/firebase/firestore/Transaction;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;


# direct methods
.method constructor <init>(Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3$1;->this$2:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 590
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3$1;->this$2:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;

    iget-object v0, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object v0, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$transactionHandler:Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    const/4 v1, 0x0

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->createEventMap(Lcom/google/firebase/firestore/FirebaseFirestoreException;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3$1;->this$2:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;

    iget-object v1, v1, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object v1, v1, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestore;

    .line 592
    invoke-static {v1}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->access$200(Lio/invertase/firebase/firestore/RNFirebaseFirestore;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const-string v2, "firestore_transaction_event"

    .line 591
    invoke-static {v1, v2, v0}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

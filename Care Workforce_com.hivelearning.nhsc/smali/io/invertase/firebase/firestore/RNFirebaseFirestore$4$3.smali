.class Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;
.super Ljava/lang/Object;
.source "RNFirebaseFirestore.java"

# interfaces
.implements Lcom/google/firebase/firestore/Transaction$Function;


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
        "Lcom/google/firebase/firestore/Transaction$Function<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;


# direct methods
.method constructor <init>(Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Lcom/google/firebase/firestore/Transaction;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/google/firebase/firestore/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/firestore/FirebaseFirestoreException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0, p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;->apply(Lcom/google/firebase/firestore/Transaction;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/google/firebase/firestore/Transaction;)Ljava/lang/Void;
    .locals 13
    .param p1    # Lcom/google/firebase/firestore/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/firestore/FirebaseFirestoreException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object v0, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$transactionHandler:Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    invoke-virtual {v0, p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->resetState(Lcom/google/firebase/firestore/Transaction;)V

    .line 587
    new-instance v0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3$1;

    invoke-direct {v0, p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3$1;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 600
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object v0, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$transactionHandler:Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    invoke-virtual {v0}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->await()V

    .line 603
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object v0, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$transactionHandler:Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    iget-boolean v0, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->aborted:Z

    if-nez v0, :cond_b

    .line 611
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object v0, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$transactionHandler:Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    iget-boolean v0, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->timeout:Z

    if-nez v0, :cond_a

    .line 619
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object v0, v0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$transactionHandler:Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    invoke-virtual {v0}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->getCommandBuffer()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 626
    :cond_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_9

    .line 628
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    const-string v6, "path"

    .line 629
    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    .line 630
    invoke-interface {v5, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 631
    iget-object v8, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object v8, v8, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestore;

    iget-object v9, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object v9, v9, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$appName:Ljava/lang/String;

    invoke-static {v8, v9, v6}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->access$300(Lio/invertase/firebase/firestore/RNFirebaseFirestore;Ljava/lang/String;Ljava/lang/String;)Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    move-result-object v6

    const/4 v8, -0x1

    .line 636
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x4f997a55

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v9, v10, :cond_3

    const v10, -0x31ffc737    # -5.3780128E8f

    if-eq v9, v10, :cond_2

    const v10, 0x1bc62

    if-eq v9, v10, :cond_1

    goto :goto_1

    :cond_1
    const-string v9, "set"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    const-string v9, "update"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const-string v9, "delete"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v8, 0x2

    :cond_4
    :goto_1
    const-string v7, "data"

    if-eqz v8, :cond_7

    if-eq v8, v12, :cond_6

    if-ne v8, v11, :cond_5

    .line 662
    invoke-virtual {v6}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->getRef()Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/firebase/firestore/Transaction;->delete(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/Transaction;

    goto :goto_2

    .line 665
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown command type at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 652
    :cond_6
    invoke-interface {v5, v7}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    .line 654
    iget-object v7, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object v7, v7, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$appName:Ljava/lang/String;

    .line 655
    invoke-static {v7}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getFirestoreForApp(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v7

    .line 654
    invoke-static {v7, v5}, Lio/invertase/firebase/firestore/FirestoreSerialize;->parseReadableMap(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object v5

    .line 659
    invoke-virtual {v6}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->getRef()Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Lcom/google/firebase/firestore/Transaction;->update(Lcom/google/firebase/firestore/DocumentReference;Ljava/util/Map;)Lcom/google/firebase/firestore/Transaction;

    goto :goto_2

    .line 638
    :cond_7
    invoke-interface {v5, v7}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v7

    const-string v8, "options"

    .line 639
    invoke-interface {v5, v8}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    .line 640
    iget-object v8, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;->this$1:Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    iget-object v8, v8, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$appName:Ljava/lang/String;

    .line 641
    invoke-static {v8}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getFirestoreForApp(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v8

    .line 640
    invoke-static {v8, v7}, Lio/invertase/firebase/firestore/FirestoreSerialize;->parseReadableMap(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object v7

    if-eqz v5, :cond_8

    const-string v8, "merge"

    .line 645
    invoke-interface {v5, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5, v8}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 646
    invoke-virtual {v6}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->getRef()Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v5

    invoke-static {}, Lcom/google/firebase/firestore/SetOptions;->merge()Lcom/google/firebase/firestore/SetOptions;

    move-result-object v6

    invoke-virtual {p1, v5, v7, v6}, Lcom/google/firebase/firestore/Transaction;->set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/firebase/firestore/Transaction;

    goto :goto_2

    .line 648
    :cond_8
    invoke-virtual {v6}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->getRef()Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v5

    invoke-virtual {p1, v5, v7}, Lcom/google/firebase/firestore/Transaction;->set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;)Lcom/google/firebase/firestore/Transaction;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v1

    .line 612
    :cond_a
    new-instance p1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    sget-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->DEADLINE_EXCEEDED:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    const-string v1, "timeout"

    invoke-direct {p1, v1, v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    throw p1

    .line 604
    :cond_b
    new-instance p1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    sget-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->ABORTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    const-string v1, "abort"

    invoke-direct {p1, v1, v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

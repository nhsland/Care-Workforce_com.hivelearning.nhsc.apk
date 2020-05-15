.class Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;
.super Ljava/lang/Object;
.source "RNFirebaseDatabase.java"

# interfaces
.implements Lcom/google/firebase/database/Transaction$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/database/RNFirebaseDatabase$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/invertase/firebase/database/RNFirebaseDatabase$1;


# direct methods
.method constructor <init>(Lio/invertase/firebase/database/RNFirebaseDatabase$1;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;->this$1:Lio/invertase/firebase/database/RNFirebaseDatabase$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTransaction(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;
    .locals 4
    .param p1    # Lcom/google/firebase/database/MutableData;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 420
    new-instance v0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;

    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;->this$1:Lio/invertase/firebase/database/RNFirebaseDatabase$1;

    iget v1, v1, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->val$transactionId:I

    iget-object v2, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;->this$1:Lio/invertase/firebase/database/RNFirebaseDatabase$1;

    iget-object v2, v2, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->val$appName:Ljava/lang/String;

    iget-object v3, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;->this$1:Lio/invertase/firebase/database/RNFirebaseDatabase$1;

    iget-object v3, v3, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->val$dbURL:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lio/invertase/firebase/database/RNFirebaseDatabase;->access$100()Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;->this$1:Lio/invertase/firebase/database/RNFirebaseDatabase$1;

    iget v2, v2, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->val$transactionId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 426
    invoke-virtual {v0, p1}, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->createUpdateMap(Lcom/google/firebase/database/MutableData;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 430
    new-instance v2, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1$1;

    invoke-direct {v2, p0, v1}, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1$1;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;Lcom/facebook/react/bridge/WritableMap;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 443
    :try_start_0
    invoke-virtual {v0}, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    iget-boolean v1, v0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->abort:Z

    if-eqz v1, :cond_0

    .line 450
    invoke-static {}, Lcom/google/firebase/database/Transaction;->abort()Lcom/google/firebase/database/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 453
    :cond_0
    iget-boolean v1, v0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->timeout:Z

    if-eqz v1, :cond_1

    .line 454
    invoke-static {}, Lcom/google/firebase/database/Transaction;->abort()Lcom/google/firebase/database/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 457
    :cond_1
    iget-object v0, v0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/MutableData;->setValue(Ljava/lang/Object;)V

    .line 458
    invoke-static {p1}, Lcom/google/firebase/database/Transaction;->success(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x1

    .line 445
    iput-boolean p1, v0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->interrupted:Z

    .line 446
    invoke-static {}, Lcom/google/firebase/database/Transaction;->abort()Lcom/google/firebase/database/Transaction$Result;

    move-result-object p1

    return-object p1
.end method

.method public onComplete(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)V
    .locals 2

    .line 463
    invoke-static {}, Lio/invertase/firebase/database/RNFirebaseDatabase;->access$100()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;->this$1:Lio/invertase/firebase/database/RNFirebaseDatabase$1;

    iget v1, v1, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->val$transactionId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;

    .line 464
    invoke-virtual {v0, p1, p2, p3}, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->createResultMap(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 465
    iget-object p2, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;->this$1:Lio/invertase/firebase/database/RNFirebaseDatabase$1;

    iget-object p2, p2, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabase;

    invoke-static {p2}, Lio/invertase/firebase/database/RNFirebaseDatabase;->access$300(Lio/invertase/firebase/database/RNFirebaseDatabase;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p2

    const-string p3, "database_transaction_event"

    invoke-static {p2, p3, p1}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    invoke-static {}, Lio/invertase/firebase/database/RNFirebaseDatabase;->access$100()Landroid/util/SparseArray;

    move-result-object p1

    iget-object p2, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;->this$1:Lio/invertase/firebase/database/RNFirebaseDatabase$1;

    iget p2, p2, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->val$transactionId:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

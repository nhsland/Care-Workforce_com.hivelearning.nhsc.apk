.class Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;
.super Ljava/lang/Object;
.source "RNFirebaseFirestoreTransactionHandler.java"


# instance fields
.field aborted:Z

.field private appName:Ljava/lang/String;

.field private commandBuffer:Lcom/facebook/react/bridge/ReadableArray;

.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private firestoreTransaction:Lcom/google/firebase/firestore/Transaction;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field timeout:Z

.field private timeoutAt:J

.field private transactionId:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->aborted:Z

    .line 23
    iput-boolean v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->timeout:Z

    .line 31
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->appName:Ljava/lang/String;

    .line 32
    iput p2, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->transactionId:I

    .line 33
    invoke-direct {p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->updateInternalTimeout()V

    .line 34
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->condition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private safeUnlock()V
    .locals 1

    .line 158
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void
.end method

.method private updateInternalTimeout()V
    .locals 4

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->timeoutAt:J

    return-void
.end method


# virtual methods
.method abort()V
    .locals 1

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->aborted:Z

    .line 49
    invoke-direct {p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->safeUnlock()V

    return-void
.end method

.method await()V
    .locals 5

    .line 84
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 86
    invoke-direct {p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->updateInternalTimeout()V

    .line 89
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->aborted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->timeout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->timeoutAt:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->timeout:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 95
    invoke-direct {p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->safeUnlock()V

    .line 96
    throw v0

    .line 95
    :catch_0
    :cond_1
    invoke-direct {p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->safeUnlock()V

    return-void
.end method

.method createEventMap(Lcom/google/firebase/firestore/FirebaseFirestoreException;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3
    .param p1    # Lcom/google/firebase/firestore/FirebaseFirestoreException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 136
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 138
    iget v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->transactionId:I

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 139
    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->appName:Ljava/lang/String;

    const-string v2, "appName"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    if-eqz p1, :cond_0

    const-string p2, "error"

    .line 142
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getJSError(Lcom/google/firebase/firestore/FirebaseFirestoreException;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method getCommandBuffer()Lcom/facebook/react/bridge/ReadableArray;
    .locals 1

    .line 105
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->commandBuffer:Lcom/facebook/react/bridge/ReadableArray;

    return-object v0
.end method

.method getDocument(Lcom/google/firebase/firestore/DocumentReference;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->updateInternalTimeout()V

    .line 119
    :try_start_0
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->firestoreTransaction:Lcom/google/firebase/firestore/Transaction;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/Transaction;->get(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/DocumentSnapshot;

    move-result-object p1

    .line 120
    invoke-static {p1}, Lio/invertase/firebase/firestore/FirestoreSerialize;->snapshotToWritableMap(Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 121
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/firebase/firestore/FirebaseFirestoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    invoke-static {p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getJSError(Lcom/google/firebase/firestore/FirebaseFirestoreException;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v0, "code"

    .line 124
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method resetState(Lcom/google/firebase/firestore/Transaction;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->commandBuffer:Lcom/facebook/react/bridge/ReadableArray;

    .line 59
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->firestoreTransaction:Lcom/google/firebase/firestore/Transaction;

    return-void
.end method

.method signalBufferReceived(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 71
    :try_start_0
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->commandBuffer:Lcom/facebook/react/bridge/ReadableArray;

    .line 72
    iget-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-direct {p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->safeUnlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->safeUnlock()V

    .line 75
    throw p1
.end method

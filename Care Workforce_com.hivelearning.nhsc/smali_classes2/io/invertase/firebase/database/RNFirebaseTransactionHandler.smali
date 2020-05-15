.class public Lio/invertase/firebase/database/RNFirebaseTransactionHandler;
.super Ljava/lang/Object;
.source "RNFirebaseTransactionHandler.java"


# instance fields
.field abort:Z

.field private appName:Ljava/lang/String;

.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private dbURL:Ljava/lang/String;

.field interrupted:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private signalled:Z

.field timeout:Z

.field private transactionId:I

.field public value:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->abort:Z

    .line 27
    iput-boolean v0, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->timeout:Z

    .line 35
    iput-object p2, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->appName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->dbURL:Ljava/lang/String;

    .line 37
    iput p1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->transactionId:I

    .line 38
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->condition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method await()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->signalled:Z

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    .line 79
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->timeout:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0xfa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->signalled:Z

    if-nez v2, :cond_1

    .line 80
    iget-boolean v2, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->signalled:Z

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const/4 v2, 0x1

    .line 81
    iput-boolean v2, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->timeout:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 86
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method createResultMap(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3
    .param p1    # Lcom/google/firebase/database/DatabaseError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 135
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 137
    iget v1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->transactionId:I

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 138
    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->appName:Ljava/lang/String;

    const-string v2, "appName"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->dbURL:Ljava/lang/String;

    const-string v2, "dbURL"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-boolean v1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->timeout:Z

    const-string v2, "timeout"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "committed"

    .line 142
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    iget-boolean p2, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->interrupted:Z

    const-string v1, "interrupted"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "type"

    if-nez p1, :cond_1

    .line 145
    iget-boolean v1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->timeout:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->interrupted:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "complete"

    .line 158
    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {p3}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->snapshotToMap(Lcom/google/firebase/database/DataSnapshot;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "snapshot"

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p3, "error"

    .line 146
    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 147
    invoke-static {p1}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getJSError(Lcom/google/firebase/database/DatabaseError;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_2
    if-nez p1, :cond_3

    .line 148
    iget-boolean p1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->timeout:Z

    if-eqz p1, :cond_3

    .line 149
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "code"

    const-string v1, "DATABASE/INTERNAL-TIMEOUT"

    .line 150
    invoke-interface {p1, p2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "message"

    const-string v1, "A timeout occurred whilst waiting for RN JS thread to send transaction updates."

    .line 151
    invoke-interface {p1, p2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {v0, p3, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method createUpdateMap(Lcom/google/firebase/database/MutableData;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 105
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 107
    iget v1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->transactionId:I

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v1, "type"

    const-string v2, "update"

    .line 108
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->appName:Ljava/lang/String;

    const-string v2, "appName"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->dbURL:Ljava/lang/String;

    const-string v2, "dbURL"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/google/firebase/database/MutableData;->hasChildren()Z

    move-result v1

    const-string v2, "value"

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/google/firebase/database/MutableData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lio/invertase/firebase/Utils;->mapPutValue(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {p1}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->castValue(Lcom/google/firebase/database/MutableData;)Ljava/lang/Object;

    move-result-object p1

    .line 119
    instance-of v1, p1, Lcom/facebook/react/bridge/WritableNativeArray;

    if-eqz v1, :cond_1

    .line 120
    check-cast p1, Lcom/facebook/react/bridge/WritableArray;

    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    goto :goto_0

    .line 122
    :cond_1
    check-cast p1, Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :goto_0
    return-object v0
.end method

.method getUpdates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->data:Ljava/util/Map;

    return-object v0
.end method

.method signalUpdateReceived(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 48
    invoke-static {p1}, Lio/invertase/firebase/Utils;->recursivelyDeconstructReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v0, "value"

    .line 51
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->value:Ljava/lang/Object;

    const-string v0, "abort"

    .line 52
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->abort:Z

    .line 55
    :try_start_0
    iget-boolean v0, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->signalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->signalled:Z

    .line 60
    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->data:Ljava/util/Map;

    .line 61
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object p1, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 56
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This transactionUpdateHandler has already been signalled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 63
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseTransactionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 64
    throw p1
.end method

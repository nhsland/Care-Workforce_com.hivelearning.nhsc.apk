.class public Lio/invertase/firebase/firestore/RNFirebaseFirestore;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNFirebaseFirestore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RNFirebaseFirestore"


# instance fields
.field private transactionHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 40
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->transactionHandlers:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lio/invertase/firebase/firestore/RNFirebaseFirestore;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lio/invertase/firebase/firestore/RNFirebaseFirestore;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lio/invertase/firebase/firestore/RNFirebaseFirestore;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lio/invertase/firebase/firestore/RNFirebaseFirestore;Ljava/lang/String;Ljava/lang/String;)Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getDocumentForAppPath(Ljava/lang/String;Ljava/lang/String;)Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    move-result-object p0

    return-object p0
.end method

.method private getCollectionForAppPath(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;
    .locals 8

    .line 722
    new-instance v7, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;

    .line 723
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;-><init>(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v7
.end method

.method private getDocumentForAppPath(Ljava/lang/String;Ljava/lang/String;)Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;
    .locals 2

    .line 740
    new-instance v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    .line 741
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;-><init>(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static getFirestoreForApp(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 0

    .line 73
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    .line 74
    invoke-static {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p0

    return-object p0
.end method

.method static getJSError(Lcom/google/firebase/firestore/FirebaseFirestoreException;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 85
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;->getCode()Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->value()I

    move-result v1

    const-string v2, "nativeErrorCode"

    .line 86
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeErrorMessage"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v1, Lio/invertase/firebase/firestore/RNFirebaseFirestore$5;->$SwitchMap$com$google$firebase$firestore$FirebaseFirestoreException$Code:[I

    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;->getCode()Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const-string v1, "unknown"

    const-string v2, "Firestore"

    packed-switch p0, :pswitch_data_0

    .line 225
    invoke-static {v2, v1}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "An unknown error occurred."

    .line 226
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "unauthenticated"

    .line 217
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The request does not have valid authentication credentials for the operation."

    .line 218
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_1
    const-string p0, "data-loss"

    .line 209
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unrecoverable data loss or corruption."

    .line 210
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_2
    const-string p0, "unavailable"

    .line 201
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The service is currently unavailable."

    .line 202
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_3
    const-string p0, "internal"

    .line 197
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Internal errors."

    .line 198
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_4
    const-string p0, "unimplemented"

    .line 189
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Operation is not implemented or not supported/enabled."

    .line 190
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_5
    const-string p0, "out-of-range"

    .line 181
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Operation was attempted past the valid range."

    .line 182
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_6
    const-string p0, "aborted"

    .line 173
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The operation was aborted, typically due to a concurrency issue like transaction aborts, etc."

    .line 174
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_7
    const-string p0, "failed-precondition"

    .line 165
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Operation was rejected because the system is not in a state required for the operation`s execution."

    .line 166
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_8
    const-string p0, "resource-exhausted"

    .line 157
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space."

    .line 158
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_9
    const-string p0, "permission-denied"

    .line 149
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The caller does not have permission to execute the specified operation."

    .line 150
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_a
    const-string p0, "already-exists"

    .line 141
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Some document that we attempted to create already exists."

    .line 142
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_b
    const-string p0, "not-found"

    .line 133
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Some requested document was not found."

    .line 134
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_c
    const-string p0, "deadline-exceeded"

    .line 125
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Deadline expired before operation could complete."

    .line 126
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_d
    const-string p0, "invalid-argument"

    .line 117
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Client specified an invalid argument."

    .line 118
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 109
    :pswitch_e
    invoke-static {v2, v1}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown error or an error from a different error domain."

    .line 110
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_f
    const-string p0, "cancelled"

    .line 105
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "The operation was cancelled."

    .line 106
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_10
    const-string p0, "ok"

    .line 101
    invoke-static {v2, p0}, Lio/invertase/firebase/ErrorUtils;->getCodeWithService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Ok."

    .line 102
    invoke-static {v1, v2, p0}, Lio/invertase/firebase/ErrorUtils;->getMessageWithService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "code"

    .line 229
    invoke-interface {v0, v2, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "message"

    .line 230
    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static promiseRejectException(Lcom/facebook/react/bridge/Promise;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 3

    .line 58
    invoke-static {p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getJSError(Lcom/google/firebase/firestore/FirebaseFirestoreException;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "code"

    .line 60
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    .line 61
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-interface {p0, v1, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public collectionGet(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 291
    invoke-direct/range {p0 .. p5}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getCollectionForAppPath(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;

    move-result-object p1

    .line 298
    invoke-virtual {p1, p6, p7}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->get(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public collectionOffSnapshot(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 306
    invoke-static {p6}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->offSnapshot(Ljava/lang/String;)V

    return-void
.end method

.method public collectionOnSnapshot(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 315
    invoke-direct/range {p0 .. p5}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getCollectionForAppPath(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;

    move-result-object p1

    .line 322
    invoke-virtual {p1, p6, p7}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreCollectionReference;->onSnapshot(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public disableNetwork(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 236
    invoke-static {p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getFirestoreForApp(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->disableNetwork()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$1;

    invoke-direct {v0, p0, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestore$1;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestore;Lcom/facebook/react/bridge/Promise;)V

    .line 238
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public documentBatch(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 10
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 330
    invoke-static {p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getFirestoreForApp(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    .line 331
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->batch()Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v0

    .line 332
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/FirestoreSerialize;->parseDocumentBatches(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object p2

    .line 334
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 335
    check-cast v1, Ljava/util/Map;

    const-string v2, "type"

    .line 336
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "path"

    .line 337
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "data"

    .line 338
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 340
    invoke-virtual {p1, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v3

    const/4 v5, -0x1

    .line 341
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x6a6cd337

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v6, v7, :cond_2

    const v7, 0x14042

    if-eq v6, v7, :cond_1

    const v7, 0x77f979ab

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "DELETE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const-string v6, "SET"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const-string v6, "UPDATE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v5, 0x2

    :cond_3
    :goto_1
    if-eqz v5, :cond_7

    if-eq v5, v9, :cond_5

    if-eq v5, v8, :cond_4

    goto :goto_0

    .line 355
    :cond_4
    invoke-virtual {v0, v3, v4}, Lcom/google/firebase/firestore/WriteBatch;->update(Lcom/google/firebase/firestore/DocumentReference;Ljava/util/Map;)Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v2, "options"

    .line 346
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_6

    const-string v2, "merge"

    .line 347
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 348
    invoke-static {}, Lcom/google/firebase/firestore/SetOptions;->merge()Lcom/google/firebase/firestore/SetOptions;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/firebase/firestore/WriteBatch;->set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v0

    goto/16 :goto_0

    .line 350
    :cond_6
    invoke-virtual {v0, v3, v4}, Lcom/google/firebase/firestore/WriteBatch;->set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;)Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v0

    goto/16 :goto_0

    .line 343
    :cond_7
    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/WriteBatch;->delete(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v0

    goto/16 :goto_0

    .line 361
    :cond_8
    invoke-virtual {v0}, Lcom/google/firebase/firestore/WriteBatch;->commit()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/RNFirebaseFirestore$3;

    invoke-direct {p2, p0, p3}, Lio/invertase/firebase/firestore/RNFirebaseFirestore$3;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestore;Lcom/facebook/react/bridge/Promise;)V

    .line 362
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public documentDelete(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 381
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getDocumentForAppPath(Ljava/lang/String;Ljava/lang/String;)Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    move-result-object p1

    .line 382
    invoke-virtual {p1, p3}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->delete(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public documentGet(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 392
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getDocumentForAppPath(Ljava/lang/String;Ljava/lang/String;)Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    move-result-object p1

    .line 393
    invoke-virtual {p1, p3, p4}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->get(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public documentOffSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 398
    invoke-static {p3}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->offSnapshot(Ljava/lang/String;)V

    return-void
.end method

.method public documentOnSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 406
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getDocumentForAppPath(Ljava/lang/String;Ljava/lang/String;)Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    move-result-object p1

    .line 407
    invoke-virtual {p1, p3, p4}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->onSnapshot(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public documentSet(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 418
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getDocumentForAppPath(Ljava/lang/String;Ljava/lang/String;)Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    move-result-object p1

    .line 419
    invoke-virtual {p1, p3, p4, p5}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->set(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public documentUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 429
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getDocumentForAppPath(Ljava/lang/String;Ljava/lang/String;)Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    move-result-object p1

    .line 430
    invoke-virtual {p1, p3, p4}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->update(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public enableNetwork(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 266
    invoke-static {p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getFirestoreForApp(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    .line 267
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->enableNetwork()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$2;

    invoke-direct {v0, p0, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestore$2;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestore;Lcom/facebook/react/bridge/Promise;)V

    .line 268
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 764
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 768
    invoke-static {}, Lcom/google/firebase/firestore/FieldValue;->delete()Lcom/google/firebase/firestore/FieldValue;

    move-result-object v1

    .line 769
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteFieldValue"

    .line 765
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    invoke-static {}, Lcom/google/firebase/firestore/FieldValue;->serverTimestamp()Lcom/google/firebase/firestore/FieldValue;

    move-result-object v1

    .line 775
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serverTimestampFieldValue"

    .line 771
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNFirebaseFirestore"

    return-object v0
.end method

.method public onCatalystInstanceDestroy()V
    .locals 3

    .line 481
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->transactionHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 482
    iget-object v2, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->transactionHandlers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    if-eqz v2, :cond_0

    .line 484
    invoke-virtual {v2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->abort()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    :cond_1
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->transactionHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public setLogLevel(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "debug"

    .line 257
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 260
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->setLoggingEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 258
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->setLoggingEnabled(Z)V

    :goto_1
    return-void
.end method

.method public settings(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 435
    invoke-static {p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getFirestoreForApp(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    .line 436
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    invoke-direct {v0}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;-><init>()V

    const-string v1, "host"

    .line 438
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setHost(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    goto :goto_0

    .line 441
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getFirestoreSettings()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setHost(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    :goto_0
    const-string v1, "persistence"

    .line 444
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setPersistenceEnabled(Z)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    goto :goto_1

    .line 447
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getFirestoreSettings()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->isPersistenceEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setPersistenceEnabled(Z)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    :goto_1
    const-string v1, "cacheSizeBytes"

    .line 450
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 451
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-wide/16 v1, -0x1

    .line 454
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setCacheSizeBytes(J)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    goto :goto_2

    :cond_2
    int-to-long v1, v1

    .line 456
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setCacheSizeBytes(J)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    goto :goto_2

    .line 459
    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getFirestoreSettings()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->getCacheSizeBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setCacheSizeBytes(J)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    :goto_2
    const-string v1, "ssl"

    .line 462
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 463
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setSslEnabled(Z)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    goto :goto_3

    .line 465
    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getFirestoreSettings()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->isSslEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setSslEnabled(Z)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    :goto_3
    const-string v1, "timestampsInSnapshots"

    .line 468
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 469
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setTimestampsInSnapshotsEnabled(Z)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    .line 472
    :cond_5
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->build()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/FirebaseFirestore;->setFirestoreSettings(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)V

    const/4 p1, 0x0

    .line 473
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public transactionApplyBuffer(Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 554
    iget-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->transactionHandlers:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    if-eqz p1, :cond_0

    .line 557
    invoke-virtual {p1, p3}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->signalBufferReceived(Lcom/facebook/react/bridge/ReadableArray;)V

    :cond_0
    return-void
.end method

.method public transactionBegin(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 569
    new-instance v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    invoke-direct {v0, p1, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;-><init>(Ljava/lang/String;I)V

    .line 574
    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->transactionHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 576
    new-instance p2, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;

    invoke-direct {p2, p0, p1, v0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestore;Ljava/lang/String;Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public transactionDispose(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 533
    iget-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->transactionHandlers:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    if-eqz p1, :cond_0

    .line 536
    invoke-virtual {p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->abort()V

    .line 537
    iget-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->transactionHandlers:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method

.method public transactionGetDocument(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 507
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->transactionHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    if-nez p2, :cond_0

    const-string p1, "internal-error"

    const-string p2, "An internal error occurred whilst attempting to find a native transaction by id."

    .line 510
    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_0
    invoke-direct {p0, p1, p3}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getDocumentForAppPath(Ljava/lang/String;Ljava/lang/String;)Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;

    move-result-object p1

    invoke-virtual {p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->getRef()Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    .line 516
    invoke-virtual {p2, p1, p4}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;->getDocument(Lcom/google/firebase/firestore/DocumentReference;Lcom/facebook/react/bridge/Promise;)V

    :goto_0
    return-void
.end method

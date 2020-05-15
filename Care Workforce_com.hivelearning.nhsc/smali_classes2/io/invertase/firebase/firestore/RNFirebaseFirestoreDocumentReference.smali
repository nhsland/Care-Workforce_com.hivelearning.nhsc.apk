.class public Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;
.super Ljava/lang/Object;
.source "RNFirebaseFirestoreDocumentReference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RNFBFSDocumentReference"

.field private static documentSnapshotListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/ListenerRegistration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appName:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private reactContext:Lcom/facebook/react/bridge/ReactContext;

.field private final ref:Lcom/google/firebase/firestore/DocumentReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->documentSnapshotListeners:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p3, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->path:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->appName:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 43
    invoke-static {p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getFirestoreForApp(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p3}, Lcom/google/firebase/firestore/FirebaseFirestore;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->ref:Lcom/google/firebase/firestore/DocumentReference;

    return-void
.end method

.method static synthetic access$000(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->handleDocumentSnapshotEvent(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 29
    sget-object v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->documentSnapshotListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->handleDocumentSnapshotError(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method static synthetic access$300(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->path:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->appName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;)Lcom/facebook/react/bridge/ReactContext;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    return-object p0
.end method

.method private handleDocumentSnapshotError(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 3

    .line 264
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->path:Ljava/lang/String;

    const-string v2, "path"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->appName:Ljava/lang/String;

    const-string v2, "appName"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "listenerId"

    .line 268
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getJSError(Lcom/google/firebase/firestore/FirebaseFirestoreException;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "error"

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 271
    iget-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string p2, "firestore_document_sync_event"

    invoke-static {p1, p2, v0}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private handleDocumentSnapshotEvent(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;)V
    .locals 2

    .line 237
    new-instance v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$7;

    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {v0, p0, v1, p0, p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$7;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Lcom/facebook/react/bridge/ReactContext;Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    .line 251
    invoke-virtual {v0, p1}, Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static offSnapshot(Ljava/lang/String;)V
    .locals 1

    .line 48
    sget-object v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->documentSnapshotListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/ListenerRegistration;

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p0}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    :cond_0
    return-void
.end method


# virtual methods
.method delete(Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->ref:Lcom/google/firebase/firestore/DocumentReference;

    .line 56
    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentReference;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$1;

    invoke-direct {v1, p0, p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$1;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Lcom/facebook/react/bridge/Promise;)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method get(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, "source"

    .line 77
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "server"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object p1, Lcom/google/firebase/firestore/Source;->SERVER:Lcom/google/firebase/firestore/Source;

    goto :goto_0

    :cond_0
    const-string v0, "cache"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    sget-object p1, Lcom/google/firebase/firestore/Source;->CACHE:Lcom/google/firebase/firestore/Source;

    goto :goto_0

    .line 84
    :cond_1
    sget-object p1, Lcom/google/firebase/firestore/Source;->DEFAULT:Lcom/google/firebase/firestore/Source;

    goto :goto_0

    .line 87
    :cond_2
    sget-object p1, Lcom/google/firebase/firestore/Source;->DEFAULT:Lcom/google/firebase/firestore/Source;

    .line 90
    :goto_0
    new-instance v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$2;

    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {v0, p0, v1, p0, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$2;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Lcom/facebook/react/bridge/ReactContext;Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Lcom/facebook/react/bridge/Promise;)V

    .line 99
    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->ref:Lcom/google/firebase/firestore/DocumentReference;

    .line 100
    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/DocumentReference;->get(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$3;

    invoke-direct {v1, p0, v0, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$3;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;Lcom/facebook/react/bridge/Promise;)V

    .line 101
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method getRef()Lcom/google/firebase/firestore/DocumentReference;
    .locals 1

    .line 220
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->ref:Lcom/google/firebase/firestore/DocumentReference;

    return-object v0
.end method

.method hasListeners()Z
    .locals 1

    .line 224
    sget-object v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->documentSnapshotListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method onSnapshot(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3

    .line 119
    sget-object v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->documentSnapshotListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$4;

    invoke-direct {v0, p0, p1}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$4;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "includeMetadataChanges"

    .line 143
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 145
    sget-object p2, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    goto :goto_0

    .line 147
    :cond_0
    sget-object p2, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    .line 150
    :goto_0
    iget-object v1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->ref:Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {v1, p2, v0}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object p2

    .line 155
    sget-object v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->documentSnapshotListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public set(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->appName:Ljava/lang/String;

    .line 163
    invoke-static {v0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getFirestoreForApp(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 162
    invoke-static {v0, p1}, Lio/invertase/firebase/firestore/FirestoreSerialize;->parseReadableMap(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string v0, "merge"

    .line 167
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 168
    iget-object p2, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->ref:Lcom/google/firebase/firestore/DocumentReference;

    invoke-static {}, Lcom/google/firebase/firestore/SetOptions;->merge()Lcom/google/firebase/firestore/SetOptions;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    .line 170
    :cond_0
    iget-object p2, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->ref:Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {p2, p1}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 173
    :goto_0
    new-instance p2, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$5;

    invoke-direct {p2, p0, p3}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$5;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method update(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->appName:Ljava/lang/String;

    .line 192
    invoke-static {v0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getFirestoreForApp(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 191
    invoke-static {v0, p1}, Lio/invertase/firebase/firestore/FirestoreSerialize;->parseReadableMap(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;->ref:Lcom/google/firebase/firestore/DocumentReference;

    .line 197
    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$6;

    invoke-direct {v0, p0, p2}, Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference$6;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;Lcom/facebook/react/bridge/Promise;)V

    .line 198
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

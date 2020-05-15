.class Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;
.super Landroid/os/AsyncTask;
.source "DocumentSnapshotSerializeAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/facebook/react/bridge/WritableMap;",
        ">;"
    }
.end annotation


# instance fields
.field private reactContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactContext;",
            ">;"
        }
    .end annotation
.end field

.field private referenceWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactContext;Lio/invertase/firebase/firestore/RNFirebaseFirestoreDocumentReference;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;->referenceWeakReference:Ljava/lang/ref/WeakReference;

    .line 20
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;->reactContextWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private isAvailable()Ljava/lang/Boolean;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;->reactContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;->referenceWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    const/4 v0, 0x0

    .line 25
    aget-object p1, p1, v0

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 28
    :try_start_0
    invoke-static {p1}, Lio/invertase/firebase/firestore/FirestoreSerialize;->snapshotToWritableMap(Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 30
    invoke-direct {p0}, Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;->isAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;->reactContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 32
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 33
    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactContext;->handleException(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;->doInBackground([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/firestore/DocumentSnapshotSerializeAsyncTask;->onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

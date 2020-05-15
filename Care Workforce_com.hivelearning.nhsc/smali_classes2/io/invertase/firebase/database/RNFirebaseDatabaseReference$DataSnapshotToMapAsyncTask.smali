.class Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;
.super Landroid/os/AsyncTask;
.source "RNFirebaseDatabaseReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/invertase/firebase/database/RNFirebaseDatabaseReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataSnapshotToMapAsyncTask"
.end annotation

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
.field private referenceWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/invertase/firebase/database/RNFirebaseDatabaseReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;)V
    .locals 1

    .line 586
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 587
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;->referenceWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;
    .locals 2

    const/4 v0, 0x0

    .line 592
    aget-object v0, p1, v0

    check-cast v0, Lcom/google/firebase/database/DataSnapshot;

    const/4 v1, 0x1

    .line 593
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/String;

    .line 596
    :try_start_0
    invoke-static {v0, p1}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->snapshotToMap(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 598
    invoke-virtual {p0}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;->isAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-static {}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReactApplicationContextInstance()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 600
    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->handleException(Ljava/lang/Exception;)V

    .line 602
    :cond_0
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 583
    invoke-virtual {p0, p1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;->doInBackground([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method

.method isAvailable()Ljava/lang/Boolean;
    .locals 1

    .line 612
    invoke-static {}, Lio/invertase/firebase/database/RNFirebaseDatabase;->getReactApplicationContextInstance()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;->referenceWeakReference:Ljava/lang/ref/WeakReference;

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

.method protected onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 583
    check-cast p1, Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;->onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

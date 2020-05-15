.class Lio/invertase/firebase/database/RNFirebaseDatabaseReference$1;
.super Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;
.source "RNFirebaseDatabaseReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->addOnceValueEventListener(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$1;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    iput-object p3, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    .line 168
    invoke-virtual {p0}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$1;->isAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p1, Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$1;->onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

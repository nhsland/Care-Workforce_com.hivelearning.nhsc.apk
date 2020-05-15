.class Lio/invertase/firebase/database/RNFirebaseDatabaseReference$2;
.super Ljava/lang/Object;
.source "RNFirebaseDatabaseReference.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


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

.field final synthetic val$asyncTask:Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$2;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    iput-object p2, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$2;->val$asyncTask:Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;

    iput-object p3, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1
    .param p1    # Lcom/google/firebase/database/DatabaseError;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 180
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, p1}, Lio/invertase/firebase/database/RNFirebaseDatabase;->handlePromise(Lcom/facebook/react/bridge/Promise;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 3
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 175
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$2;->val$asyncTask:Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$DataSnapshotToMapAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

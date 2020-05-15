.class Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;
.super Ljava/lang/Object;
.source "RNFirebaseDatabaseReference.java"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->addChildOnceEventListener(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    iput-object p2, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->val$eventName:Ljava/lang/String;

    iput-object p3, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->val$promise:Lcom/facebook/react/bridge/Promise;

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

    .line 234
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    invoke-static {v0}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->access$000(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/Query;->removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V

    .line 235
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, p1}, Lio/invertase/firebase/database/RNFirebaseDatabase;->handlePromise(Lcom/facebook/react/bridge/Promise;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 198
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->val$eventName:Ljava/lang/String;

    const-string v1, "child_added"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    invoke-static {v0}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->access$000(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/Query;->removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V

    .line 200
    invoke-static {p1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->snapshotToMap(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 201
    iget-object p2, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 207
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->val$eventName:Ljava/lang/String;

    const-string v1, "child_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    invoke-static {v0}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->access$000(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/Query;->removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V

    .line 209
    invoke-static {p1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->snapshotToMap(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 210
    iget-object p2, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 225
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->val$eventName:Ljava/lang/String;

    const-string v1, "child_moved"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    invoke-static {v0}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->access$000(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/Query;->removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V

    .line 227
    invoke-static {p1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->snapshotToMap(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 228
    iget-object p2, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 2
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 216
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->val$eventName:Ljava/lang/String;

    const-string v1, "child_removed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    invoke-static {v0}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->access$000(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/Query;->removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V

    const/4 v0, 0x0

    .line 218
    invoke-static {p1, v0}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->snapshotToMap(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

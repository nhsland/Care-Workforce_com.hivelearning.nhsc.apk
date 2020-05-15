.class Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;
.super Ljava/lang/Object;
.source "RNFirebaseDatabaseReference.java"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->addChildEventListener(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

.field final synthetic val$eventRegistrationKey:Ljava/lang/String;

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$registration:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method constructor <init>(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    iput-object p2, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->val$eventType:Ljava/lang/String;

    iput-object p3, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->val$registration:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p4, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->val$eventRegistrationKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 2
    .param p1    # Lcom/google/firebase/database/DatabaseError;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 311
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->val$eventRegistrationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->removeEventListener(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->val$registration:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v0, v1, p1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->access$200(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 283
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->val$eventType:Ljava/lang/String;

    const-string v1, "child_added"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    iget-object v2, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->val$registration:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v0, v1, v2, p1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->access$100(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 290
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->val$eventType:Ljava/lang/String;

    const-string v1, "child_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    iget-object v2, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->val$registration:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v0, v1, v2, p1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->access$100(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 304
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->val$eventType:Ljava/lang/String;

    const-string v1, "child_moved"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    iget-object v2, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->val$registration:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v0, v1, v2, p1, p2}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->access$100(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 4
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 297
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->val$eventType:Ljava/lang/String;

    const-string v1, "child_removed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    iget-object v2, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$4;->val$registration:Lcom/facebook/react/bridge/ReadableMap;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->access$100(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

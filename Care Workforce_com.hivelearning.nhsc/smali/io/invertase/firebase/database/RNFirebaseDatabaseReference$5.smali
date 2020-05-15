.class Lio/invertase/firebase/database/RNFirebaseDatabaseReference$5;
.super Ljava/lang/Object;
.source "RNFirebaseDatabaseReference.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->addValueEventListener(Lcom/facebook/react/bridge/ReadableMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

.field final synthetic val$eventRegistrationKey:Ljava/lang/String;

.field final synthetic val$registration:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method constructor <init>(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$5;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    iput-object p2, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$5;->val$registration:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p3, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$5;->val$eventRegistrationKey:Ljava/lang/String;

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

    .line 337
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$5;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$5;->val$eventRegistrationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->removeEventListener(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$5;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$5;->val$registration:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v0, v1, p1}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->access$200(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 4
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 332
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$5;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabaseReference;

    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseDatabaseReference$5;->val$registration:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "value"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, p1, v3}, Lio/invertase/firebase/database/RNFirebaseDatabaseReference;->access$100(Lio/invertase/firebase/database/RNFirebaseDatabaseReference;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-void
.end method

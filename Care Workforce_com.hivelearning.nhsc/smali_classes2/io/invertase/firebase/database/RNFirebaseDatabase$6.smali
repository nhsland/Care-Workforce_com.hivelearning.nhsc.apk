.class Lio/invertase/firebase/database/RNFirebaseDatabase$6;
.super Ljava/lang/Object;
.source "RNFirebaseDatabase.java"

# interfaces
.implements Lcom/google/firebase/database/DatabaseReference$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/database/RNFirebaseDatabase;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/database/RNFirebaseDatabase;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/database/RNFirebaseDatabase;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$6;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabase;

    iput-object p2, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$6;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V
    .locals 0

    .line 616
    iget-object p2, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$6;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {p2, p1}, Lio/invertase/firebase/database/RNFirebaseDatabase;->handlePromise(Lcom/facebook/react/bridge/Promise;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

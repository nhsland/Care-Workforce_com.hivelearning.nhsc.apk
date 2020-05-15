.class Lio/invertase/firebase/database/RNFirebaseDatabase$1$1$1;
.super Ljava/lang/Object;
.source "RNFirebaseDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;->doTransaction(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;

.field final synthetic val$updatesMap:Lcom/facebook/react/bridge/WritableMap;


# direct methods
.method constructor <init>(Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1$1;->this$2:Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;

    iput-object p2, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1$1;->val$updatesMap:Lcom/facebook/react/bridge/WritableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 433
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1$1;->this$2:Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;

    iget-object v0, v0, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;->this$1:Lio/invertase/firebase/database/RNFirebaseDatabase$1;

    iget-object v0, v0, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabase;

    .line 434
    invoke-static {v0}, Lio/invertase/firebase/database/RNFirebaseDatabase;->access$200(Lio/invertase/firebase/database/RNFirebaseDatabase;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1$1;->val$updatesMap:Lcom/facebook/react/bridge/WritableMap;

    const-string v2, "database_transaction_event"

    .line 433
    invoke-static {v0, v2, v1}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

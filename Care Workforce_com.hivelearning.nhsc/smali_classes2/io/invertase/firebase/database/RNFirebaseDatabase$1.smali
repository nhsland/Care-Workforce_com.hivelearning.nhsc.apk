.class Lio/invertase/firebase/database/RNFirebaseDatabase$1;
.super Ljava/lang/Object;
.source "RNFirebaseDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/database/RNFirebaseDatabase;->transactionStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/database/RNFirebaseDatabase;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$applyLocally:Ljava/lang/Boolean;

.field final synthetic val$dbURL:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$transactionId:I


# direct methods
.method constructor <init>(Lio/invertase/firebase/database/RNFirebaseDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabase;

    iput-object p2, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->val$appName:Ljava/lang/String;

    iput-object p3, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->val$dbURL:Ljava/lang/String;

    iput-object p4, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->val$path:Ljava/lang/String;

    iput p5, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->val$transactionId:I

    iput-object p6, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->val$applyLocally:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 414
    iget-object v0, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->this$0:Lio/invertase/firebase/database/RNFirebaseDatabase;

    iget-object v1, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->val$appName:Ljava/lang/String;

    iget-object v2, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->val$dbURL:Ljava/lang/String;

    iget-object v3, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lio/invertase/firebase/database/RNFirebaseDatabase;->access$000(Lio/invertase/firebase/database/RNFirebaseDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 416
    new-instance v1, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;

    invoke-direct {v1, p0}, Lio/invertase/firebase/database/RNFirebaseDatabase$1$1;-><init>(Lio/invertase/firebase/database/RNFirebaseDatabase$1;)V

    iget-object v2, p0, Lio/invertase/firebase/database/RNFirebaseDatabase$1;->val$applyLocally:Ljava/lang/Boolean;

    .line 469
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 416
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/DatabaseReference;->runTransaction(Lcom/google/firebase/database/Transaction$Handler;Z)V

    return-void
.end method

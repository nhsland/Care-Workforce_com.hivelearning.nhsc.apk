.class Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;
.super Ljava/lang/Object;
.source "RNFirebaseFirestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/firestore/RNFirebaseFirestore;->transactionBegin(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestore;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$transactionHandler:Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;


# direct methods
.method constructor <init>(Lio/invertase/firebase/firestore/RNFirebaseFirestore;Ljava/lang/String;Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->this$0:Lio/invertase/firebase/firestore/RNFirebaseFirestore;

    iput-object p2, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$appName:Ljava/lang/String;

    iput-object p3, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$transactionHandler:Lio/invertase/firebase/firestore/RNFirebaseFirestoreTransactionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 579
    iget-object v0, p0, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;->val$appName:Ljava/lang/String;

    invoke-static {v0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore;->getFirestoreForApp(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    new-instance v1, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;

    invoke-direct {v1, p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$3;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;)V

    .line 580
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->runTransaction(Lcom/google/firebase/firestore/Transaction$Function;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$2;

    invoke-direct {v1, p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$2;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;)V

    .line 672
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$1;

    invoke-direct {v1, p0}, Lio/invertase/firebase/firestore/RNFirebaseFirestore$4$1;-><init>(Lio/invertase/firebase/firestore/RNFirebaseFirestore$4;)V

    .line 686
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

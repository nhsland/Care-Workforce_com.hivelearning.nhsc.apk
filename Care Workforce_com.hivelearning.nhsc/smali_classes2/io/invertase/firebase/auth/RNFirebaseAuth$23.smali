.class Lio/invertase/firebase/auth/RNFirebaseAuth$23;
.super Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
.source "RNFirebaseAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/auth/RNFirebaseAuth;->signInWithPhoneNumber(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private promiseResolved:Z

.field final synthetic this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

.field final synthetic val$firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/auth/RNFirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    iput-object p2, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->val$firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p3, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;-><init>()V

    const/4 p1, 0x0

    .line 876
    iput-boolean p1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->promiseResolved:Z

    return-void
.end method

.method static synthetic access$600(Lio/invertase/firebase/auth/RNFirebaseAuth$23;)Z
    .locals 0

    .line 875
    iget-boolean p0, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->promiseResolved:Z

    return p0
.end method


# virtual methods
.method public onCodeAutoRetrievalTimeOut(Ljava/lang/String;)V
    .locals 0

    .line 951
    invoke-super {p0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;->onCodeAutoRetrievalTimeOut(Ljava/lang/String;)V

    return-void
.end method

.method public onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .locals 1

    .line 941
    iget-object v0, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    invoke-static {v0, p1}, Lio/invertase/firebase/auth/RNFirebaseAuth;->access$702(Lio/invertase/firebase/auth/RNFirebaseAuth;Ljava/lang/String;)Ljava/lang/String;

    .line 942
    iget-object v0, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    invoke-static {v0, p2}, Lio/invertase/firebase/auth/RNFirebaseAuth;->access$802(Lio/invertase/firebase/auth/RNFirebaseAuth;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 943
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    const-string v0, "verificationId"

    .line 944
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object p1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 946
    iput-boolean p1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->promiseResolved:Z

    return-void
.end method

.method public onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 2

    .line 881
    iget-object v0, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->val$firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 882
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lio/invertase/firebase/auth/RNFirebaseAuth$23$1;

    invoke-direct {v1, p0, p1}, Lio/invertase/firebase/auth/RNFirebaseAuth$23$1;-><init>(Lio/invertase/firebase/auth/RNFirebaseAuth$23;Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 883
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public onVerificationFailed(Lcom/google/firebase/FirebaseException;)V
    .locals 2

    const-string v0, "RNFirebaseAuth"

    const-string v1, "signInWithPhoneNumber:verification:failed"

    .line 931
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v0, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    iget-object v1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, v1, p1}, Lio/invertase/firebase/auth/RNFirebaseAuth;->access$200(Lio/invertase/firebase/auth/RNFirebaseAuth;Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

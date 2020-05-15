.class Lio/invertase/firebase/auth/RNFirebaseAuth$1;
.super Ljava/lang/Object;
.source "RNFirebaseAuth.java"

# interfaces
.implements Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/auth/RNFirebaseAuth;->addAuthStateListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

.field final synthetic val$appName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/invertase/firebase/auth/RNFirebaseAuth;Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$1;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    iput-object p2, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$1;->val$appName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthStateChanged(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 4
    .param p1    # Lcom/google/firebase/auth/FirebaseAuth;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 137
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    .line 138
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "auth_state_changed"

    const-string v2, "appName"

    if-eqz p1, :cond_0

    .line 140
    iget-object v3, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$1;->val$appName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$1;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    invoke-static {v2, p1}, Lio/invertase/firebase/auth/RNFirebaseAuth;->access$000(Lio/invertase/firebase/auth/RNFirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v2, "user"

    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 142
    iget-object p1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$1;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    invoke-static {p1}, Lio/invertase/firebase/auth/RNFirebaseAuth;->access$100(Lio/invertase/firebase/auth/RNFirebaseAuth;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$1;->val$appName:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$1;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    invoke-static {p1}, Lio/invertase/firebase/auth/RNFirebaseAuth;->access$100(Lio/invertase/firebase/auth/RNFirebaseAuth;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.class Lio/invertase/firebase/links/RNFirebaseLinks$2;
.super Ljava/lang/Object;
.source "RNFirebaseLinks.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/links/RNFirebaseLinks;->getInitialLink(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/links/RNFirebaseLinks;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/links/RNFirebaseLinks;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lio/invertase/firebase/links/RNFirebaseLinks$2;->this$0:Lio/invertase/firebase/links/RNFirebaseLinks;

    iput-object p2, p0, Lio/invertase/firebase/links/RNFirebaseLinks$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 138
    invoke-static {}, Lio/invertase/firebase/links/RNFirebaseLinks;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInitialLink: failed to resolve link"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    iget-object v0, p0, Lio/invertase/firebase/links/RNFirebaseLinks$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link/initial-link-error"

    invoke-interface {v0, v2, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

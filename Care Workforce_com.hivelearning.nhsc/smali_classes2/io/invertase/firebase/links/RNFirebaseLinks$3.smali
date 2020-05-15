.class Lio/invertase/firebase/links/RNFirebaseLinks$3;
.super Ljava/lang/Object;
.source "RNFirebaseLinks.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/links/RNFirebaseLinks;->getInitialLink(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/links/RNFirebaseLinks;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/links/RNFirebaseLinks;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lio/invertase/firebase/links/RNFirebaseLinks$3;->this$0:Lio/invertase/firebase/links/RNFirebaseLinks;

    iput-object p2, p0, Lio/invertase/firebase/links/RNFirebaseLinks$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lio/invertase/firebase/links/RNFirebaseLinks$3;->this$0:Lio/invertase/firebase/links/RNFirebaseLinks;

    .line 124
    invoke-static {v0, p1}, Lio/invertase/firebase/links/RNFirebaseLinks;->access$100(Lio/invertase/firebase/links/RNFirebaseLinks;Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lio/invertase/firebase/links/RNFirebaseLinks$3;->this$0:Lio/invertase/firebase/links/RNFirebaseLinks;

    .line 127
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {v0, p1}, Lio/invertase/firebase/links/RNFirebaseLinks;->access$202(Lio/invertase/firebase/links/RNFirebaseLinks;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    :cond_0
    invoke-static {}, Lio/invertase/firebase/links/RNFirebaseLinks;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInitialLink: link is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/invertase/firebase/links/RNFirebaseLinks$3;->this$0:Lio/invertase/firebase/links/RNFirebaseLinks;

    invoke-static {v1}, Lio/invertase/firebase/links/RNFirebaseLinks;->access$200(Lio/invertase/firebase/links/RNFirebaseLinks;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lio/invertase/firebase/links/RNFirebaseLinks$3;->this$0:Lio/invertase/firebase/links/RNFirebaseLinks;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/invertase/firebase/links/RNFirebaseLinks;->access$302(Lio/invertase/firebase/links/RNFirebaseLinks;Z)Z

    .line 132
    iget-object p1, p0, Lio/invertase/firebase/links/RNFirebaseLinks$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v0, p0, Lio/invertase/firebase/links/RNFirebaseLinks$3;->this$0:Lio/invertase/firebase/links/RNFirebaseLinks;

    invoke-static {v0}, Lio/invertase/firebase/links/RNFirebaseLinks;->access$200(Lio/invertase/firebase/links/RNFirebaseLinks;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 120
    check-cast p1, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/links/RNFirebaseLinks$3;->onSuccess(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)V

    return-void
.end method

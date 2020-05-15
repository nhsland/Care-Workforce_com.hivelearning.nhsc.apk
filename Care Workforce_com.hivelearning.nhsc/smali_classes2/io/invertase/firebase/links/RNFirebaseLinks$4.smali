.class Lio/invertase/firebase/links/RNFirebaseLinks$4;
.super Ljava/lang/Object;
.source "RNFirebaseLinks.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/links/RNFirebaseLinks;->onNewIntent(Landroid/content/Intent;)V
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


# direct methods
.method constructor <init>(Lio/invertase/firebase/links/RNFirebaseLinks;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lio/invertase/firebase/links/RNFirebaseLinks$4;->this$0:Lio/invertase/firebase/links/RNFirebaseLinks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lio/invertase/firebase/links/RNFirebaseLinks$4;->this$0:Lio/invertase/firebase/links/RNFirebaseLinks;

    .line 166
    invoke-static {v0, p1}, Lio/invertase/firebase/links/RNFirebaseLinks;->access$100(Lio/invertase/firebase/links/RNFirebaseLinks;Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lio/invertase/firebase/links/RNFirebaseLinks$4;->this$0:Lio/invertase/firebase/links/RNFirebaseLinks;

    .line 171
    invoke-static {v0}, Lio/invertase/firebase/links/RNFirebaseLinks;->access$400(Lio/invertase/firebase/links/RNFirebaseLinks;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "links_link_received"

    .line 170
    invoke-static {v0, v1, p1}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 162
    check-cast p1, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/links/RNFirebaseLinks$4;->onSuccess(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)V

    return-void
.end method

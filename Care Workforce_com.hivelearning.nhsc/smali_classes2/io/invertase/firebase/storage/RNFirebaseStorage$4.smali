.class Lio/invertase/firebase/storage/RNFirebaseStorage$4;
.super Ljava/lang/Object;
.source "RNFirebaseStorage.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/storage/RNFirebaseStorage;->getDownloadURL(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$4;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    iput-object p2, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$4;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/net/Uri;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$4;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage$4;->onSuccess(Landroid/net/Uri;)V

    return-void
.end method

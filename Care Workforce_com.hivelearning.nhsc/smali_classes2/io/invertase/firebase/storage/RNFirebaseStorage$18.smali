.class Lio/invertase/firebase/storage/RNFirebaseStorage$18;
.super Ljava/lang/Object;
.source "RNFirebaseStorage.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/storage/RNFirebaseStorage;->getUploadTaskAsMap(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Lcom/google/android/gms/tasks/OnSuccessListener;)V
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

.field final synthetic val$listener:Lcom/google/android/gms/tasks/OnSuccessListener;

.field final synthetic val$taskSnapshot:Lcom/google/firebase/storage/UploadTask$TaskSnapshot;


# direct methods
.method constructor <init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Lcom/google/android/gms/tasks/OnSuccessListener;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$18;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    iput-object p2, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$18;->val$taskSnapshot:Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    iput-object p3, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$18;->val$listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/net/Uri;)V
    .locals 2

    .line 580
    iget-object v0, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$18;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    iget-object v1, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$18;->val$taskSnapshot:Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->access$500(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 581
    iget-object v0, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$18;->val$listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 577
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage$18;->onSuccess(Landroid/net/Uri;)V

    return-void
.end method

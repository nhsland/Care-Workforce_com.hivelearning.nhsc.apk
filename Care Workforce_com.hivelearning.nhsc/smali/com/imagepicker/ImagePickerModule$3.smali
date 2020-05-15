.class Lcom/imagepicker/ImagePickerModule$3;
.super Ljava/lang/Object;
.source "ImagePickerModule.java"

# interfaces
.implements Lcom/imagepicker/permissions/PermissionUtils$OnExplainingPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imagepicker/ImagePickerModule;->permissionsCheck(Landroid/app/Activity;Lcom/facebook/react/bridge/Callback;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imagepicker/ImagePickerModule;


# direct methods
.method constructor <init>(Lcom/imagepicker/ImagePickerModule;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/imagepicker/ImagePickerModule$3;->this$0:Lcom/imagepicker/ImagePickerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/ref/WeakReference;Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/imagepicker/ImagePickerModule;",
            ">;",
            "Landroid/content/DialogInterface;",
            ")V"
        }
    .end annotation

    .line 603
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/imagepicker/ImagePickerModule;

    if-nez p1, :cond_0

    return-void

    .line 608
    :cond_0
    invoke-virtual {p1}, Lcom/imagepicker/ImagePickerModule;->doOnCancel()V

    return-void
.end method

.method public onReTry(Ljava/lang/ref/WeakReference;Landroid/content/DialogInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/imagepicker/ImagePickerModule;",
            ">;",
            "Landroid/content/DialogInterface;",
            ")V"
        }
    .end annotation

    .line 615
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/imagepicker/ImagePickerModule;

    if-nez p1, :cond_0

    return-void

    .line 620
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p1}, Lcom/imagepicker/ImagePickerModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 622
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 623
    invoke-virtual {p1}, Lcom/imagepicker/ImagePickerModule;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 628
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

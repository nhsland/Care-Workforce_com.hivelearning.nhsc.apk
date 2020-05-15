.class final Lcom/imagepicker/permissions/PermissionUtils$1;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imagepicker/permissions/PermissionUtils;->explainingDialog(Lcom/imagepicker/ImagePickerModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/imagepicker/permissions/PermissionUtils$OnExplainingPermissionCallback;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/imagepicker/permissions/PermissionUtils$OnExplainingPermissionCallback;

.field final synthetic val$reference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/imagepicker/permissions/PermissionUtils$OnExplainingPermissionCallback;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/imagepicker/permissions/PermissionUtils$1;->val$callback:Lcom/imagepicker/permissions/PermissionUtils$OnExplainingPermissionCallback;

    iput-object p2, p0, Lcom/imagepicker/permissions/PermissionUtils$1;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 72
    iget-object p2, p0, Lcom/imagepicker/permissions/PermissionUtils$1;->val$callback:Lcom/imagepicker/permissions/PermissionUtils$OnExplainingPermissionCallback;

    iget-object v0, p0, Lcom/imagepicker/permissions/PermissionUtils$1;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-interface {p2, v0, p1}, Lcom/imagepicker/permissions/PermissionUtils$OnExplainingPermissionCallback;->onReTry(Ljava/lang/ref/WeakReference;Landroid/content/DialogInterface;)V

    return-void
.end method

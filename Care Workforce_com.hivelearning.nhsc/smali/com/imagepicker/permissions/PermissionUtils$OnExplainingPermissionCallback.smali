.class public interface abstract Lcom/imagepicker/permissions/PermissionUtils$OnExplainingPermissionCallback;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imagepicker/permissions/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnExplainingPermissionCallback"
.end annotation


# virtual methods
.method public abstract onCancel(Ljava/lang/ref/WeakReference;Landroid/content/DialogInterface;)V
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
.end method

.method public abstract onReTry(Ljava/lang/ref/WeakReference;Landroid/content/DialogInterface;)V
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
.end method

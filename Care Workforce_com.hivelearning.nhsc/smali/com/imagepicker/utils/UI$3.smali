.class final Lcom/imagepicker/utils/UI$3;
.super Ljava/lang/Object;
.source "UI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imagepicker/utils/UI;->chooseDialog(Lcom/imagepicker/ImagePickerModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/imagepicker/utils/UI$OnAction;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/imagepicker/utils/UI$OnAction;

.field final synthetic val$reference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/imagepicker/utils/UI$OnAction;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/imagepicker/utils/UI$3;->val$callback:Lcom/imagepicker/utils/UI$OnAction;

    iput-object p2, p0, Lcom/imagepicker/utils/UI$3;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/imagepicker/utils/UI$3;->val$callback:Lcom/imagepicker/utils/UI$OnAction;

    iget-object v1, p0, Lcom/imagepicker/utils/UI$3;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imagepicker/ImagePickerModule;

    invoke-interface {v0, v1}, Lcom/imagepicker/utils/UI$OnAction;->onCancel(Lcom/imagepicker/ImagePickerModule;)V

    .line 90
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

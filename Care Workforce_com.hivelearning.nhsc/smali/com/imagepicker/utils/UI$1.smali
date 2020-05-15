.class final Lcom/imagepicker/utils/UI$1;
.super Ljava/lang/Object;
.source "UI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imagepicker/utils/UI;->chooseDialog(Lcom/imagepicker/ImagePickerModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/imagepicker/utils/UI$OnAction;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actions:Ljava/util/List;

.field final synthetic val$callback:Lcom/imagepicker/utils/UI$OnAction;

.field final synthetic val$reference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/imagepicker/utils/UI$OnAction;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/imagepicker/utils/UI$1;->val$actions:Ljava/util/List;

    iput-object p2, p0, Lcom/imagepicker/utils/UI$1;->val$callback:Lcom/imagepicker/utils/UI$OnAction;

    iput-object p3, p0, Lcom/imagepicker/utils/UI$1;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 50
    iget-object p1, p0, Lcom/imagepicker/utils/UI$1;->val$actions:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x5185d186

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v0, :cond_2

    const v0, 0x65b3e32

    if-eq p2, v0, :cond_1

    const v0, 0x9e824bb

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "library"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const-string p2, "photo"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const-string p2, "cancel"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_6

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    .line 66
    iget-object p2, p0, Lcom/imagepicker/utils/UI$1;->val$callback:Lcom/imagepicker/utils/UI$OnAction;

    iget-object v0, p0, Lcom/imagepicker/utils/UI$1;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imagepicker/ImagePickerModule;

    invoke-interface {p2, v0, p1}, Lcom/imagepicker/utils/UI$OnAction;->onCustomButton(Lcom/imagepicker/ImagePickerModule;Ljava/lang/String;)V

    goto :goto_2

    .line 62
    :cond_4
    iget-object p1, p0, Lcom/imagepicker/utils/UI$1;->val$callback:Lcom/imagepicker/utils/UI$OnAction;

    iget-object p2, p0, Lcom/imagepicker/utils/UI$1;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/imagepicker/ImagePickerModule;

    invoke-interface {p1, p2}, Lcom/imagepicker/utils/UI$OnAction;->onCancel(Lcom/imagepicker/ImagePickerModule;)V

    goto :goto_2

    .line 58
    :cond_5
    iget-object p1, p0, Lcom/imagepicker/utils/UI$1;->val$callback:Lcom/imagepicker/utils/UI$OnAction;

    iget-object p2, p0, Lcom/imagepicker/utils/UI$1;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/imagepicker/ImagePickerModule;

    invoke-interface {p1, p2}, Lcom/imagepicker/utils/UI$OnAction;->onUseLibrary(Lcom/imagepicker/ImagePickerModule;)V

    goto :goto_2

    .line 54
    :cond_6
    iget-object p1, p0, Lcom/imagepicker/utils/UI$1;->val$callback:Lcom/imagepicker/utils/UI$OnAction;

    iget-object p2, p0, Lcom/imagepicker/utils/UI$1;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/imagepicker/ImagePickerModule;

    invoke-interface {p1, p2}, Lcom/imagepicker/utils/UI$OnAction;->onTakePhoto(Lcom/imagepicker/ImagePickerModule;)V

    :goto_2
    return-void
.end method

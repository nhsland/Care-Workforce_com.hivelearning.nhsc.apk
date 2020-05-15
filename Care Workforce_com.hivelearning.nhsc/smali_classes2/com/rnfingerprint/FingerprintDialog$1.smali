.class Lcom/rnfingerprint/FingerprintDialog$1;
.super Ljava/lang/Object;
.source "FingerprintDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnfingerprint/FingerprintDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnfingerprint/FingerprintDialog;


# direct methods
.method constructor <init>(Lcom/rnfingerprint/FingerprintDialog;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/rnfingerprint/FingerprintDialog$1;->this$0:Lcom/rnfingerprint/FingerprintDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/rnfingerprint/FingerprintDialog$1;->this$0:Lcom/rnfingerprint/FingerprintDialog;

    invoke-virtual {p1}, Lcom/rnfingerprint/FingerprintDialog;->onCancelled()V

    return-void
.end method

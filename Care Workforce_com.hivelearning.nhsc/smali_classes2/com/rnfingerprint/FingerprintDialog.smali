.class public Lcom/rnfingerprint/FingerprintDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintDialog.java"

# interfaces
.implements Lcom/rnfingerprint/FingerprintHandler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rnfingerprint/FingerprintDialog$DialogResultListener;
    }
.end annotation


# instance fields
.field private authReason:Ljava/lang/String;

.field private cancelText:Ljava/lang/String;

.field private dialogCallback:Lcom/rnfingerprint/FingerprintDialog$DialogResultListener;

.field private dialogTitle:Ljava/lang/String;

.field private errorText:Ljava/lang/String;

.field private imageColor:I

.field private imageErrorColor:I

.field private isAuthInProgress:Z

.field private mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private mFingerprintError:Landroid/widget/TextView;

.field private mFingerprintHandler:Lcom/rnfingerprint/FingerprintHandler;

.field private mFingerprintImage:Landroid/widget/ImageView;

.field private mFingerprintSensorDescription:Landroid/widget/TextView;

.field private sensorDescription:Ljava/lang/String;

.field private sensorErrorDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/rnfingerprint/FingerprintDialog;->imageColor:I

    .line 31
    iput v0, p0, Lcom/rnfingerprint/FingerprintDialog;->imageErrorColor:I

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/rnfingerprint/FingerprintDialog;->dialogTitle:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/rnfingerprint/FingerprintDialog;->cancelText:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/rnfingerprint/FingerprintDialog;->sensorDescription:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/rnfingerprint/FingerprintDialog;->sensorErrorDescription:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/rnfingerprint/FingerprintDialog;->errorText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/rnfingerprint/FingerprintDialog;)Lcom/rnfingerprint/FingerprintHandler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/rnfingerprint/FingerprintDialog;->mFingerprintHandler:Lcom/rnfingerprint/FingerprintHandler;

    return-object p0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/rnfingerprint/FingerprintHandler;

    invoke-direct {v0, p1, p0}, Lcom/rnfingerprint/FingerprintHandler;-><init>(Landroid/content/Context;Lcom/rnfingerprint/FingerprintHandler$Callback;)V

    iput-object v0, p0, Lcom/rnfingerprint/FingerprintDialog;->mFingerprintHandler:Lcom/rnfingerprint/FingerprintHandler;

    return-void
.end method

.method public onAuthenticated()V
    .locals 1

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/rnfingerprint/FingerprintDialog;->isAuthInProgress:Z

    .line 169
    iget-object v0, p0, Lcom/rnfingerprint/FingerprintDialog;->dialogCallback:Lcom/rnfingerprint/FingerprintDialog$DialogResultListener;

    invoke-interface {v0}, Lcom/rnfingerprint/FingerprintDialog$DialogResultListener;->onAuthenticated()V

    .line 170
    invoke-virtual {p0}, Lcom/rnfingerprint/FingerprintDialog;->dismiss()V

    return-void
.end method

.method public onCancelled()V
    .locals 1

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/rnfingerprint/FingerprintDialog;->isAuthInProgress:Z

    .line 183
    iget-object v0, p0, Lcom/rnfingerprint/FingerprintDialog;->mFingerprintHandler:Lcom/rnfingerprint/FingerprintHandler;

    invoke-virtual {v0}, Lcom/rnfingerprint/FingerprintHandler;->endAuth()V

    .line 184
    iget-object v0, p0, Lcom/rnfingerprint/FingerprintDialog;->dialogCallback:Lcom/rnfingerprint/FingerprintDialog$DialogResultListener;

    invoke-interface {v0}, Lcom/rnfingerprint/FingerprintDialog$DialogResultListener;->onCancelled()V

    .line 185
    invoke-virtual {p0}, Lcom/rnfingerprint/FingerprintDialog;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x1030239

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/rnfingerprint/FingerprintDialog;->setStyle(II)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/rnfingerprint/FingerprintDialog;->setCancelable(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 54
    sget p3, Lcom/rnfingerprint/R$layout;->fingerprint_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    sget p2, Lcom/rnfingerprint/R$id;->fingerprint_description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 57
    iget-object p3, p0, Lcom/rnfingerprint/FingerprintDialog;->authReason:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    sget p2, Lcom/rnfingerprint/R$id;->fingerprint_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/rnfingerprint/FingerprintDialog;->mFingerprintImage:Landroid/widget/ImageView;

    .line 60
    iget p3, p0, Lcom/rnfingerprint/FingerprintDialog;->imageColor:I

    if-eqz p3, :cond_0

    .line 61
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 64
    :cond_0
    sget p2, Lcom/rnfingerprint/R$id;->fingerprint_sensor_description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/rnfingerprint/FingerprintDialog;->mFingerprintSensorDescription:Landroid/widget/TextView;

    .line 65
    iget-object p3, p0, Lcom/rnfingerprint/FingerprintDialog;->sensorDescription:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    sget p2, Lcom/rnfingerprint/R$id;->fingerprint_error:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/rnfingerprint/FingerprintDialog;->mFingerprintError:Landroid/widget/TextView;

    .line 68
    iget-object p3, p0, Lcom/rnfingerprint/FingerprintDialog;->errorText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget p2, Lcom/rnfingerprint/R$id;->cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 71
    iget-object p3, p0, Lcom/rnfingerprint/FingerprintDialog;->cancelText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance p3, Lcom/rnfingerprint/FingerprintDialog$1;

    invoke-direct {p3, p0}, Lcom/rnfingerprint/FingerprintDialog$1;-><init>(Lcom/rnfingerprint/FingerprintDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/rnfingerprint/FingerprintDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    iget-object p3, p0, Lcom/rnfingerprint/FingerprintDialog;->dialogTitle:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0}, Lcom/rnfingerprint/FingerprintDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance p3, Lcom/rnfingerprint/FingerprintDialog$2;

    invoke-direct {p3, p0}, Lcom/rnfingerprint/FingerprintDialog$2;-><init>(Lcom/rnfingerprint/FingerprintDialog;)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 0

    .line 175
    iget-object p2, p0, Lcom/rnfingerprint/FingerprintDialog;->mFingerprintError:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lcom/rnfingerprint/FingerprintDialog;->mFingerprintImage:Landroid/widget/ImageView;

    iget p2, p0, Lcom/rnfingerprint/FingerprintDialog;->imageErrorColor:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 177
    iget-object p1, p0, Lcom/rnfingerprint/FingerprintDialog;->mFingerprintSensorDescription:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/rnfingerprint/FingerprintDialog;->sensorErrorDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 108
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 109
    iget-boolean v0, p0, Lcom/rnfingerprint/FingerprintDialog;->isAuthInProgress:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/rnfingerprint/FingerprintDialog;->mFingerprintHandler:Lcom/rnfingerprint/FingerprintHandler;

    invoke-virtual {v0}, Lcom/rnfingerprint/FingerprintHandler;->endAuth()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/rnfingerprint/FingerprintDialog;->isAuthInProgress:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 96
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 98
    iget-boolean v0, p0, Lcom/rnfingerprint/FingerprintDialog;->isAuthInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/rnfingerprint/FingerprintDialog;->isAuthInProgress:Z

    .line 103
    iget-object v0, p0, Lcom/rnfingerprint/FingerprintDialog;->mFingerprintHandler:Lcom/rnfingerprint/FingerprintHandler;

    iget-object v1, p0, Lcom/rnfingerprint/FingerprintDialog;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {v0, v1}, Lcom/rnfingerprint/FingerprintHandler;->startAuth(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    return-void
.end method

.method public setAuthConfig(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "title"

    .line 133
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rnfingerprint/FingerprintDialog;->dialogTitle:Ljava/lang/String;

    :cond_1
    const-string v0, "cancelText"

    .line 137
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rnfingerprint/FingerprintDialog;->cancelText:Ljava/lang/String;

    :cond_2
    const-string v0, "sensorDescription"

    .line 141
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rnfingerprint/FingerprintDialog;->sensorDescription:Ljava/lang/String;

    :cond_3
    const-string v0, "sensorErrorDescription"

    .line 145
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 146
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rnfingerprint/FingerprintDialog;->sensorErrorDescription:Ljava/lang/String;

    :cond_4
    const-string v0, "imageColor"

    .line 149
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rnfingerprint/FingerprintDialog;->imageColor:I

    :cond_5
    const-string v0, "imageErrorColor"

    .line 153
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 154
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/rnfingerprint/FingerprintDialog;->imageErrorColor:I

    :cond_6
    return-void
.end method

.method public setCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/rnfingerprint/FingerprintDialog;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    return-void
.end method

.method public setDialogCallback(Lcom/rnfingerprint/FingerprintDialog$DialogResultListener;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/rnfingerprint/FingerprintDialog;->dialogCallback:Lcom/rnfingerprint/FingerprintDialog$DialogResultListener;

    return-void
.end method

.method public setReasonForAuthentication(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/rnfingerprint/FingerprintDialog;->authReason:Ljava/lang/String;

    return-void
.end method

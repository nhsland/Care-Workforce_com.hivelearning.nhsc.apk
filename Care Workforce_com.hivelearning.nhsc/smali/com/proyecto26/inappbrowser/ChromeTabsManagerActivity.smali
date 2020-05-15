.class public Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;
.super Landroid/app/Activity;
.source "ChromeTabsManagerActivity.java"


# static fields
.field static final BROWSER_RESULT_TYPE:Ljava/lang/String; = "browserResultType"

.field static final DEFAULT_RESULT_TYPE:Ljava/lang/String; = "dismiss"

.field static final KEY_BROWSER_INTENT:Ljava/lang/String; = "browserIntent"


# instance fields
.field private mOpened:Z

.field private resultType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->mOpened:Z

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->resultType:Ljava/lang/String;

    return-void
.end method

.method private static createBaseIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createDismissIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 31
    invoke-static {p0}, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->createBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0x4000000

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public static createStartIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 25
    invoke-static {p0}, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->createBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "browserIntent"

    .line 26
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "browserIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "browserResultType"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, p1}, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->startActivity(Landroid/content/Intent;)V

    const-string p1, "dismiss"

    .line 53
    iput-object p1, p0, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->resultType:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->resultType:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x5185d186

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "cancel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 82
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/proyecto26/inappbrowser/ChromeTabsDismissedEvent;

    const-string v2, "chrome tabs activity destroyed"

    const-string v3, "dismiss"

    invoke-direct {v1, v2, v3}, Lcom/proyecto26/inappbrowser/ChromeTabsDismissedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 79
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/proyecto26/inappbrowser/ChromeTabsDismissedEvent;

    iget-object v2, p0, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->resultType:Ljava/lang/String;

    const-string v3, "chrome tabs activity closed"

    invoke-direct {v1, v3, v2}, Lcom/proyecto26/inappbrowser/ChromeTabsDismissedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->resultType:Ljava/lang/String;

    .line 87
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "browserResultType"

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->resultType:Ljava/lang/String;

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 66
    iget-boolean v0, p0, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->mOpened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->mOpened:Z

    goto :goto_0

    :cond_0
    const-string v0, "cancel"

    .line 69
    iput-object v0, p0, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->resultType:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/proyecto26/inappbrowser/ChromeTabsManagerActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "browserResultType"

    const-string v1, "dismiss"

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

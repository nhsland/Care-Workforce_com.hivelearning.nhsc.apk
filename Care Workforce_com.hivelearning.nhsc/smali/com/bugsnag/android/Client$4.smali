.class Lcom/bugsnag/android/Client$4;
.super Landroid/view/OrientationEventListener;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;Lcom/bugsnag/android/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bugsnag/android/Client;

.field final synthetic val$client:Lcom/bugsnag/android/Client;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Client;Landroid/content/Context;Lcom/bugsnag/android/Client;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/bugsnag/android/Client$4;->this$0:Lcom/bugsnag/android/Client;

    iput-object p3, p0, Lcom/bugsnag/android/Client$4;->val$client:Lcom/bugsnag/android/Client;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/bugsnag/android/Client$4;->val$client:Lcom/bugsnag/android/Client;

    invoke-static {v0}, Lcom/bugsnag/android/Client;->access$000(Lcom/bugsnag/android/Client;)V

    .line 281
    iget-object v0, p0, Lcom/bugsnag/android/Client$4;->val$client:Lcom/bugsnag/android/Client;

    new-instance v1, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v2, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_ORIENTATION:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 282
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Client;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.class Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;
.super Ljava/lang/Object;
.source "RNInstallReferrerClient.java"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;


# direct methods
.method constructor <init>(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;->this$0:Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;->this$0:Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;

    invoke-static {v0}, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->access$000(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;->this$0:Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;

    invoke-static {v1}, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->access$300(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)Lcom/android/installreferrer/api/InstallReferrerStateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;->this$0:Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;

    invoke-static {p1}, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->access$000(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    .line 50
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    .line 52
    iget-object p1, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;->this$0:Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;

    invoke-static {p1}, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->access$100(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "installReferrer"

    .line 53
    iget-object v1, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;->this$0:Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;

    invoke-static {v1}, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->access$200(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    iget-object p1, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;->this$0:Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;

    invoke-static {p1}, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->access$000(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

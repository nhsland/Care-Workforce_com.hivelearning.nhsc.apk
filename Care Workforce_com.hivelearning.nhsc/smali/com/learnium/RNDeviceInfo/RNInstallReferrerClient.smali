.class public Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;
.super Ljava/lang/Object;
.source "RNInstallReferrerClient.java"


# instance fields
.field private installReferrerStateListener:Lcom/android/installreferrer/api/InstallReferrerStateListener;

.field private mReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;

    invoke-direct {v0, p0}, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;-><init>(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)V

    iput-object v0, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->installReferrerStateListener:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    const-string v0, "react-native-device-info"

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 19
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    iput-object p1, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->mReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->installReferrerStateListener:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    invoke-virtual {p1, v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstallReferrer exception. getInstallReferrer will be unavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)Lcom/android/installreferrer/api/InstallReferrerClient;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->mReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)Landroid/content/SharedPreferences;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->getInstallReferrer()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)Lcom/android/installreferrer/api/InstallReferrerStateListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->installReferrerStateListener:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    return-object p0
.end method

.method private getInstallReferrer()Ljava/lang/String;
    .locals 1

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->mReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 31
    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

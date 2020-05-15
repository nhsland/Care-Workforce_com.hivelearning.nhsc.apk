.class public Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;
.super Lcom/oblador/keychain/cipherStorage/CipherStorage$CipherResult;
.source "CipherStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oblador/keychain/cipherStorage/CipherStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecryptionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oblador/keychain/cipherStorage/CipherStorage$CipherResult<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private securityLevel:Lcom/oblador/keychain/SecurityLevel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oblador/keychain/SecurityLevel;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/oblador/keychain/cipherStorage/CipherStorage$CipherResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    iput-object p3, p0, Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;->securityLevel:Lcom/oblador/keychain/SecurityLevel;

    return-void
.end method


# virtual methods
.method public getSecurityLevel()Lcom/oblador/keychain/SecurityLevel;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;->securityLevel:Lcom/oblador/keychain/SecurityLevel;

    return-object v0
.end method

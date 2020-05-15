.class public Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;
.super Ljava/lang/Object;
.source "CipherStorageFacebookConceal.java"

# interfaces
.implements Lcom/oblador/keychain/cipherStorage/CipherStorage;


# static fields
.field public static final CIPHER_STORAGE_NAME:Ljava/lang/String; = "FacebookConceal"

.field public static final KEYCHAIN_DATA:Ljava/lang/String; = "RN_KEYCHAIN"


# instance fields
.field private final crypto:Lcom/facebook/crypto/Crypto;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;

    sget-object v1, Lcom/facebook/crypto/CryptoConfig;->KEY_256:Lcom/facebook/crypto/CryptoConfig;

    invoke-direct {v0, p1, v1}, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;-><init>(Landroid/content/Context;Lcom/facebook/crypto/CryptoConfig;)V

    .line 25
    invoke-static {}, Lcom/facebook/android/crypto/keychain/AndroidConceal;->get()Lcom/facebook/android/crypto/keychain/AndroidConceal;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/facebook/android/crypto/keychain/AndroidConceal;->createDefaultCrypto(Lcom/facebook/crypto/keychain/KeyChain;)Lcom/facebook/crypto/Crypto;

    move-result-object p1

    iput-object p1, p0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->crypto:Lcom/facebook/crypto/Crypto;

    return-void
.end method

.method private createPasswordEntity(Ljava/lang/String;)Lcom/facebook/crypto/Entity;
    .locals 1

    .line 103
    invoke-direct {p0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->getEntityPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pass"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/crypto/Entity;->create(Ljava/lang/String;)Lcom/facebook/crypto/Entity;

    move-result-object p1

    return-object p1
.end method

.method private createUsernameEntity(Ljava/lang/String;)Lcom/facebook/crypto/Entity;
    .locals 1

    .line 98
    invoke-direct {p0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->getEntityPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "user"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/crypto/Entity;->create(Ljava/lang/String;)Lcom/facebook/crypto/Entity;

    move-result-object p1

    return-object p1
.end method

.method private getEntityPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RN_KEYCHAIN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;[B[B)Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oblador/keychain/exceptions/CryptoFailedException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 73
    iget-object v1, p0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->crypto:Lcom/facebook/crypto/Crypto;

    invoke-virtual {v1}, Lcom/facebook/crypto/Crypto;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->createUsernameEntity(Ljava/lang/String;)Lcom/facebook/crypto/Entity;

    move-result-object v1

    .line 77
    invoke-direct {p0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->createPasswordEntity(Ljava/lang/String;)Lcom/facebook/crypto/Entity;

    move-result-object v2

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->crypto:Lcom/facebook/crypto/Crypto;

    invoke-virtual {v3, p2, v1}, Lcom/facebook/crypto/Crypto;->decrypt([BLcom/facebook/crypto/Entity;)[B

    move-result-object p2

    .line 81
    iget-object v1, p0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->crypto:Lcom/facebook/crypto/Crypto;

    invoke-virtual {v1, p3, v2}, Lcom/facebook/crypto/Crypto;->decrypt([BLcom/facebook/crypto/Entity;)[B

    move-result-object p3

    .line 83
    new-instance v1, Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;

    new-instance v2, Ljava/lang/String;

    .line 84
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance p2, Ljava/lang/String;

    .line 85
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object p3, Lcom/oblador/keychain/SecurityLevel;->ANY:Lcom/oblador/keychain/SecurityLevel;

    invoke-direct {v1, v2, p2, p3}, Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oblador/keychain/SecurityLevel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p2

    .line 88
    new-instance p3, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decryption failed for service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 74
    :cond_0
    new-instance p1, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    const-string p2, "Crypto is missing"

    invoke-direct {p1, p2}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oblador/keychain/SecurityLevel;)Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oblador/keychain/exceptions/CryptoFailedException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 51
    invoke-virtual {p0}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->securityLevel()Lcom/oblador/keychain/SecurityLevel;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/oblador/keychain/SecurityLevel;->satisfiesSafetyThreshold(Lcom/oblador/keychain/SecurityLevel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object p4, p0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->crypto:Lcom/facebook/crypto/Crypto;

    invoke-virtual {p4}, Lcom/facebook/crypto/Crypto;->isAvailable()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 58
    invoke-direct {p0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->createUsernameEntity(Ljava/lang/String;)Lcom/facebook/crypto/Entity;

    move-result-object p4

    .line 59
    invoke-direct {p0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->createPasswordEntity(Ljava/lang/String;)Lcom/facebook/crypto/Entity;

    move-result-object v1

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->crypto:Lcom/facebook/crypto/Crypto;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v2, p2, p4}, Lcom/facebook/crypto/Crypto;->encrypt([BLcom/facebook/crypto/Entity;)[B

    move-result-object p2

    .line 63
    iget-object p4, p0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->crypto:Lcom/facebook/crypto/Crypto;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-virtual {p4, p3, v1}, Lcom/facebook/crypto/Crypto;->encrypt([BLcom/facebook/crypto/Entity;)[B

    move-result-object p3

    .line 65
    new-instance p4, Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;

    invoke-direct {p4, p2, p3, p0}, Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;-><init>([B[BLcom/oblador/keychain/cipherStorage/CipherStorage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :catch_0
    move-exception p2

    .line 67
    new-instance p3, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Encryption failed for service "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 56
    :cond_0
    new-instance p1, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    const-string p2, "Crypto is missing"

    invoke-direct {p1, p2}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    new-instance p1, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p4, p2, p3

    const/4 p3, 0x1

    invoke-virtual {p0}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;->securityLevel()Lcom/oblador/keychain/SecurityLevel;

    move-result-object p4

    aput-object p4, p2, p3

    const-string p3, "Insufficient security level (wants %s; got %s)"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCipherStorageName()Ljava/lang/String;
    .locals 1

    const-string v0, "FacebookConceal"

    return-object v0
.end method

.method public getMinSupportedApiLevel()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public securityLevel()Lcom/oblador/keychain/SecurityLevel;
    .locals 1

    .line 40
    sget-object v0, Lcom/oblador/keychain/SecurityLevel;->ANY:Lcom/oblador/keychain/SecurityLevel;

    return-object v0
.end method

.method public supportsSecureHardware()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

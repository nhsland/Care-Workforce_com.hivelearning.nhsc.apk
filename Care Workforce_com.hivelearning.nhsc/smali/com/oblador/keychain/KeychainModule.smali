.class public Lcom/oblador/keychain/KeychainModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "KeychainModule.java"


# static fields
.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final E_CRYPTO_FAILED:Ljava/lang/String; = "E_CRYPTO_FAILED"

.field public static final E_EMPTY_PARAMETERS:Ljava/lang/String; = "E_EMPTY_PARAMETERS"

.field public static final E_KEYSTORE_ACCESS_ERROR:Ljava/lang/String; = "E_KEYSTORE_ACCESS_ERROR"

.field public static final E_SUPPORTED_BIOMETRY_ERROR:Ljava/lang/String; = "E_SUPPORTED_BIOMETRY_ERROR"

.field public static final FINGERPRINT_SUPPORTED_NAME:Ljava/lang/String; = "Fingerprint"

.field public static final KEYCHAIN_MODULE:Ljava/lang/String; = "RNKeychainManager"


# instance fields
.field private final cipherStorageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oblador/keychain/cipherStorage/CipherStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final prefsStorage:Lcom/oblador/keychain/PrefsStorage;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oblador/keychain/KeychainModule;->cipherStorageMap:Ljava/util/Map;

    .line 49
    new-instance v0, Lcom/oblador/keychain/PrefsStorage;

    invoke-direct {v0, p1}, Lcom/oblador/keychain/PrefsStorage;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/oblador/keychain/KeychainModule;->prefsStorage:Lcom/oblador/keychain/PrefsStorage;

    .line 51
    new-instance v0, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;

    invoke-direct {v0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageFacebookConceal;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {p0, v0}, Lcom/oblador/keychain/KeychainModule;->addCipherStorageToMap(Lcom/oblador/keychain/cipherStorage/CipherStorage;)V

    .line 52
    new-instance p1, Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;

    invoke-direct {p1}, Lcom/oblador/keychain/cipherStorage/CipherStorageKeystoreAESCBC;-><init>()V

    invoke-direct {p0, p1}, Lcom/oblador/keychain/KeychainModule;->addCipherStorageToMap(Lcom/oblador/keychain/cipherStorage/CipherStorage;)V

    return-void
.end method

.method private addCipherStorageToMap(Lcom/oblador/keychain/cipherStorage/CipherStorage;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/oblador/keychain/KeychainModule;->cipherStorageMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->getCipherStorageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private decryptCredentials(Ljava/lang/String;Lcom/oblador/keychain/cipherStorage/CipherStorage;Lcom/oblador/keychain/PrefsStorage$ResultSet;)Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oblador/keychain/exceptions/CryptoFailedException;,
            Lcom/oblador/keychain/exceptions/KeyStoreAccessException;
        }
    .end annotation

    .line 132
    iget-object v0, p3, Lcom/oblador/keychain/PrefsStorage$ResultSet;->cipherStorageName:Ljava/lang/String;

    invoke-interface {p2}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->getCipherStorageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p3, Lcom/oblador/keychain/PrefsStorage$ResultSet;->usernameBytes:[B

    iget-object p3, p3, Lcom/oblador/keychain/PrefsStorage$ResultSet;->passwordBytes:[B

    invoke-interface {p2, p1, v0, p3}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->decrypt(Ljava/lang/String;[B[B)Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;

    move-result-object p1

    return-object p1

    .line 138
    :cond_0
    iget-object v0, p3, Lcom/oblador/keychain/PrefsStorage$ResultSet;->cipherStorageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oblador/keychain/KeychainModule;->getCipherStorageByName(Ljava/lang/String;)Lcom/oblador/keychain/cipherStorage/CipherStorage;

    move-result-object v0

    .line 141
    iget-object v1, p3, Lcom/oblador/keychain/PrefsStorage$ResultSet;->usernameBytes:[B

    iget-object p3, p3, Lcom/oblador/keychain/PrefsStorage$ResultSet;->passwordBytes:[B

    invoke-interface {v0, p1, v1, p3}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->decrypt(Ljava/lang/String;[B[B)Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;

    move-result-object p3

    .line 145
    :try_start_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oblador/keychain/KeychainModule;->migrateCipherStorage(Ljava/lang/String;Lcom/oblador/keychain/cipherStorage/CipherStorage;Lcom/oblador/keychain/cipherStorage/CipherStorage;Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;)V
    :try_end_0
    .catch Lcom/oblador/keychain/exceptions/CryptoFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "RNKeychainManager"

    const-string p2, "Migrating to a less safe storage is not allowed. Keeping the old one"

    .line 147
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p3
.end method

.method private getCipherStorageByName(Ljava/lang/String;)Lcom/oblador/keychain/cipherStorage/CipherStorage;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/oblador/keychain/KeychainModule;->cipherStorageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oblador/keychain/cipherStorage/CipherStorage;

    return-object p1
.end method

.method private getCipherStorageForCurrentAPILevel()Lcom/oblador/keychain/cipherStorage/CipherStorage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oblador/keychain/exceptions/CryptoFailedException;
        }
    .end annotation

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 233
    iget-object v1, p0, Lcom/oblador/keychain/KeychainModule;->cipherStorageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oblador/keychain/cipherStorage/CipherStorage;

    .line 234
    invoke-interface {v3}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->getMinSupportedApiLevel()I

    move-result v4

    if-gt v4, v0, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 241
    invoke-interface {v2}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->getMinSupportedApiLevel()I

    move-result v5

    if-le v4, v5, :cond_0

    :cond_3
    move-object v2, v3

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    return-object v2

    .line 246
    :cond_5
    new-instance v0, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Android SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private getDefaultServiceIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private getSecurityLevel()Lcom/oblador/keychain/SecurityLevel;
    .locals 2

    .line 282
    :try_start_0
    invoke-direct {p0}, Lcom/oblador/keychain/KeychainModule;->getCipherStorageForCurrentAPILevel()Lcom/oblador/keychain/cipherStorage/CipherStorage;

    move-result-object v0

    .line 283
    invoke-interface {v0}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->securityLevel()Lcom/oblador/keychain/SecurityLevel;

    move-result-object v0

    sget-object v1, Lcom/oblador/keychain/SecurityLevel;->SECURE_SOFTWARE:Lcom/oblador/keychain/SecurityLevel;

    invoke-virtual {v0, v1}, Lcom/oblador/keychain/SecurityLevel;->satisfiesSafetyThreshold(Lcom/oblador/keychain/SecurityLevel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    sget-object v0, Lcom/oblador/keychain/SecurityLevel;->ANY:Lcom/oblador/keychain/SecurityLevel;

    return-object v0

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/oblador/keychain/KeychainModule;->isSecureHardwareAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    sget-object v0, Lcom/oblador/keychain/SecurityLevel;->SECURE_HARDWARE:Lcom/oblador/keychain/SecurityLevel;

    return-object v0

    .line 290
    :cond_1
    sget-object v0, Lcom/oblador/keychain/SecurityLevel;->SECURE_SOFTWARE:Lcom/oblador/keychain/SecurityLevel;
    :try_end_0
    .catch Lcom/oblador/keychain/exceptions/CryptoFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 293
    :catch_0
    sget-object v0, Lcom/oblador/keychain/SecurityLevel;->ANY:Lcom/oblador/keychain/SecurityLevel;

    return-object v0
.end method

.method private isFingerprintAuthAvailable()Z
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/oblador/keychain/KeychainModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/oblador/keychain/DeviceAvailability;->isFingerprintAuthAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isSecureHardwareAvailable()Z
    .locals 1

    .line 274
    :try_start_0
    invoke-direct {p0}, Lcom/oblador/keychain/KeychainModule;->getCipherStorageForCurrentAPILevel()Lcom/oblador/keychain/cipherStorage/CipherStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->supportsSecureHardware()Z

    move-result v0
    :try_end_0
    .catch Lcom/oblador/keychain/exceptions/CryptoFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private migrateCipherStorage(Ljava/lang/String;Lcom/oblador/keychain/cipherStorage/CipherStorage;Lcom/oblador/keychain/cipherStorage/CipherStorage;Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oblador/keychain/exceptions/KeyStoreAccessException;,
            Lcom/oblador/keychain/exceptions/CryptoFailedException;
        }
    .end annotation

    .line 155
    iget-object v0, p4, Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;->username:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p4, Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;->password:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;->getSecurityLevel()Lcom/oblador/keychain/SecurityLevel;

    move-result-object p4

    invoke-interface {p2, p1, v0, v1, p4}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oblador/keychain/SecurityLevel;)Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;

    move-result-object p2

    .line 157
    iget-object p4, p0, Lcom/oblador/keychain/KeychainModule;->prefsStorage:Lcom/oblador/keychain/PrefsStorage;

    invoke-virtual {p4, p1, p2}, Lcom/oblador/keychain/PrefsStorage;->storeEncryptedEntry(Ljava/lang/String;Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;)V

    .line 159
    invoke-interface {p3, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method private validateCipherStorageSecurityLevel(Lcom/oblador/keychain/cipherStorage/CipherStorage;Lcom/oblador/keychain/SecurityLevel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oblador/keychain/exceptions/CryptoFailedException;
        }
    .end annotation

    .line 252
    invoke-interface {p1}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->securityLevel()Lcom/oblador/keychain/SecurityLevel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oblador/keychain/SecurityLevel;->satisfiesSafetyThreshold(Lcom/oblador/keychain/SecurityLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 256
    :cond_0
    new-instance v0, Lcom/oblador/keychain/exceptions/CryptoFailedException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 259
    invoke-virtual {p2}, Lcom/oblador/keychain/SecurityLevel;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    .line 260
    invoke-interface {p1}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->securityLevel()Lcom/oblador/keychain/SecurityLevel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oblador/keychain/SecurityLevel;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "Cipher Storage is too weak. Required security level is: %s, but only %s is provided"

    .line 257
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/oblador/keychain/exceptions/CryptoFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    sget-object v1, Lcom/oblador/keychain/SecurityLevel;->ANY:Lcom/oblador/keychain/SecurityLevel;

    invoke-virtual {v1}, Lcom/oblador/keychain/SecurityLevel;->jsName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oblador/keychain/SecurityLevel;->ANY:Lcom/oblador/keychain/SecurityLevel;

    invoke-virtual {v2}, Lcom/oblador/keychain/SecurityLevel;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lcom/oblador/keychain/SecurityLevel;->SECURE_SOFTWARE:Lcom/oblador/keychain/SecurityLevel;

    invoke-virtual {v1}, Lcom/oblador/keychain/SecurityLevel;->jsName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oblador/keychain/SecurityLevel;->SECURE_SOFTWARE:Lcom/oblador/keychain/SecurityLevel;

    invoke-virtual {v2}, Lcom/oblador/keychain/SecurityLevel;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lcom/oblador/keychain/SecurityLevel;->SECURE_HARDWARE:Lcom/oblador/keychain/SecurityLevel;

    invoke-virtual {v1}, Lcom/oblador/keychain/SecurityLevel;->jsName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oblador/keychain/SecurityLevel;->SECURE_HARDWARE:Lcom/oblador/keychain/SecurityLevel;

    invoke-virtual {v2}, Lcom/oblador/keychain/SecurityLevel;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getGenericPasswordForOptions(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "RNKeychainManager"

    .line 102
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oblador/keychain/KeychainModule;->getDefaultServiceIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-direct {p0}, Lcom/oblador/keychain/KeychainModule;->getCipherStorageForCurrentAPILevel()Lcom/oblador/keychain/cipherStorage/CipherStorage;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/oblador/keychain/KeychainModule;->prefsStorage:Lcom/oblador/keychain/PrefsStorage;

    invoke-virtual {v2, p1}, Lcom/oblador/keychain/PrefsStorage;->getEncryptedEntry(Ljava/lang/String;)Lcom/oblador/keychain/PrefsStorage$ResultSet;

    move-result-object v2

    if-nez v2, :cond_0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry found for service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 109
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 113
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/oblador/keychain/KeychainModule;->decryptCredentials(Ljava/lang/String;Lcom/oblador/keychain/cipherStorage/CipherStorage;Lcom/oblador/keychain/PrefsStorage$ResultSet;)Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;

    move-result-object v1

    .line 115
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-string v3, "service"

    .line 117
    invoke-interface {v2, v3, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "username"

    .line 118
    iget-object v3, v1, Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;->username:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "password"

    .line 119
    iget-object v1, v1, Lcom/oblador/keychain/cipherStorage/CipherStorage$DecryptionResult;->password:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/oblador/keychain/exceptions/KeyStoreAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/oblador/keychain/exceptions/CryptoFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Lcom/oblador/keychain/exceptions/CryptoFailedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "E_CRYPTO_FAILED"

    .line 127
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 123
    invoke-virtual {p1}, Lcom/oblador/keychain/exceptions/KeyStoreAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "E_KEYSTORE_ACCESS_ERROR"

    .line 124
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getInternetCredentialsForServer(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 206
    invoke-virtual {p0, p1, p3}, Lcom/oblador/keychain/KeychainModule;->getGenericPasswordForOptions(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNKeychainManager"

    return-object v0
.end method

.method public getSecurityLevel(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/oblador/keychain/KeychainModule;->getSecurityLevel()Lcom/oblador/keychain/SecurityLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oblador/keychain/SecurityLevel;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getSupportedBiometryType(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 217
    :try_start_0
    invoke-direct {p0}, Lcom/oblador/keychain/KeychainModule;->isFingerprintAuthAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Fingerprint"

    .line 219
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 221
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RNKeychainManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "E_SUPPORTED_BIOMETRY_ERROR"

    .line 225
    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public hasInternetCredentialsForServer(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 187
    invoke-direct {p0, p1}, Lcom/oblador/keychain/KeychainModule;->getDefaultServiceIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lcom/oblador/keychain/KeychainModule;->prefsStorage:Lcom/oblador/keychain/PrefsStorage;

    invoke-virtual {v0, p1}, Lcom/oblador/keychain/PrefsStorage;->getEncryptedEntry(Ljava/lang/String;)Lcom/oblador/keychain/PrefsStorage$ResultSet;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No entry found for service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RNKeychainManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 192
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 196
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public resetGenericPasswordForOptions(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 165
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oblador/keychain/KeychainModule;->getDefaultServiceIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/oblador/keychain/KeychainModule;->prefsStorage:Lcom/oblador/keychain/PrefsStorage;

    invoke-virtual {v0, p1}, Lcom/oblador/keychain/PrefsStorage;->getEncryptedEntry(Ljava/lang/String;)Lcom/oblador/keychain/PrefsStorage$ResultSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, v0, Lcom/oblador/keychain/PrefsStorage$ResultSet;->cipherStorageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oblador/keychain/KeychainModule;->getCipherStorageByName(Ljava/lang/String;)Lcom/oblador/keychain/cipherStorage/CipherStorage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0, p1}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->removeKey(Ljava/lang/String;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/oblador/keychain/KeychainModule;->prefsStorage:Lcom/oblador/keychain/PrefsStorage;

    invoke-virtual {v0, p1}, Lcom/oblador/keychain/PrefsStorage;->removeEntry(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 178
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/oblador/keychain/exceptions/KeyStoreAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Lcom/oblador/keychain/exceptions/KeyStoreAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RNKeychainManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "E_KEYSTORE_ACCESS_ERROR"

    .line 181
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public resetInternetCredentialsForServer(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 211
    invoke-virtual {p0, p1, p3}, Lcom/oblador/keychain/KeychainModule;->resetGenericPasswordForOptions(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public setGenericPasswordForOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "RNKeychainManager"

    .line 77
    :try_start_0
    invoke-static {p4}, Lcom/oblador/keychain/SecurityLevel;->valueOf(Ljava/lang/String;)Lcom/oblador/keychain/SecurityLevel;

    move-result-object p4

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lcom/oblador/keychain/KeychainModule;->getDefaultServiceIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-direct {p0}, Lcom/oblador/keychain/KeychainModule;->getCipherStorageForCurrentAPILevel()Lcom/oblador/keychain/cipherStorage/CipherStorage;

    move-result-object v1

    .line 84
    invoke-direct {p0, v1, p4}, Lcom/oblador/keychain/KeychainModule;->validateCipherStorageSecurityLevel(Lcom/oblador/keychain/cipherStorage/CipherStorage;Lcom/oblador/keychain/SecurityLevel;)V

    .line 86
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oblador/keychain/SecurityLevel;)Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;

    move-result-object p2

    .line 87
    iget-object p3, p0, Lcom/oblador/keychain/KeychainModule;->prefsStorage:Lcom/oblador/keychain/PrefsStorage;

    invoke-virtual {p3, p1, p2}, Lcom/oblador/keychain/PrefsStorage;->storeEncryptedEntry(Ljava/lang/String;Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;)V

    const/4 p1, 0x1

    .line 89
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Lcom/oblador/keychain/exceptions/EmptyParameterException;

    const-string p2, "you passed empty or null username/password"

    invoke-direct {p1, p2}, Lcom/oblador/keychain/exceptions/EmptyParameterException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/oblador/keychain/exceptions/EmptyParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/oblador/keychain/exceptions/CryptoFailedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Lcom/oblador/keychain/exceptions/CryptoFailedException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "E_CRYPTO_FAILED"

    .line 95
    invoke-interface {p5, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 91
    invoke-virtual {p1}, Lcom/oblador/keychain/exceptions/EmptyParameterException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "E_EMPTY_PARAMETERS"

    .line 92
    invoke-interface {p5, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setInternetCredentialsForServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 201
    invoke-virtual/range {v0 .. v5}, Lcom/oblador/keychain/KeychainModule;->setGenericPasswordForOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.class public Lcom/rnfingerprint/FingerprintCipher;
.super Ljava/lang/Object;
.source "FingerprintCipher.java"


# static fields
.field private static final CIPHER_ALGO:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final KEY_NAME:Ljava/lang/String; = "example_key"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private generateKey()Ljava/security/KeyStore;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    .line 43
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const-string v2, "AES"

    .line 44
    invoke-static {v2, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 47
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v3, "example_key"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "CBC"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 49
    invoke-virtual {v2, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 50
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "PKCS7Padding"

    aput-object v4, v3, v6

    .line 51
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 53
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    return-object v1
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 5

    .line 25
    iget-object v0, p0, Lcom/rnfingerprint/FingerprintCipher;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    return-object v0

    .line 30
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/rnfingerprint/FingerprintCipher;->generateKey()Ljava/security/KeyStore;

    move-result-object v0

    const-string v1, "AES/CBC/PKCS7Padding"

    .line 31
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/rnfingerprint/FingerprintCipher;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 34
    iget-object v2, p0, Lcom/rnfingerprint/FingerprintCipher;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    const-string v4, "example_key"

    invoke-virtual {v0, v4, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :catch_0
    iget-object v0, p0, Lcom/rnfingerprint/FingerprintCipher;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

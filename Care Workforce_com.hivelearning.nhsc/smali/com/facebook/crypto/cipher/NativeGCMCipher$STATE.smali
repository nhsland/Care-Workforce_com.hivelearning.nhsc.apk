.class final enum Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;
.super Ljava/lang/Enum;
.source "NativeGCMCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/crypto/cipher/NativeGCMCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

.field public static final enum DECRYPT_FINALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

.field public static final enum DECRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

.field public static final enum ENCRYPT_FINALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

.field public static final enum ENCRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

.field public static final enum UNINITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 37
    new-instance v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    const/4 v1, 0x0

    const-string v2, "UNINITIALIZED"

    invoke-direct {v0, v2, v1}, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->UNINITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    .line 38
    new-instance v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    const/4 v2, 0x1

    const-string v3, "ENCRYPT_INITIALIZED"

    invoke-direct {v0, v3, v2}, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->ENCRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    .line 39
    new-instance v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    const/4 v3, 0x2

    const-string v4, "DECRYPT_INITIALIZED"

    invoke-direct {v0, v4, v3}, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->DECRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    .line 40
    new-instance v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    const/4 v4, 0x3

    const-string v5, "ENCRYPT_FINALIZED"

    invoke-direct {v0, v5, v4}, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->ENCRYPT_FINALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    .line 41
    new-instance v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    const/4 v5, 0x4

    const-string v6, "DECRYPT_FINALIZED"

    invoke-direct {v0, v6, v5}, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->DECRYPT_FINALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    .line 36
    sget-object v7, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->UNINITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    aput-object v7, v6, v1

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->ENCRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    aput-object v1, v6, v2

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->DECRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    aput-object v1, v6, v3

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->ENCRYPT_FINALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->$VALUES:[Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;
    .locals 1

    .line 36
    const-class v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    return-object p0
.end method

.method public static values()[Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;
    .locals 1

    .line 36
    sget-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->$VALUES:[Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    invoke-virtual {v0}, [Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    return-object v0
.end method

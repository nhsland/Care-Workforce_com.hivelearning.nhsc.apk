.class final enum Lcom/facebook/react/bridge/JsonWriter$Scope;
.super Ljava/lang/Enum;
.source "JsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/bridge/JsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/bridge/JsonWriter$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/bridge/JsonWriter$Scope;

.field public static final enum ARRAY:Lcom/facebook/react/bridge/JsonWriter$Scope;

.field public static final enum EMPTY_ARRAY:Lcom/facebook/react/bridge/JsonWriter$Scope;

.field public static final enum EMPTY_OBJECT:Lcom/facebook/react/bridge/JsonWriter$Scope;

.field public static final enum OBJECT:Lcom/facebook/react/bridge/JsonWriter$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 211
    new-instance v0, Lcom/facebook/react/bridge/JsonWriter$Scope;

    const/4 v1, 0x0

    const-string v2, "EMPTY_OBJECT"

    invoke-direct {v0, v2, v1}, Lcom/facebook/react/bridge/JsonWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/bridge/JsonWriter$Scope;->EMPTY_OBJECT:Lcom/facebook/react/bridge/JsonWriter$Scope;

    .line 212
    new-instance v0, Lcom/facebook/react/bridge/JsonWriter$Scope;

    const/4 v2, 0x1

    const-string v3, "OBJECT"

    invoke-direct {v0, v3, v2}, Lcom/facebook/react/bridge/JsonWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/bridge/JsonWriter$Scope;->OBJECT:Lcom/facebook/react/bridge/JsonWriter$Scope;

    .line 213
    new-instance v0, Lcom/facebook/react/bridge/JsonWriter$Scope;

    const/4 v3, 0x2

    const-string v4, "EMPTY_ARRAY"

    invoke-direct {v0, v4, v3}, Lcom/facebook/react/bridge/JsonWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/bridge/JsonWriter$Scope;->EMPTY_ARRAY:Lcom/facebook/react/bridge/JsonWriter$Scope;

    .line 214
    new-instance v0, Lcom/facebook/react/bridge/JsonWriter$Scope;

    const/4 v4, 0x3

    const-string v5, "ARRAY"

    invoke-direct {v0, v5, v4}, Lcom/facebook/react/bridge/JsonWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/bridge/JsonWriter$Scope;->ARRAY:Lcom/facebook/react/bridge/JsonWriter$Scope;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/facebook/react/bridge/JsonWriter$Scope;

    .line 210
    sget-object v6, Lcom/facebook/react/bridge/JsonWriter$Scope;->EMPTY_OBJECT:Lcom/facebook/react/bridge/JsonWriter$Scope;

    aput-object v6, v5, v1

    sget-object v1, Lcom/facebook/react/bridge/JsonWriter$Scope;->OBJECT:Lcom/facebook/react/bridge/JsonWriter$Scope;

    aput-object v1, v5, v2

    sget-object v1, Lcom/facebook/react/bridge/JsonWriter$Scope;->EMPTY_ARRAY:Lcom/facebook/react/bridge/JsonWriter$Scope;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/facebook/react/bridge/JsonWriter$Scope;->$VALUES:[Lcom/facebook/react/bridge/JsonWriter$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/bridge/JsonWriter$Scope;
    .locals 1

    .line 210
    const-class v0, Lcom/facebook/react/bridge/JsonWriter$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/JsonWriter$Scope;

    return-object p0
.end method

.method public static values()[Lcom/facebook/react/bridge/JsonWriter$Scope;
    .locals 1

    .line 210
    sget-object v0, Lcom/facebook/react/bridge/JsonWriter$Scope;->$VALUES:[Lcom/facebook/react/bridge/JsonWriter$Scope;

    invoke-virtual {v0}, [Lcom/facebook/react/bridge/JsonWriter$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/bridge/JsonWriter$Scope;

    return-object v0
.end method

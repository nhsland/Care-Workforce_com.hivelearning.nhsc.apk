.class Lcom/facebook/react/bridge/ReadableNativeMap$ReadableNativeMapKeySetIterator;
.super Ljava/lang/Object;
.source "ReadableNativeMap.java"

# interfaces
.implements Lcom/facebook/react/bridge/ReadableMapKeySetIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/bridge/ReadableNativeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadableNativeMapKeySetIterator"
.end annotation


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;

.field private final mMap:Lcom/facebook/react/bridge/ReadableNativeMap;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableNativeMap;)V
    .locals 0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/facebook/react/bridge/ReadableNativeMap$ReadableNativeMapKeySetIterator;->mMap:Lcom/facebook/react/bridge/ReadableNativeMap;

    .line 317
    invoke-static {p1}, Lcom/facebook/react/bridge/ReadableNativeMap$ReadableNativeMapKeySetIterator;->initHybrid(Lcom/facebook/react/bridge/ReadableNativeMap;)Lcom/facebook/jni/HybridData;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/bridge/ReadableNativeMap$ReadableNativeMapKeySetIterator;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private static native initHybrid(Lcom/facebook/react/bridge/ReadableNativeMap;)Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method public native hasNextKey()Z
.end method

.method public native nextKey()Ljava/lang/String;
.end method

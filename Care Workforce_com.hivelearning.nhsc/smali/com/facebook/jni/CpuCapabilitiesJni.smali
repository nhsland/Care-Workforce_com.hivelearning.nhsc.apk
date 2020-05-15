.class public Lcom/facebook/jni/CpuCapabilitiesJni;
.super Ljava/lang/Object;
.source "CpuCapabilitiesJni.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fb"

    .line 18
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeDeviceSupportsNeon()Z
.end method

.method public static native nativeDeviceSupportsVFPFP16()Z
.end method

.method public static native nativeDeviceSupportsX86()Z
.end method

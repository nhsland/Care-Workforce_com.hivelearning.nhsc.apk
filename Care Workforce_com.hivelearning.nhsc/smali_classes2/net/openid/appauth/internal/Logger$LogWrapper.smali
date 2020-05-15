.class public interface abstract Lnet/openid/appauth/internal/Logger$LogWrapper;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/internal/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogWrapper"
.end annotation


# virtual methods
.method public abstract getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
.end method

.method public abstract isLoggable(Ljava/lang/String;I)Z
.end method

.method public abstract println(ILjava/lang/String;Ljava/lang/String;)V
.end method

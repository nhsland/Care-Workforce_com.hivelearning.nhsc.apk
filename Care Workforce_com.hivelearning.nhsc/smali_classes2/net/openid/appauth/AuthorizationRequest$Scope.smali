.class public final Lnet/openid/appauth/AuthorizationRequest$Scope;
.super Ljava/lang/Object;
.source "AuthorizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scope"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final OFFLINE_ACCESS:Ljava/lang/String; = "offline_access"

.field public static final OPENID:Ljava/lang/String; = "openid"

.field public static final PHONE:Ljava/lang/String; = "phone"

.field public static final PROFILE:Ljava/lang/String; = "profile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

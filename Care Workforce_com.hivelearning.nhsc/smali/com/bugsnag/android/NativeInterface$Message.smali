.class public Lcom/bugsnag/android/NativeInterface$Message;
.super Ljava/lang/Object;
.source "NativeInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bugsnag/android/NativeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field public final type:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/bugsnag/android/NativeInterface$Message;->type:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 157
    iput-object p2, p0, Lcom/bugsnag/android/NativeInterface$Message;->value:Ljava/lang/Object;

    return-void
.end method

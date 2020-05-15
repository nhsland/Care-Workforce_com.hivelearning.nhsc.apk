.class public Lcom/proyecto26/inappbrowser/ChromeTabsDismissedEvent;
.super Ljava/lang/Object;
.source "ChromeTabsDismissedEvent.java"


# instance fields
.field public final message:Ljava/lang/String;

.field public final resultType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/proyecto26/inappbrowser/ChromeTabsDismissedEvent;->message:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/proyecto26/inappbrowser/ChromeTabsDismissedEvent;->resultType:Ljava/lang/String;

    return-void
.end method

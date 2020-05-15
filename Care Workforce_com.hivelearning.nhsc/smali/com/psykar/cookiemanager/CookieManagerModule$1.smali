.class Lcom/psykar/cookiemanager/CookieManagerModule$1;
.super Ljava/lang/Object;
.source "CookieManagerModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/psykar/cookiemanager/CookieManagerModule;->clearAll(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/psykar/cookiemanager/CookieManagerModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/psykar/cookiemanager/CookieManagerModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/psykar/cookiemanager/CookieManagerModule$1;->this$0:Lcom/psykar/cookiemanager/CookieManagerModule;

    iput-object p2, p0, Lcom/psykar/cookiemanager/CookieManagerModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/psykar/cookiemanager/CookieManagerModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

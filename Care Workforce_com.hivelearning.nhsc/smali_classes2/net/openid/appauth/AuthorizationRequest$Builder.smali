.class public final Lnet/openid/appauth/AuthorizationRequest$Builder;
.super Ljava/lang/Object;
.source "AuthorizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAdditionalParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClientId:Ljava/lang/String;

.field private mCodeVerifier:Ljava/lang/String;

.field private mCodeVerifierChallenge:Ljava/lang/String;

.field private mCodeVerifierChallengeMethod:Ljava/lang/String;

.field private mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

.field private mDisplay:Ljava/lang/String;

.field private mLoginHint:Ljava/lang/String;

.field private mPrompt:Ljava/lang/String;

.field private mRedirectUri:Landroid/net/Uri;

.field private mResponseMode:Ljava/lang/String;

.field private mResponseType:Ljava/lang/String;

.field private mScope:Ljava/lang/String;

.field private mState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 568
    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setAuthorizationServiceConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 569
    invoke-virtual {p0, p2}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setClientId(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 570
    invoke-virtual {p0, p3}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setResponseType(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 571
    invoke-virtual {p0, p4}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 572
    invoke-static {}, Lnet/openid/appauth/AuthorizationRequest;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setState(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 573
    invoke-static {}, Lnet/openid/appauth/CodeVerifierUtil;->generateRandomCodeVerifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setCodeVerifier(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    return-void
.end method


# virtual methods
.method public build()Lnet/openid/appauth/AuthorizationRequest;
    .locals 18

    move-object/from16 v0, p0

    .line 870
    new-instance v17, Lnet/openid/appauth/AuthorizationRequest;

    iget-object v2, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v3, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClientId:Ljava/lang/String;

    iget-object v4, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/String;

    iget-object v5, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mRedirectUri:Landroid/net/Uri;

    iget-object v6, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mDisplay:Ljava/lang/String;

    iget-object v7, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mLoginHint:Ljava/lang/String;

    iget-object v8, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    iget-object v9, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mScope:Ljava/lang/String;

    iget-object v10, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mState:Ljava/lang/String;

    iget-object v11, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    iget-object v12, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallenge:Ljava/lang/String;

    iget-object v13, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallengeMethod:Ljava/lang/String;

    iget-object v14, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseMode:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    iget-object v15, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    invoke-direct {v1, v15}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 884
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lnet/openid/appauth/AuthorizationRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/AuthorizationRequest$1;)V

    return-object v17
.end method

.method public setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/AuthorizationRequest$Builder;"
        }
    .end annotation

    .line 854
    invoke-static {}, Lnet/openid/appauth/AuthorizationRequest;->access$100()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    return-object p0
.end method

.method public setAuthorizationServiceConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1

    const-string v0, "configuration cannot be null"

    .line 581
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1

    const-string v0, "client ID cannot be null or empty"

    .line 596
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public setCodeVerifier(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 779
    invoke-static {p1}, Lnet/openid/appauth/CodeVerifierUtil;->checkCodeVerifier(Ljava/lang/String;)V

    .line 780
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    .line 781
    invoke-static {p1}, Lnet/openid/appauth/CodeVerifierUtil;->deriveCodeVerifierChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallenge:Ljava/lang/String;

    .line 782
    invoke-static {}, Lnet/openid/appauth/CodeVerifierUtil;->getCodeVerifierChallengeMethod()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallengeMethod:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 784
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    .line 785
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallenge:Ljava/lang/String;

    .line 786
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallengeMethod:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public setCodeVerifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 4

    if-eqz p1, :cond_0

    .line 809
    invoke-static {p1}, Lnet/openid/appauth/CodeVerifierUtil;->checkCodeVerifier(Ljava/lang/String;)V

    const-string v0, "code verifier challenge cannot be null or empty if verifier is set"

    .line 810
    invoke-static {p2, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "code verifier challenge method cannot be null or empty if verifier is set"

    .line 812
    invoke-static {p3, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "code verifier challenge must be null if verifier is null"

    .line 816
    invoke-static {v2, v3}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string v1, "code verifier challenge method must be null if verifier is null"

    .line 818
    invoke-static {v0, v1}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 822
    :goto_2
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    .line 823
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallenge:Ljava/lang/String;

    .line 824
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallengeMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplay(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1

    const-string v0, "display must be null or not empty"

    .line 608
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mDisplay:Ljava/lang/String;

    return-object p0
.end method

.method public setLoginHint(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1

    const-string v0, "login hint must be null or not empty"

    .line 619
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mLoginHint:Ljava/lang/String;

    return-object p0
.end method

.method public setPrompt(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1

    const-string v0, "prompt must be null or non-empty"

    .line 634
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    return-object p0
.end method

.method public setPromptValues(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/AuthorizationRequest$Builder;"
        }
    .end annotation

    .line 668
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setPromptValues([Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 650
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    return-object p0

    .line 654
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setPromptValues(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1

    const-string v0, "redirect URI cannot be null or empty"

    .line 695
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mRedirectUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setResponseMode(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1

    const-string v0, "responseMode must not be empty"

    .line 840
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 841
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseMode:Ljava/lang/String;

    return-object p0
.end method

.method public setResponseType(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1

    const-string v0, "expected response type cannot be null or empty"

    .line 682
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/String;

    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1

    .line 708
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 709
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mScope:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, " +"

    .line 711
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setScopes([Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    :goto_0
    return-object p0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/AuthorizationRequest$Builder;"
        }
    .end annotation

    .line 743
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 729
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1

    const-string v0, "state cannot be empty if defined"

    .line 762
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mState:Ljava/lang/String;

    return-object p0
.end method

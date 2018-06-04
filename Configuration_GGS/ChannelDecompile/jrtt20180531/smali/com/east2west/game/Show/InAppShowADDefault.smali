.class public Lcom/east2west/game/Show/InAppShowADDefault;
.super Lcom/east2west/game/inApp/InAppBase;
.source "InAppShowADDefault.java"


# static fields
.field public static appShow:Ljava/lang/String;


# instance fields
.field private mTTAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "InAppShowADDefault"

    sput-object v0, Lcom/east2west/game/Show/InAppShowADDefault;->appShow:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/east2west/game/inApp/InAppBase;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/east2west/game/Show/InAppShowADDefault;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/east2west/game/Show/InAppShowADDefault;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/east2west/game/Show/InAppShowADDefault;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-void
.end method

.method static synthetic access$2(Lcom/east2west/game/Show/InAppShowADDefault;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-object v0
.end method

.method static synthetic access$3(Lcom/east2west/game/Show/InAppShowADDefault;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/east2west/game/Show/InAppShowADDefault;->loadAd(Ljava/lang/String;I)V

    return-void
.end method

.method private loadAd(Ljava/lang/String;I)V
    .locals 4
    .param p1, "codeId"    # Ljava/lang/String;
    .param p2, "orientation"    # I

    .prologue
    .line 95
    new-instance v1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 96
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 97
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 98
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 99
    const/16 v2, 0x438

    const/16 v3, 0x780

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 100
    const-string v2, "\u91d1\u5e01"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 101
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 102
    const-string v2, "user123"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 103
    const-string v2, "media_extra"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 106
    .local v0, "adSlot":Lcom/bytedance/sdk/openadsdk/AdSlot;
    iget-object v1, p0, Lcom/east2west/game/Show/InAppShowADDefault;->mTTAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    new-instance v2, Lcom/east2west/game/Show/InAppShowADDefault$1;

    invoke-direct {v2, p0}, Lcom/east2west/game/Show/InAppShowADDefault$1;-><init>(Lcom/east2west/game/Show/InAppShowADDefault;)V

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 187
    return-void
.end method


# virtual methods
.method public ApplicationInit(Landroid/app/Application;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InAppShow"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/Show/InAppShowADDefault;->appShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]->ApplicationInit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/east2west/game/inApp/InAppBase;->attachBaseContext(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/east2west/game/inApp/APPBaseInterface;)V
    .locals 8
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "context"    # Landroid/app/Activity;
    .param p3, "strAppId"    # Ljava/lang/String;
    .param p4, "strAppKey"    # Ljava/lang/String;
    .param p5, "appcall"    # Lcom/east2west/game/inApp/APPBaseInterface;

    .prologue
    const/4 v7, 0x2

    .line 33
    sget-object v5, Lcom/east2west/game/Show/InAppShowADDefault;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-super/range {v0 .. v5}, Lcom/east2west/game/inApp/InAppBase;->init(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/east2west/game/inApp/APPBaseInterface;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InAppShow"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/Show/InAppShowADDefault;->appShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/east2west/game/util/TTAdManagerHolder;->getInstance(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v6

    .line 37
    .local v6, "ttAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/east2west/game/util/TTAdManagerHolder;->getInstance(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/east2west/game/Show/InAppShowADDefault;->mContext:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->requestPermissionIfNecessary(Landroid/content/Context;)V

    .line 38
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault;->mContext:Landroid/app/Activity;

    invoke-interface {v6, v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v0

    iput-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault;->mTTAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 39
    sget-object v0, Lcom/east2west/game/QinConst;->ADParamList:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-direct {p0, v0, v7}, Lcom/east2west/game/Show/InAppShowADDefault;->loadAd(Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public show_banner()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InAppShow"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/Show/InAppShowADDefault;->appShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] show_banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public show_insert()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InAppShow"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/Show/InAppShowADDefault;->appShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] show_insert"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public show_out()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InAppShow"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/Show/InAppShowADDefault;->appShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] show_out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public show_push()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InAppShow"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/Show/InAppShowADDefault;->appShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] show_push"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public show_video()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InAppShow"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/Show/InAppShowADDefault;->appShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] show_video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    iget-object v1, p0, Lcom/east2west/game/Show/InAppShowADDefault;->mContext:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault;->mContext:Landroid/app/Activity;

    const-string v1, "\u8bf7\u5148\u52a0\u8f7d\u5e7f\u544a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    sget-object v0, Lcom/east2west/game/QinConst;->ADParamList:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-direct {p0, v0, v3}, Lcom/east2west/game/Show/InAppShowADDefault;->loadAd(Ljava/lang/String;I)V

    goto :goto_0
.end method

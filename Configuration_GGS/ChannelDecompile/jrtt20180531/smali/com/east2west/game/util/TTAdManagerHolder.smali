.class public Lcom/east2west/game/util/TTAdManagerHolder;
.super Ljava/lang/Object;
.source "TTAdManagerHolder.java"


# static fields
.field private static sInit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doInit(Lcom/bytedance/sdk/openadsdk/TTAdManager;Landroid/content/Context;)V
    .locals 3
    .param p0, "ttAdManager"    # Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 32
    sget-object v0, Lcom/east2west/game/QinConst;->ADParamList:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setAppId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/east2west/game/QinConst;->APPChineseName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setTitleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 34
    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setAllowShowNotifiFromSDK(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 35
    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setAllowLandingPageShowWhenScreenLock(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->openDebugMode()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/east2west/game/util/AppDownloadStatusListener;

    invoke-direct {v1, p1}, Lcom/east2west/game/util/AppDownloadStatusListener;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setGlobalAppDownloadListener(Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 38
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setDirectDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 39
    return-void

    .line 37
    :array_0
    .array-data 4
        0x4
        0x3
    .end array-data
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/TTAdManagerFactory;->getInstance(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 20
    .local v0, "ttAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    sget-boolean v1, Lcom/east2west/game/util/TTAdManagerHolder;->sInit:Z

    if-nez v1, :cond_1

    .line 21
    const-class v2, Lcom/east2west/game/util/TTAdManagerHolder;

    monitor-enter v2

    .line 22
    :try_start_0
    sget-boolean v1, Lcom/east2west/game/util/TTAdManagerHolder;->sInit:Z

    if-nez v1, :cond_0

    .line 23
    invoke-static {v0, p0}, Lcom/east2west/game/util/TTAdManagerHolder;->doInit(Lcom/bytedance/sdk/openadsdk/TTAdManager;Landroid/content/Context;)V

    .line 24
    const/4 v1, 0x1

    sput-boolean v1, Lcom/east2west/game/util/TTAdManagerHolder;->sInit:Z

    .line 21
    :cond_0
    monitor-exit v2

    .line 28
    :cond_1
    return-object v0

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

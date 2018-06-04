.class public Lcom/east2west/game/util/AppDownloadService;
.super Landroid/app/Service;
.source "AppDownloadService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 13
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 31
    :cond_0
    const-string v5, "action"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 32
    .local v0, "action":I
    const-string v5, "id"

    const-wide/16 v6, -0x1

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 33
    .local v2, "id":J
    const-string v5, "internalStatusKey"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 34
    .local v4, "internalStatusKey":I
    invoke-virtual {p0}, Lcom/east2west/game/util/AppDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/util/TTAdManagerHolder;->getInstance(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v5

    .line 35
    invoke-virtual {p0}, Lcom/east2west/game/util/AppDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getGlobalAppDownloadController(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;

    move-result-object v1

    .line 37
    .local v1, "controller":Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 51
    :pswitch_0
    invoke-direct {p0, v2, v3}, Lcom/east2west/game/util/AppDownloadService;->hideNotification(J)V

    goto :goto_0

    .line 40
    :pswitch_1
    invoke-interface {v1, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;->changeDownloadStatus(IJ)V

    goto :goto_0

    .line 43
    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/east2west/game/util/AppDownloadService;->hideNotification(J)V

    .line 44
    invoke-interface {v1, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;->changeDownloadStatus(IJ)V

    goto :goto_0

    .line 47
    :pswitch_3
    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;->removeDownloadTask(J)V

    .line 48
    invoke-direct {p0, v2, v3}, Lcom/east2west/game/util/AppDownloadService;->hideNotification(J)V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hideNotification(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 59
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/east2west/game/util/AppDownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 60
    .local v0, "cancelNotificationManager":Landroid/app/NotificationManager;
    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/east2west/game/util/AppDownloadService;->handleIntent(Landroid/content/Intent;)V

    .line 24
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

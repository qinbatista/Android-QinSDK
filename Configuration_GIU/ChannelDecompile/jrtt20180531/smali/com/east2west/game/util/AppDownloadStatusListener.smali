.class public Lcom/east2west/game/util/AppDownloadStatusListener;
.super Ljava/lang/Object;
.source "AppDownloadStatusListener.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;


# static fields
.field public static final DOWNLOAD_STATUS_ACTIVE:I = 0x1

.field public static final DOWNLOAD_STATUS_DELETE:I = 0x4

.field public static final DOWNLOAD_STATUS_FAILED:I = 0x5

.field public static final DOWNLOAD_STATUS_FINISH:I = 0x3

.field public static final DOWNLOAD_STATUS_WATING:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/east2west/game/util/AppDownloadStatusListener;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private getDownloadPercent(Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;)I
    .locals 8
    .param p1, "info"    # Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;

    .prologue
    .line 68
    if-nez p1, :cond_1

    .line 69
    const/4 v1, 0x0

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    const-wide/16 v2, 0x0

    .line 73
    .local v2, "percentD":D
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->getCurrBytes()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->getTotalBytes()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    long-to-double v6, v6

    div-double v2, v4, v6

    .line 77
    :goto_1
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v2

    double-to-int v1, v4

    .line 78
    .local v1, "percent":I
    if-gez v1, :cond_0

    .line 79
    const/4 v1, 0x0

    goto :goto_0

    .line 74
    .end local v1    # "percent":I
    :catch_0
    move-exception v0

    .line 75
    .local v0, "exp":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateNotification(ILcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "info"    # Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;

    .prologue
    .line 178
    return-void
.end method


# virtual methods
.method public onDownloadActive(Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;

    .prologue
    .line 39
    const-string v0, "TTGlobalDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u4e2d----"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/east2west/game/util/AppDownloadStatusListener;->getDownloadPercent(Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public onDownloadFailed(Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;

    .prologue
    .line 65
    return-void
.end method

.method public onDownloadFinished(Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;

    .prologue
    .line 53
    const-string v0, "TTGlobalDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210----"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/east2west/game/util/AppDownloadStatusListener;->getDownloadPercent(Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public onDownloadPaused(Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;

    .prologue
    .line 45
    const-string v0, "TTGlobalDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6682\u505c----"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/east2west/game/util/AppDownloadStatusListener;->getDownloadPercent(Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "status"    # I

    .prologue
    .line 59
    const-string v0, "TTGlobalDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5b89\u88c5\u5b8c\u6210----pkgName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

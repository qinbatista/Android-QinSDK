.class Lcom/east2west/game/Show/InAppShowADDefault$1$2;
.super Ljava/lang/Object;
.source "InAppShowADDefault.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/Show/InAppShowADDefault$1;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/east2west/game/Show/InAppShowADDefault$1;


# direct methods
.method constructor <init>(Lcom/east2west/game/Show/InAppShowADDefault$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/east2west/game/Show/InAppShowADDefault$1$2;->this$1:Lcom/east2west/game/Show/InAppShowADDefault$1;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "totalBytes"    # J
    .param p3, "currBytes"    # J
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "appName"    # Ljava/lang/String;

    .prologue
    .line 163
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "totalBytes"    # J
    .param p3, "currBytes"    # J
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "appName"    # Ljava/lang/String;

    .prologue
    .line 173
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "totalBytes"    # J
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "appName"    # Ljava/lang/String;

    .prologue
    .line 178
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "totalBytes"    # J
    .param p3, "currBytes"    # J
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "appName"    # Ljava/lang/String;

    .prologue
    .line 168
    return-void
.end method

.method public onIdle()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 183
    return-void
.end method

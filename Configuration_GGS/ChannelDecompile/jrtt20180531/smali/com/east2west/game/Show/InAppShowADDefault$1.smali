.class Lcom/east2west/game/Show/InAppShowADDefault$1;
.super Ljava/lang/Object;
.source "InAppShowADDefault.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/Show/InAppShowADDefault;->loadAd(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/east2west/game/Show/InAppShowADDefault;


# direct methods
.method constructor <init>(Lcom/east2west/game/Show/InAppShowADDefault;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/east2west/game/Show/InAppShowADDefault$1;->this$0:Lcom/east2west/game/Show/InAppShowADDefault;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/east2west/game/Show/InAppShowADDefault$1;)Lcom/east2west/game/Show/InAppShowADDefault;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault$1;->this$0:Lcom/east2west/game/Show/InAppShowADDefault;

    return-object v0
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault$1;->this$0:Lcom/east2west/game/Show/InAppShowADDefault;

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault;->access$0(Lcom/east2west/game/Show/InAppShowADDefault;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    return-void
.end method

.method public onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 3
    .param p1, "ad"    # Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault$1;->this$0:Lcom/east2west/game/Show/InAppShowADDefault;

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault;->access$0(Lcom/east2west/game/Show/InAppShowADDefault;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "rewardVideoAd loaded"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault$1;->this$0:Lcom/east2west/game/Show/InAppShowADDefault;

    invoke-static {v0, p1}, Lcom/east2west/game/Show/InAppShowADDefault;->access$1(Lcom/east2west/game/Show/InAppShowADDefault;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V

    .line 124
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault$1;->this$0:Lcom/east2west/game/Show/InAppShowADDefault;

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault;->access$2(Lcom/east2west/game/Show/InAppShowADDefault;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v0

    new-instance v1, Lcom/east2west/game/Show/InAppShowADDefault$1$1;

    invoke-direct {v1, p0}, Lcom/east2west/game/Show/InAppShowADDefault$1$1;-><init>(Lcom/east2west/game/Show/InAppShowADDefault$1;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 154
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault$1;->this$0:Lcom/east2west/game/Show/InAppShowADDefault;

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault;->access$2(Lcom/east2west/game/Show/InAppShowADDefault;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v0

    new-instance v1, Lcom/east2west/game/Show/InAppShowADDefault$1$2;

    invoke-direct {v1, p0}, Lcom/east2west/game/Show/InAppShowADDefault$1$2;-><init>(Lcom/east2west/game/Show/InAppShowADDefault$1;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 185
    return-void
.end method

.method public onRewardVideoCached()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault$1;->this$0:Lcom/east2west/game/Show/InAppShowADDefault;

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault;->access$0(Lcom/east2west/game/Show/InAppShowADDefault;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "rewardVideoAd video cached"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    return-void
.end method

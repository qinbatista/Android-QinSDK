.class Lcom/east2west/game/Show/InAppShowADDefault$1$1;
.super Ljava/lang/Object;
.source "InAppShowADDefault.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


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
    iput-object p1, p0, Lcom/east2west/game/Show/InAppShowADDefault$1$1;->this$1:Lcom/east2west/game/Show/InAppShowADDefault$1;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault$1$1;->this$1:Lcom/east2west/game/Show/InAppShowADDefault$1;

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault$1;->access$0(Lcom/east2west/game/Show/InAppShowADDefault$1;)Lcom/east2west/game/Show/InAppShowADDefault;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault;->access$0(Lcom/east2west/game/Show/InAppShowADDefault;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "rewardVideoAd close"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 139
    return-void
.end method

.method public onAdShow()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault$1$1;->this$1:Lcom/east2west/game/Show/InAppShowADDefault$1;

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault$1;->access$0(Lcom/east2west/game/Show/InAppShowADDefault$1;)Lcom/east2west/game/Show/InAppShowADDefault;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault;->access$0(Lcom/east2west/game/Show/InAppShowADDefault;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "rewardVideoAd show"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault$1$1;->this$1:Lcom/east2west/game/Show/InAppShowADDefault$1;

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault$1;->access$0(Lcom/east2west/game/Show/InAppShowADDefault$1;)Lcom/east2west/game/Show/InAppShowADDefault;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault;->access$0(Lcom/east2west/game/Show/InAppShowADDefault;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "rewardVideoAd bar click"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 134
    return-void
.end method

.method public onRewardVerify(ZILjava/lang/String;)V
    .locals 3
    .param p1, "rewardVerify"    # Z
    .param p2, "rewardAmount"    # I
    .param p3, "rewardName"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault$1$1;->this$1:Lcom/east2west/game/Show/InAppShowADDefault$1;

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault$1;->access$0(Lcom/east2west/game/Show/InAppShowADDefault$1;)Lcom/east2west/game/Show/InAppShowADDefault;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault;->access$0(Lcom/east2west/game/Show/InAppShowADDefault;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "verify:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " amount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string v2, " name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    const/4 v2, 0x0

    .line 149
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    return-void
.end method

.method public onVideoComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 143
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault$1$1;->this$1:Lcom/east2west/game/Show/InAppShowADDefault$1;

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault$1;->access$0(Lcom/east2west/game/Show/InAppShowADDefault$1;)Lcom/east2west/game/Show/InAppShowADDefault;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault;->access$0(Lcom/east2west/game/Show/InAppShowADDefault;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "rewardVideoAd complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    iget-object v0, p0, Lcom/east2west/game/Show/InAppShowADDefault$1$1;->this$1:Lcom/east2west/game/Show/InAppShowADDefault$1;

    invoke-static {v0}, Lcom/east2west/game/Show/InAppShowADDefault$1;->access$0(Lcom/east2west/game/Show/InAppShowADDefault$1;)Lcom/east2west/game/Show/InAppShowADDefault;

    move-result-object v0

    sget-object v1, Lcom/east2west/game/QinConst;->ADParamList:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1, v3}, Lcom/east2west/game/Show/InAppShowADDefault;->access$3(Lcom/east2west/game/Show/InAppShowADDefault;Ljava/lang/String;I)V

    .line 145
    return-void
.end method

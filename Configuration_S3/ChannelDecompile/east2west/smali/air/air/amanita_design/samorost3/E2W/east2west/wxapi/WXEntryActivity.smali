.class public Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# static fields
.field private static final APP_ID:Ljava/lang/String; = "wxc09894676cfb0f15"


# instance fields
.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private goToShowMsg(Lcom/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req;)V
    .locals 0
    .param p1, "showReq"    # Lcom/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req;

    .prologue
    .line 135
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const-string v0, "wxc09894676cfb0f15"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 37
    iget-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v1, "wxc09894676cfb0f15"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 38
    iget-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 39
    const-string v0, "Max"

    const-string v1, "[WXPayEntryActivity] onCreate->wxd6edc8afdfbf2bc2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0, p1}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 48
    iget-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 49
    const-string v0, "IAP"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 2
    .param p1, "req"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 54
    const-string v0, "IAP"

    const-string v1, "onReq2->com.east2west.game.wxapi\ufffd\ufffd\ufffd\u0373\u0279\ufffd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    const-string v0, "IAP"

    const-string v1, "onReq2->com.east2west.game.wxapi\ufffd\ufffd\ufffd\u0373\u0279\ufffd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 57
    :pswitch_0
    const-string v0, "IAP"

    const-string v1, "onReq1->com.east2west.game.wxapi\ufffd\ufffd\ufffd\u0373\u0279\ufffd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :pswitch_1
    const-string v0, "IAP"

    const-string v1, "onReq2->com.east2west.game.wxapi\ufffd\ufffd\ufffd\u0373\u0279\ufffd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 5
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    const/4 v4, 0x1

    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "result":I
    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    packed-switch v1, :pswitch_data_0

    .line 97
    :pswitch_0
    const/4 v0, 0x4

    .line 98
    const-string v1, "DontDestroy_Qin"

    const-string v2, "ShareResult"

    const-string v3, "3"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "\ufffd\ufffd\ufffd\ufffd\u02a7\ufffd\ufffd"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 101
    invoke-virtual {p0}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->finish()V

    .line 106
    :goto_0
    return-void

    .line 77
    :pswitch_1
    const/4 v0, 0x1

    .line 79
    const-string v1, "\ufffd\ufffd\ufffd\ufffd\u0279\ufffd"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 80
    const-string v1, "DontDestroy_Qin"

    const-string v2, "ShareResult"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 84
    :pswitch_2
    const-string v1, "DontDestroy_Qin"

    const-string v2, "ShareResult"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "\ufffd\ufffd\ufffd\ufffd\u0221\ufffd\ufffd"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 87
    invoke-virtual {p0}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 90
    :pswitch_3
    const/4 v0, 0x3

    .line 91
    const-string v1, "DontDestroy_Qin"

    const-string v2, "ShareResult"

    const-string v3, "2"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "\ufffd\ufffd\ufffd\ufffd\u073e\ufffd"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 94
    invoke-virtual {p0}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

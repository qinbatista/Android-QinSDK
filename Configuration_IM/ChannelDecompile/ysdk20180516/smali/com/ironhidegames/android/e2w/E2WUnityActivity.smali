.class public Lcom/ironhidegames/android/e2w/E2WUnityActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "E2WUnityActivity.java"

# interfaces
.implements Lcom/east2west/game/inApp/APPBaseInterface;


# static fields
.field private static LogTag:Ljava/lang/String;

.field private static mContext:Lcom/ironhidegames/android/e2w/E2WUnityActivity;


# instance fields
.field protected _e2wApp:Lcom/east2west/game/E2WApp;

.field private callBackObjectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->mContext:Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    .line 16
    const-string v0, "E2WUnityActivity"

    sput-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    .line 17
    const-string v0, "~E2WUnityController"

    iput-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    .line 12
    return-void
.end method

.method static synthetic access$0()Lcom/ironhidegames/android/e2w/E2WUnityActivity;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->mContext:Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 186
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getInstance="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->mContext:Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->mContext:Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    return-object v0
.end method


# virtual methods
.method public Exchange()V
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ironhidegames/android/e2w/E2WUnityActivity$3;

    invoke-direct {v1, p0}, Lcom/ironhidegames/android/e2w/E2WUnityActivity$3;-><init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method public ExitGame()V
    .locals 2

    .prologue
    .line 243
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ironhidegames/android/e2w/E2WUnityActivity$4;

    invoke-direct {v1, p0}, Lcom/ironhidegames/android/e2w/E2WUnityActivity$4;-><init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method

.method public GetE2WApp()Lcom/east2west/game/E2WApp;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    return-object v0
.end method

.method public GetIAPs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    iget-object v1, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v1}, Lcom/east2west/game/E2WApp;->GetIAPs()[Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "myiap":[Ljava/lang/String;
    return-object v0
.end method

.method public GetRatingURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->GetRatingURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetRemoteValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0, p1}, Lcom/east2west/game/E2WApp;->GetRemoteValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetRemoteValuesWithPrefix(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0, p1}, Lcom/east2west/game/E2WApp;->GetRemoteValuesWithPrefix(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IsRatingAvailable()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->IsRatingAvailable()Z

    move-result v0

    return v0
.end method

.method public IsTencentChannel()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->IsTencentChannel()Z

    move-result v0

    return v0
.end method

.method public IsVideoAdAvailable()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->IsVideoAdAvailable()Z

    move-result v0

    return v0
.end method

.method public Login(I)V
    .locals 2
    .param p1, "kind"    # I

    .prologue
    .line 261
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ironhidegames/android/e2w/E2WUnityActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/ironhidegames/android/e2w/E2WUnityActivity$5;-><init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public Logout()V
    .locals 2

    .prologue
    .line 293
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ironhidegames/android/e2w/E2WUnityActivity$7;

    invoke-direct {v1, p0}, Lcom/ironhidegames/android/e2w/E2WUnityActivity$7;-><init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 306
    return-void
.end method

.method public PurchaseProduct(Ljava/lang/String;)V
    .locals 2
    .param p1, "strProductId"    # Ljava/lang/String;

    .prologue
    .line 192
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/ironhidegames/android/e2w/E2WUnityActivity$1;-><init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public ShowVideoAd()V
    .locals 2

    .prologue
    .line 209
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ironhidegames/android/e2w/E2WUnityActivity$2;

    invoke-direct {v1, p0}, Lcom/ironhidegames/android/e2w/E2WUnityActivity$2;-><init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method public login(I)V
    .locals 2
    .param p1, "kind"    # I

    .prologue
    .line 277
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ironhidegames/android/e2w/E2WUnityActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/ironhidegames/android/e2w/E2WUnityActivity$6;-><init>(Lcom/ironhidegames/android/e2w/E2WUnityActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 46
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    const-string v1, "onActivityResult(int requestCode, int resultCode, Intent data) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/east2west/game/E2WApp;->onActivityResult(IILandroid/content/Intent;)V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sput-object p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->mContext:Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    .line 31
    new-instance v0, Lcom/east2west/game/E2WApp;

    invoke-direct {v0}, Lcom/east2west/game/E2WApp;-><init>()V

    iput-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    .line 32
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0, p0}, Lcom/east2west/game/E2WApp;->InitE2WSDK(Landroid/content/Context;)V

    .line 35
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1 -> InitE2WSDK -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    sget-object v1, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->mContext:Lcom/ironhidegames/android/e2w/E2WUnityActivity;

    invoke-virtual {v0, v1}, Lcom/east2west/game/E2WApp;->InitE2WSDK(Landroid/content/Context;)V

    .line 37
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2 -> InitCarriers -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0, p0}, Lcom/east2west/game/E2WApp;->InitCarriers(Lcom/east2west/game/inApp/APPBaseInterface;)V

    .line 39
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "3 -> InitChannel -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0, p0}, Lcom/east2west/game/E2WApp;->InitChannel(Lcom/east2west/game/inApp/APPBaseInterface;)V

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy()V

    .line 100
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onDestroy()V

    .line 103
    :cond_0
    return-void
.end method

.method public onFunctionCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFunctionCallBack arg0="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    const-string v1, "OnFunction"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public onLoadFailedCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadFailedCallBack arg0="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    const-string v1, "OnLoadFailed"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onLoadSuccessfulCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 143
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadSuccessfulCallBack s="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    const-string v1, "OnLoadSuccessful"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public onLoginCancelCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoginCancelCallBack s="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",callBackObjectName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    const-string v1, "OnLoginCancel"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onLoginFailedCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 131
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoginFailedCallBack s="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",callBackObjectName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    const-string v1, "OnLoginFailed"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onLoginSuccessCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 125
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoginSuccessCallBack s="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",callBackObjectName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    const-string v1, "OnLoginSuccess"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 53
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0, p1}, Lcom/east2west/game/E2WApp;->onNewIntent(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public onOnVideoCompletedCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 167
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onOnVideoCompletedCallBack arg0="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    const-string v1, "OnVideoCompleted"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public onOnVideoFailedCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 173
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onOnVideoFailedCallBack arg0="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    const-string v1, "OnVideoFailed"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    .line 68
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onPause()V

    .line 71
    :cond_0
    return-void
.end method

.method public onPurchaseCancelCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "strProductId"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPurchaseCancelCallBack strProductId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    const-string v1, "OnPurchaseCancel"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onPurchaseFailedCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "strProductId"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPurchaseFailedCallBack strProductId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    const-string v1, "OnPurchaseFailed"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onPurchaseSuccessCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "strProductId"    # Ljava/lang/String;

    .prologue
    .line 107
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPurchaseSuccessCallBack strProductId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    const-string v1, "OnPurchaseSuccess"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onRestart()V

    .line 84
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    const-string v1, "onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onRestart()V

    .line 87
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    .line 92
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onResume()V

    .line 95
    :cond_0
    return-void
.end method

.method public onSaveFailedCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSaveFailedCallBack arg0="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    const-string v1, "OnSaveFailed"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onSaveSuccessfulCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSaveSuccessfulCallBack arg0="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->callBackObjectName:Ljava/lang/String;

    const-string v1, "OnSaveSuccessful"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStart()V

    .line 60
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onStart()V

    .line 63
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStop()V

    .line 76
    sget-object v0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->LogTag:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/ironhidegames/android/e2w/E2WUnityActivity;->_e2wApp:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onStop()V

    .line 79
    :cond_0
    return-void
.end method

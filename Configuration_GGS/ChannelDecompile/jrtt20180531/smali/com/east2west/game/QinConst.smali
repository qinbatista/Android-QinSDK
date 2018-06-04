.class public Lcom/east2west/game/QinConst;
.super Ljava/lang/Object;
.source "QinConst.java"


# static fields
.field public static ADParamList:[Ljava/lang/String;

.field public static APPChineseName:Ljava/lang/String;

.field public static DataFileName:Ljava/lang/String;

.field public static GameId:Ljava/lang/String;

.field public static LogVERSION:Ljava/lang/String;

.field public static Restoreappid:Ljava/lang/String;

.field public static ServerLocation:Ljava/lang/String;

.field public static accesstoken:Ljava/lang/String;

.field public static adtest:Ljava/lang/String;

.field public static appid:Ljava/lang/String;

.field public static exchangeID:Ljava/lang/String;

.field public static exchangeKEY:Ljava/lang/String;

.field public static key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "1.1"

    sput-object v0, Lcom/east2west/game/QinConst;->LogVERSION:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/east2west/game/QinConst;->ADParamList:[Ljava/lang/String;

    .line 12
    const-string v0, "123456"

    sput-object v0, Lcom/east2west/game/QinConst;->adtest:Ljava/lang/String;

    .line 14
    const-string v0, "\u4e00\u8d77\u73a9\u9676\u827a"

    sput-object v0, Lcom/east2west/game/QinConst;->APPChineseName:Ljava/lang/String;

    .line 15
    const-string v0, "1201"

    sput-object v0, Lcom/east2west/game/QinConst;->exchangeID:Ljava/lang/String;

    .line 16
    const-string v0, "4dcb6ba1fd3139623c0d3554e4fae8ac"

    sput-object v0, Lcom/east2west/game/QinConst;->exchangeKEY:Ljava/lang/String;

    .line 17
    const-string v0, "letscreatepottery"

    sput-object v0, Lcom/east2west/game/QinConst;->appid:Ljava/lang/String;

    .line 18
    const-string v0, "9d4d765b489220b2b32b7f0db4762493"

    sput-object v0, Lcom/east2west/game/QinConst;->accesstoken:Ljava/lang/String;

    .line 19
    const-string v0, "letscreatepottery"

    sput-object v0, Lcom/east2west/game/QinConst;->Restoreappid:Ljava/lang/String;

    .line 20
    const-string v0, "machinarium_save.bin"

    sput-object v0, Lcom/east2west/game/QinConst;->DataFileName:Ljava/lang/String;

    .line 21
    const-string v0, "e2w25e3847c9ed078e1"

    sput-object v0, Lcom/east2west/game/QinConst;->GameId:Ljava/lang/String;

    .line 22
    const-string v0, "101.201.101.114:9000"

    sput-object v0, Lcom/east2west/game/QinConst;->ServerLocation:Ljava/lang/String;

    .line 23
    const-string v0, "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBALnMsImln+S8fxJtf7NDqQhh8EA318buO6ScnyzNbaBkVmu4oL97ggRrgmI7z1YKYkPNs6ymufqjHDAAqqyMm+KgNYodKsr+LtWOxwHVYEI7rdZL6ioNoOyv396pGQjoyXDB6FfP+dGXGN/WMSyJrcXn2tdY025S+dBbQaMTnqhvAgMBAAECgYEAiaTJN//aF1NJdDZofz5lsA8WNAzqrrX4u3dIOKGrUEJk/4KUm6Z86JdYzTtv21bv+zkdnY8agkJp9GnaBuBX7mVEg3tHqzZrOCq5nVX9OHJoMytGwLxlHvejBZPVS1PmkfFnEYRAkBcti5nmsY+fCV5/lxVScrYGdzfrf1vio1ECQQDpxHmicfwYCTb0ZcUIKU0CQvfD9Te/94TIxr82EKcq/pPfoU3vQY+Ks7LI41Zc2kRYhT1dXezzKf/r2FjAMid3AkEAy3hXmEUZYdg+SPVURzrQt6PGjvLv/5Uxe75t8Ovx2JxHRgCD5j7IArzDg7ACMNn50xMHfQUD4QVdEG2vtvK0yQJBAJp/wiw8zXJNVMa+JDS6pyzhecNHZGs5eccApAtlgjaGPtFEWK/SUr5G+diPd9qyXw1qMh5tH1eu4HfNawrLmw0CQBRZ3hEJ4EcMFPbBKwPQ2y1zARotLFoY9xEUc/Sj9NWgk/Rpesfdwa2cacXTJfTy6Gz3O0mC5eds3OkWv3uB/RkCQQCEkR2M+vdStNq08KV7g+bOZKXElvnYjpUHMdVkO+oeXHPhLf9ltlpBOynA7WA60Jdg0OJa14ngZcu2loawd+q2"

    sput-object v0, Lcom/east2west/game/QinConst;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ADParamSplit(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "IDString"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v2, 0x0

    .line 43
    .local v2, "strArray":[Ljava/lang/String;
    :try_start_0
    const-string v4, ","

    invoke-static {p0, v4}, Lcom/east2west/game/QinConst;->convertStrToArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 44
    array-length v4, v2

    new-array v3, v4, [Ljava/lang/String;

    .line 45
    .local v3, "strArrayReturn":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_0

    .line 55
    .end local v1    # "i":I
    .end local v3    # "strArrayReturn":[Ljava/lang/String;
    :goto_1
    return-object v3

    .line 47
    .restart local v1    # "i":I
    .restart local v3    # "strArrayReturn":[Ljava/lang/String;
    :cond_0
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "i":I
    .end local v3    # "strArrayReturn":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "E":Ljava/lang/Exception;
    move-object v3, v2

    .line 55
    goto :goto_1
.end method

.method public static ADValue()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "jrtt,5001616,901616301"

    invoke-static {v0}, Lcom/east2west/game/QinConst;->ADParamSplit(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/east2west/game/QinConst;->ADParamList:[Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static convertStrToArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "strArray":[Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 66
    return-object v0
.end method


# virtual methods
.method public ExitGame()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 34
    return-void
.end method

.method public FunctionL(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 28
    sput-object p1, Lcom/east2west/game/E2WApp;->isLogOpen:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public QinUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ObjectName"    # Ljava/lang/String;
    .param p2, "MethodName"    # Ljava/lang/String;
    .param p3, "QinMessage"    # Ljava/lang/String;

    .prologue
    .line 98
    return-void
.end method

.method public ShareResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 102
    return-void
.end method

.method public onFunctionCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V
    .locals 2
    .param p1, "strError"    # Ljava/lang/String;
    .param p2, "inbase"    # Lcom/east2west/game/inApp/InAppBase;

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QinConst] onFunctionCallBack callback->strError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inbase->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {v0, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onFunctionCallBack(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onLoginCancel(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V
    .locals 2
    .param p1, "strError"    # Ljava/lang/String;
    .param p2, "inbase"    # Lcom/east2west/game/inApp/InAppBase;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QinConst] onLoginCancel callback->strError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inbase->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {v0, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onLoginCancelCallBack(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onLoginFailed(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V
    .locals 2
    .param p1, "strError"    # Ljava/lang/String;
    .param p2, "inbase"    # Lcom/east2west/game/inApp/InAppBase;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QinConst] onLoginFailed callback->strError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inbase->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {v0, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onLoginFailedCallBack(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V
    .locals 2
    .param p1, "strError"    # Ljava/lang/String;
    .param p2, "inbase"    # Lcom/east2west/game/inApp/InAppBase;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QinConst] onLoginSuccess callback->strError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inbase->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {v0, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onLoginSuccessCallBack(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onPurchaseCanceled(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V
    .locals 2
    .param p1, "strError"    # Ljava/lang/String;
    .param p2, "inbase"    # Lcom/east2west/game/inApp/InAppBase;

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QinConst] onPurchaseCanceled callback->strError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inbase->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SdkApplication.msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/east2west/game/SdkApplication;->getExtSDKId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {v0, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onPurchaseCancelCallBack(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onPurchaseFailed(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;Ljava/lang/String;)V
    .locals 2
    .param p1, "strError"    # Ljava/lang/String;
    .param p2, "inbase"    # Lcom/east2west/game/inApp/InAppBase;
    .param p3, "mProductId"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QinConst] onPurchaseFailed callback->strError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inbase->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SdkApplication.msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/east2west/game/SdkApplication;->getExtSDKId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {v0, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onPurchaseFailedCallBack(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onPurchaseSuccess(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "inbase"    # Lcom/east2west/game/inApp/InAppBase;
    .param p3, "mProductId"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {v0, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onPurchaseSuccessCallBack(Ljava/lang/String;)V

    .line 71
    return-void
.end method

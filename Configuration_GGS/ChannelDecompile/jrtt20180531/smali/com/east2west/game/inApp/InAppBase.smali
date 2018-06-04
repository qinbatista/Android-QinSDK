.class public Lcom/east2west/game/inApp/InAppBase;
.super Ljava/lang/Object;
.source "InAppBase.java"


# static fields
.field public static OrderID:Ljava/lang/String;

.field public static appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

.field public static forbassonly:Landroid/content/Context;

.field public static key:Ljava/lang/String;

.field public static qc:Lcom/east2west/game/QinConst;

.field public static sTestMode:Z


# instance fields
.field protected mAppContext:Landroid/content/Context;

.field protected mContext:Landroid/app/Activity;

.field protected mInstance:Lcom/east2west/game/inApp/InAppBase;

.field protected mProductDescription:Ljava/lang/String;

.field protected mProductId:Ljava/lang/String;

.field protected mProductPrice:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/east2west/game/inApp/InAppBase;->sTestMode:Z

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/east2west/game/inApp/InAppBase;->OrderID:Ljava/lang/String;

    .line 52
    const-string v0, "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBALnMsImln+S8fxJtf7NDqQhh8EA318buO6ScnyzNbaBkVmu4oL97ggRrgmI7z1YKYkPNs6ymufqjHDAAqqyMm+KgNYodKsr+LtWOxwHVYEI7rdZL6ioNoOyv396pGQjoyXDB6FfP+dGXGN/WMSyJrcXn2tdY025S+dBbQaMTnqhvAgMBAAECgYEAiaTJN//aF1NJdDZofz5lsA8WNAzqrrX4u3dIOKGrUEJk/4KUm6Z86JdYzTtv21bv+zkdnY8agkJp9GnaBuBX7mVEg3tHqzZrOCq5nVX9OHJoMytGwLxlHvejBZPVS1PmkfFnEYRAkBcti5nmsY+fCV5/lxVScrYGdzfrf1vio1ECQQDpxHmicfwYCTb0ZcUIKU0CQvfD9Te/94TIxr82EKcq/pPfoU3vQY+Ks7LI41Zc2kRYhT1dXezzKf/r2FjAMid3AkEAy3hXmEUZYdg+SPVURzrQt6PGjvLv/5Uxe75t8Ovx2JxHRgCD5j7IArzDg7ACMNn50xMHfQUD4QVdEG2vtvK0yQJBAJp/wiw8zXJNVMa+JDS6pyzhecNHZGs5eccApAtlgjaGPtFEWK/SUr5G+diPd9qyXw1qMh5tH1eu4HfNawrLmw0CQBRZ3hEJ4EcMFPbBKwPQ2y1zARotLFoY9xEUc/Sj9NWgk/Rpesfdwa2cacXTJfTy6Gz3O0mC5eds3OkWv3uB/RkCQQCEkR2M+vdStNq08KV7g+bOZKXElvnYjpUHMdVkO+oeXHPhLf9ltlpBOynA7WA60Jdg0OJa14ngZcu2loawd+q2"

    sput-object v0, Lcom/east2west/game/inApp/InAppBase;->key:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "strUrl"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v6, 0x0

    .line 196
    .local v6, "out":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    .line 197
    .local v3, "in":Ljava/io/BufferedReader;
    const-string v9, ""

    .line 198
    .local v9, "result":Ljava/lang/String;
    const-string v10, "IAP"

    invoke-static {v10, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 202
    .local v8, "realUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 204
    .local v0, "conn":Ljava/net/URLConnection;
    const-string v10, "accept"

    const-string v11, "*/*"

    invoke-virtual {v0, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v10, "connection"

    const-string v11, "Keep-Alive"

    invoke-virtual {v0, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v10, "user-agent"

    const-string v11, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)"

    invoke-virtual {v0, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 209
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 211
    new-instance v7, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .end local v6    # "out":Ljava/io/PrintWriter;
    .local v7, "out":Ljava/io/PrintWriter;
    :try_start_1
    invoke-virtual {v7, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 217
    new-instance v4, Ljava/io/BufferedReader;

    .line 218
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 217
    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 230
    if-eqz v7, :cond_0

    .line 231
    :try_start_3
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 233
    :cond_0
    if-eqz v4, :cond_6

    .line 234
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 240
    .end local v0    # "conn":Ljava/net/URLConnection;
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/PrintWriter;
    .end local v8    # "realUrl":Ljava/net/URL;
    .restart local v6    # "out":Ljava/io/PrintWriter;
    :cond_1
    :goto_1
    return-object v9

    .line 221
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v6    # "out":Ljava/io/PrintWriter;
    .restart local v0    # "conn":Ljava/net/URLConnection;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "realUrl":Ljava/net/URL;
    :cond_2
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v9

    goto :goto_0

    .line 223
    .end local v0    # "conn":Ljava/net/URLConnection;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/PrintWriter;
    .end local v8    # "realUrl":Ljava/net/URL;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "out":Ljava/io/PrintWriter;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v10, "IAP"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u53d1\u9001 POST \u8bf7\u6c42\u51fa\u73b0\u5f02\u5e38\uff01"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 230
    if-eqz v6, :cond_3

    .line 231
    :try_start_6
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 233
    :cond_3
    if-eqz v3, :cond_1

    .line 234
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 236
    :catch_1
    move-exception v2

    .line 237
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 230
    :goto_3
    if-eqz v6, :cond_4

    .line 231
    :try_start_7
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 233
    :cond_4
    if-eqz v3, :cond_5

    .line 234
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 239
    :cond_5
    :goto_4
    throw v10

    .line 236
    :catch_2
    move-exception v2

    .line 237
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 236
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v6    # "out":Ljava/io/PrintWriter;
    .restart local v0    # "conn":Ljava/net/URLConnection;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "realUrl":Ljava/net/URL;
    :catch_3
    move-exception v2

    .line 237
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "ex":Ljava/io/IOException;
    :cond_6
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "out":Ljava/io/PrintWriter;
    .restart local v6    # "out":Ljava/io/PrintWriter;
    goto :goto_1

    .line 228
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "out":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "out":Ljava/io/PrintWriter;
    .restart local v6    # "out":Ljava/io/PrintWriter;
    goto :goto_3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v6    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "out":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v10

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "out":Ljava/io/PrintWriter;
    .restart local v6    # "out":Ljava/io/PrintWriter;
    goto :goto_3

    .line 223
    .end local v6    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "out":Ljava/io/PrintWriter;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7    # "out":Ljava/io/PrintWriter;
    .restart local v6    # "out":Ljava/io/PrintWriter;
    goto :goto_2

    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v6    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "out":Ljava/io/PrintWriter;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "out":Ljava/io/PrintWriter;
    .restart local v6    # "out":Ljava/io/PrintWriter;
    goto :goto_2
.end method


# virtual methods
.method public ApplicationInit(Landroid/app/Application;)V
    .locals 2
    .param p1, "appcontext"    # Landroid/app/Application;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/east2west/game/inApp/InAppBase;->mAppContext:Landroid/content/Context;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InAppBase]->init:InAppBase.ApplicationInit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public Exchange(Lcom/east2west/game/inApp/APPBaseInterface;)V
    .locals 0
    .param p1, "appinterface"    # Lcom/east2west/game/inApp/APPBaseInterface;

    .prologue
    .line 193
    return-void
.end method

.method public ExitGame()V
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0}, Lcom/east2west/game/QinConst;->ExitGame()V

    .line 150
    return-void
.end method

.method public FunctionC(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 142
    return-void
.end method

.method public FunctionK(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 138
    return-void
.end method

.method public FunctionL(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 146
    return-void
.end method

.method public FunctionS(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 134
    return-void
.end method

.method public QinUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ObjectName"    # Ljava/lang/String;
    .param p2, "MethodName"    # Ljava/lang/String;
    .param p3, "QinMessage"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->QinUnityMessage UnityPlayer.UnitySendMessage("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p2, p3}, Lcom/east2west/game/QinConst;->QinUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public SharePicture(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "istimeline"    # Z

    .prologue
    .line 272
    return-void
.end method

.method public ShareResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 186
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1}, Lcom/east2west/game/QinConst;->ShareResult(I)V

    .line 187
    return-void
.end method

.method public ShowTencentAd()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method protected ShowToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "strMessage"    # Ljava/lang/String;

    .prologue
    .line 182
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->forbassonly:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    return-void
.end method

.method public TencentLoginOutOnly()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 261
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/east2west/game/inApp/APPBaseInterface;)V
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "context"    # Landroid/app/Activity;
    .param p3, "strAppKey"    # Ljava/lang/String;
    .param p4, "strAppSecret"    # Ljava/lang/String;
    .param p5, "appcall"    # Lcom/east2west/game/inApp/APPBaseInterface;

    .prologue
    .line 69
    iput-object p2, p0, Lcom/east2west/game/inApp/InAppBase;->mContext:Landroid/app/Activity;

    .line 70
    iput-object p1, p0, Lcom/east2west/game/inApp/InAppBase;->mAppContext:Landroid/content/Context;

    .line 71
    iput-object p0, p0, Lcom/east2west/game/inApp/InAppBase;->mInstance:Lcom/east2west/game/inApp/InAppBase;

    .line 73
    sput-object p5, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    .line 74
    sput-object p2, Lcom/east2west/game/inApp/InAppBase;->forbassonly:Landroid/content/Context;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InAppBase]->init:InAppBase.appinterface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public isPurchase()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public letUserLogin()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public letUserLogout()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public login(I)V
    .locals 0
    .param p1, "kind"    # I

    .prologue
    .line 289
    return-void
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public onActivityResult()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 370
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onFunctionCallBack(Ljava/lang/String;)V
    .locals 1
    .param p1, "strError"    # Ljava/lang/String;

    .prologue
    .line 174
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p0}, Lcom/east2west/game/QinConst;->onFunctionCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V

    .line 175
    return-void
.end method

.method public onLoadLib()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public onLoginCancel(Ljava/lang/String;)V
    .locals 1
    .param p1, "strError"    # Ljava/lang/String;

    .prologue
    .line 168
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p0}, Lcom/east2west/game/QinConst;->onLoginCancel(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V

    .line 169
    return-void
.end method

.method public onLoginFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "strError"    # Ljava/lang/String;

    .prologue
    .line 171
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p0}, Lcom/east2west/game/QinConst;->onLoginFailed(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V

    .line 172
    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "strError"    # Ljava/lang/String;

    .prologue
    .line 165
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p0}, Lcom/east2west/game/QinConst;->onLoginSuccess(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V

    .line 166
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onPurchaseCanceled(Ljava/lang/String;)V
    .locals 2
    .param p1, "strError"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    iget-object v1, p0, Lcom/east2west/game/inApp/InAppBase;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, v1}, Lcom/east2west/game/QinConst;->onPurchaseFailed(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onPurchaseFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "strError"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    iget-object v1, p0, Lcom/east2west/game/inApp/InAppBase;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, v1}, Lcom/east2west/game/QinConst;->onPurchaseFailed(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onPurchaseSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    iget-object v1, p0, Lcom/east2west/game/inApp/InAppBase;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, v1}, Lcom/east2west/game/QinConst;->onPurchaseSuccess(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public purchase(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0
    .param p1, "strProductId"    # Ljava/lang/String;
    .param p2, "strProductDescription"    # Ljava/lang/String;
    .param p3, "fPrice"    # F

    .prologue
    .line 83
    iput-object p1, p0, Lcom/east2west/game/inApp/InAppBase;->mProductId:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/east2west/game/inApp/InAppBase;->mProductDescription:Ljava/lang/String;

    .line 85
    iput p3, p0, Lcom/east2west/game/inApp/InAppBase;->mProductPrice:F

    .line 87
    return-void
.end method

.method public purchaseSuper(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0
    .param p1, "mProductId2"    # Ljava/lang/String;
    .param p2, "mProductDescription2"    # Ljava/lang/String;
    .param p3, "mProductPrice2"    # F

    .prologue
    .line 267
    return-void
.end method

.method public setExtraParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "strParam"    # Ljava/lang/String;
    .param p2, "strValue"    # Ljava/lang/String;

    .prologue
    .line 284
    return-void
.end method

.method public showDiffLogin()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public showMessageDialog()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public show_banner()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public show_cp()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public show_insert()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public show_out()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public show_push()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public show_ts(Z)V
    .locals 0
    .param p1, "isopen"    # Z

    .prologue
    .line 256
    return-void
.end method

.method public show_tt()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public show_video()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public show_wt()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public stopWaiting()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public swtichuser()V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public uploadclick()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

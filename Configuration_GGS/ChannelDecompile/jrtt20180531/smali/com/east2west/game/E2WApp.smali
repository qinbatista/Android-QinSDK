.class public Lcom/east2west/game/E2WApp;
.super Ljava/lang/Object;
.source "E2WApp.java"


# static fields
.field public static ChannelForServer:Ljava/lang/String;

.field public static DeviceId:Ljava/lang/String;

.field public static LongChannelID:Ljava/lang/String;

.field public static Platform:I

.field public static SavePidName:Ljava/lang/String;

.field public static SortChannelID:Ljava/lang/String;

.field public static activityforappbase:Lcom/east2west/game/E2WApp;

.field private static img:Landroid/widget/ImageView;

.field public static isLogOpen:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static mSimOperatorId:I

.field public static nikeString:Ljava/lang/String;

.field public static packagenameforuse:Ljava/lang/String;


# instance fields
.field private mChannelId:I

.field private mExtSDKId:I

.field private mInApp:Lcom/east2west/game/inApp/InAppBase;

.field private mInAppExt:Lcom/east2west/game/inApp/InAppBase;

.field public mInAppShow:Lcom/east2west/game/inApp/InAppBase;

.field private mInShare:Lcom/east2west/game/inApp/InAppBase;

.field public platform:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    sput-object v1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/east2west/game/E2WApp;->isLogOpen:Ljava/lang/String;

    .line 55
    sput-object v1, Lcom/east2west/game/E2WApp;->activityforappbase:Lcom/east2west/game/E2WApp;

    .line 56
    const/4 v0, -0x1

    sput v0, Lcom/east2west/game/E2WApp;->Platform:I

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/east2west/game/E2WApp;->DeviceId:Ljava/lang/String;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/east2west/game/E2WApp;->SavePidName:Ljava/lang/String;

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/east2west/game/E2WApp;->SortChannelID:Ljava/lang/String;

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/east2west/game/E2WApp;->LongChannelID:Ljava/lang/String;

    .line 61
    sput-object v1, Lcom/east2west/game/E2WApp;->img:Landroid/widget/ImageView;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/east2west/game/E2WApp;->mExtSDKId:I

    .line 36
    return-void
.end method

.method private GetmInAppExt()V
    .locals 2

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp] GetmInAppExt()->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/east2west/game/E2WApp;->mExtSDKId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 354
    iget v0, p0, Lcom/east2west/game/E2WApp;->mExtSDKId:I

    .line 358
    return-void
.end method

.method public static LogLocal(Ljava/lang/String;)V
    .locals 1
    .param p0, "news"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string v0, "IAP"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method

.method public static SetADValue()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method static synthetic access$0(Lcom/east2west/game/E2WApp;)Lcom/east2west/game/inApp/InAppBase;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    return-object v0
.end method

.method public static getInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public ChannelSplash()V
    .locals 7

    .prologue
    .line 72
    const-string v5, "[inapp] ChannelSplash.png"

    invoke-static {v5}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 74
    :try_start_0
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    const/4 v5, -0x1

    .line 76
    const/4 v6, -0x1

    .line 74
    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const-string v3, "ChannelSplash.png"

    .line 78
    .local v3, "name":Ljava/lang/String;
    sget-object v5, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 79
    .local v2, "in":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 80
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    new-instance v6, Lcom/east2west/game/E2WApp$1;

    invoke-direct {v6, p0, v0, v4}, Lcom/east2west/game/E2WApp$1;-><init>(Lcom/east2west/game/E2WApp;Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[inapp] init e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public Exchange()V
    .locals 2

    .prologue
    .line 332
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/east2west/game/E2WApp$3;

    invoke-direct {v1, p0}, Lcom/east2west/game/E2WApp$3;-><init>(Lcom/east2west/game/E2WApp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    return-void
.end method

.method public Exchange(Lcom/east2west/game/inApp/APPBaseInterface;)V
    .locals 2
    .param p1, "appcall"    # Lcom/east2west/game/inApp/APPBaseInterface;

    .prologue
    .line 343
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/east2west/game/E2WApp$4;

    invoke-direct {v1, p0}, Lcom/east2west/game/E2WApp$4;-><init>(Lcom/east2west/game/E2WApp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    return-void
.end method

.method public ExitGame()V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/east2west/game/E2WApp$2;

    invoke-direct {v1, p0}, Lcom/east2west/game/E2WApp$2;-><init>(Lcom/east2west/game/E2WApp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method

.method public InitAd(Lcom/east2west/game/inApp/APPBaseInterface;)V
    .locals 7
    .param p1, "appcall"    # Lcom/east2west/game/inApp/APPBaseInterface;

    .prologue
    .line 138
    sget-object v0, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 139
    .local v1, "applicationContext":Landroid/content/Context;
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    sget-object v2, Lcom/east2west/game/SdkApplication;->Acontext:Landroid/app/Application;

    invoke-virtual {v0, v2}, Lcom/east2west/game/inApp/InAppBase;->ApplicationInit(Landroid/app/Application;)V

    .line 141
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    invoke-static {}, Lcom/east2west/game/QinConst;->ADValue()V

    .line 147
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    sget-object v2, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, ""

    const-string v4, ""

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/east2west/game/inApp/InAppBase;->init(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/east2west/game/inApp/APPBaseInterface;)V

    .line 150
    return-void

    .line 142
    :catch_0
    move-exception v6

    .line 144
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public InitCarriers(Lcom/east2west/game/inApp/APPBaseInterface;)V
    .locals 0
    .param p1, "appcall"    # Lcom/east2west/game/inApp/APPBaseInterface;

    .prologue
    .line 135
    return-void
.end method

.method public InitChannel(Lcom/east2west/game/inApp/APPBaseInterface;)V
    .locals 3
    .param p1, "appcall"    # Lcom/east2west/game/inApp/APPBaseInterface;

    .prologue
    .line 126
    sget-object v1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, "applicationContext":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[E2WApp] Local InitChannel()->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public InitE2WSDK(Landroid/content/Context;)V
    .locals 1
    .param p1, "ContextForE2wSDK"    # Landroid/content/Context;

    .prologue
    .line 64
    sput-object p1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lcom/east2west/game/E2WApp;->ChannelSplash()V

    .line 66
    new-instance v0, Lcom/east2west/game/Show/InAppShowADDefault;

    invoke-direct {v0}, Lcom/east2west/game/Show/InAppShowADDefault;-><init>()V

    iput-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    .line 67
    sput-object p0, Lcom/east2west/game/E2WApp;->activityforappbase:Lcom/east2west/game/E2WApp;

    .line 69
    return-void
.end method

.method public LongChannelID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/east2west/game/E2WApp;->LongChannelID:Ljava/lang/String;

    return-object v0
.end method

.method public Message(Ljava/lang/String;)V
    .locals 2
    .param p1, "news"    # Ljava/lang/String;

    .prologue
    .line 362
    sget-object v0, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 363
    return-void
.end method

.method public SharePicture(Ljava/lang/String;ZLcom/east2west/game/inApp/APPBaseInterface;)V
    .locals 0
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "istimeline"    # Z
    .param p3, "appcall"    # Lcom/east2west/game/inApp/APPBaseInterface;

    .prologue
    .line 368
    return-void
.end method

.method public ShortChannelID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/east2west/game/E2WApp;->SortChannelID:Ljava/lang/String;

    return-object v0
.end method

.method public ShowTencentAd()V
    .locals 2

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->ShowTencentAd:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->ShowTencentAd()V

    .line 435
    :cond_0
    return-void
.end method

.method public TencentLogin(I)V
    .locals 2
    .param p1, "kind"    # I

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->TencentLogin:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, p1}, Lcom/east2west/game/inApp/InAppBase;->login(I)V

    .line 411
    :cond_0
    return-void
.end method

.method public TencentLoginOut()V
    .locals 2

    .prologue
    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->TencentLoginOut:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->logout()V

    .line 419
    :cond_0
    return-void
.end method

.method public TencentLoginOutOnly()V
    .locals 2

    .prologue
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->TencentLoginOutOnly:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->TencentLoginOutOnly()V

    .line 427
    :cond_0
    return-void
.end method

.method public getBaseInApp()Lcom/east2west/game/inApp/InAppBase;
    .locals 3

    .prologue
    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[E2WApp] getBaseInApp()->mInApp="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 324
    new-instance v0, Lcom/east2west/game/inApp/InAppBase;

    invoke-direct {v0}, Lcom/east2west/game/inApp/InAppBase;-><init>()V

    .line 325
    .local v0, "myapp":Lcom/east2west/game/inApp/InAppBase;
    return-object v0
.end method

.method public getChannelId()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/east2west/game/E2WApp;->mChannelId:I

    return v0
.end method

.method public letUserLogin()V
    .locals 2

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->letUserLogin:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->letUserLogin()V

    .line 378
    :cond_0
    return-void
.end method

.method public letUserLogout()V
    .locals 2

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->letUserLogout:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->letUserLogout()V

    .line 394
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->onActivityResult:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/east2west/game/inApp/InAppBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 459
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onDestroy()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onDestroy()V

    .line 307
    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->onNewIntent:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, p1}, Lcom/east2west/game/inApp/InAppBase;->onNewIntent(Landroid/content/Intent;)V

    .line 467
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onPause()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onPause()V

    .line 244
    :cond_1
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onRestart()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onRestart()V

    .line 280
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onResume()V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onResume()V

    .line 293
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onStart()V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onStart()V

    .line 268
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onStop()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onStop()V

    .line 256
    :cond_1
    return-void
.end method

.method public purchaseProduct(Ljava/lang/String;)V
    .locals 2
    .param p1, "pidname"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp] purchaseProduct: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public repairindentRequest()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public respondCPserver()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public showDiffLogin()V
    .locals 2

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->showDiffLogin:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->showDiffLogin()V

    .line 402
    :cond_0
    return-void
.end method

.method public showMessageDialog()V
    .locals 2

    .prologue
    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->showMessageDialog:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->showMessageDialog()V

    .line 451
    :cond_0
    return-void
.end method

.method public show_banner()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->show_banner()V

    .line 203
    :cond_0
    return-void
.end method

.method public show_insert()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->show_insert()V

    .line 196
    :cond_0
    return-void
.end method

.method public show_out()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->show_out()V

    .line 217
    :cond_0
    return-void
.end method

.method public show_push()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->show_push()V

    .line 210
    :cond_0
    return-void
.end method

.method public show_video()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->show_video()V

    .line 224
    :cond_0
    return-void
.end method

.method public stopWaiting()V
    .locals 2

    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->stopWaiting:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->stopWaiting()V

    .line 386
    :cond_0
    return-void
.end method

.method public swtichuser()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->swtichuser()V

    .line 187
    :cond_0
    return-void
.end method

.method public uploadclick()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->uploadclick()V

    .line 231
    :cond_0
    return-void
.end method

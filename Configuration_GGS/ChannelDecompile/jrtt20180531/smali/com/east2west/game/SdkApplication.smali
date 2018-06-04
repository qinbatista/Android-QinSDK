.class public Lcom/east2west/game/SdkApplication;
.super Landroid/app/Application;
.source "SdkApplication.java"


# static fields
.field public static Acontext:Landroid/app/Application;

.field public static channelSplash:Ljava/lang/String;

.field public static channelname:Ljava/lang/String;

.field public static e2wnumber:Ljava/lang/String;

.field public static isAntLogOpen:Ljava/lang/String;

.field public static iscarriersneed:Ljava/lang/String;

.field public static jschannel:Ljava/lang/String;

.field public static jsid:Ljava/lang/String;

.field public static jstjid:Ljava/lang/String;

.field public static key:Ljava/lang/String;

.field private static mChannelId:I

.field private static mExtSDKId:I

.field public static msg:Ljava/lang/String;


# instance fields
.field public mInApp:Lcom/east2west/game/inApp/InAppBase;

.field private mInAppExt:Lcom/east2west/game/inApp/InAppBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 31
    sput v0, Lcom/east2west/game/SdkApplication;->mExtSDKId:I

    .line 32
    sput v0, Lcom/east2west/game/SdkApplication;->mChannelId:I

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/east2west/game/SdkApplication;->msg:Ljava/lang/String;

    .line 34
    const-string v0, ""

    sput-object v0, Lcom/east2west/game/SdkApplication;->channelname:Ljava/lang/String;

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/east2west/game/SdkApplication;->key:Ljava/lang/String;

    .line 37
    const-string v0, "1"

    sput-object v0, Lcom/east2west/game/SdkApplication;->iscarriersneed:Ljava/lang/String;

    .line 38
    const-string v0, "1"

    sput-object v0, Lcom/east2west/game/SdkApplication;->channelSplash:Ljava/lang/String;

    .line 39
    const-string v0, ""

    sput-object v0, Lcom/east2west/game/SdkApplication;->isAntLogOpen:Ljava/lang/String;

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/east2west/game/SdkApplication;->e2wnumber:Ljava/lang/String;

    .line 42
    const-string v0, ""

    sput-object v0, Lcom/east2west/game/SdkApplication;->jsid:Ljava/lang/String;

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/east2west/game/SdkApplication;->jschannel:Ljava/lang/String;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/east2west/game/SdkApplication;->jstjid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private checkChannel()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method private checkChannelName()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method private checkChannelSplash()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method private checkExtJSCHANNELChannel()V
    .locals 5

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 255
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 261
    :goto_0
    :try_start_1
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "JS_CHANNEL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/east2west/game/SdkApplication;->jschannel:Ljava/lang/String;

    .line 274
    :goto_1
    return-void

    .line 256
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 263
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v2, "game"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "3Failed to load meta-data, NameNotFound: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 269
    :catch_2
    move-exception v1

    .line 271
    const-string v2, "game"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "4Failed to load meta-data, NullPointer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkExtJSIDChannel()V
    .locals 5

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 228
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 234
    :goto_0
    :try_start_1
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "JS_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/east2west/game/SdkApplication;->jsid:Ljava/lang/String;

    .line 247
    :goto_1
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 236
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v2, "game"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "3Failed to load meta-data, NameNotFound: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 242
    :catch_2
    move-exception v1

    .line 244
    const-string v2, "game"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "4Failed to load meta-data, NullPointer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkExtJSTJIDChannel()V
    .locals 5

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 281
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 287
    :goto_0
    :try_start_1
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "JS_TJID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/east2west/game/SdkApplication;->jstjid:Ljava/lang/String;

    .line 300
    :goto_1
    return-void

    .line 282
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 289
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v2, "game"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "3Failed to load meta-data, NameNotFound: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 295
    :catch_2
    move-exception v1

    .line 297
    const-string v2, "game"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "4Failed to load meta-data, NullPointer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkExtSDK()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method private checkLoge()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method private checkMobileSplash()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method private checkNumber()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method private checkSIM()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public static getChannelId()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/east2west/game/SdkApplication;->mChannelId:I

    return v0
.end method

.method public static getChannelname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/east2west/game/SdkApplication;->channelname:Ljava/lang/String;

    return-object v0
.end method

.method public static getExtSDKId()I
    .locals 1

    .prologue
    .line 204
    sget v0, Lcom/east2west/game/SdkApplication;->mExtSDKId:I

    return v0
.end method

.method private getSign(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 120
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 122
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 130
    const/4 v5, 0x0

    :goto_0
    return-object v5

    .line 123
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 124
    .local v3, "packageinfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 125
    .local v2, "packageName":Ljava/lang/String;
    sget-object v5, Lcom/east2west/game/SdkApplication;->Acontext:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public APPApplicationInit(Landroid/app/Application;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Application;

    .prologue
    .line 81
    sput-object p1, Lcom/east2west/game/SdkApplication;->Acontext:Landroid/app/Application;

    .line 84
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkSIM()V

    .line 85
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkChannel()V

    .line 86
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkExtSDK()V

    .line 87
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkChannelName()V

    .line 88
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkMobileSplash()V

    .line 89
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkChannelSplash()V

    .line 90
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkLoge()V

    .line 91
    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->JSXML()V

    .line 92
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkNumber()V

    .line 96
    :try_start_0
    sget-object v1, Lcom/east2west/game/SdkApplication;->Acontext:Landroid/app/Application;

    invoke-direct {p0, v1}, Lcom/east2west/game/SdkApplication;->getSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/east2west/game/SdkApplication;->key:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    const-string v1, "IAP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[SDKApp]SdkName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/east2west/game/SdkApplication;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v1, Lcom/east2west/game/SdkApplication;->iscarriersneed:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 108
    sget-object v1, Lcom/east2west/game/SdkApplication;->iscarriersneed:Ljava/lang/String;

    const-string v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/east2west/game/E2WApp;->SortChannelID:Ljava/lang/String;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/east2west/game/E2WApp;->SortChannelID:Ljava/lang/String;

    const-string v2, "unicom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const-string v1, "megjb"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public JSXML()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkExtJSIDChannel()V

    .line 218
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkExtJSCHANNELChannel()V

    .line 219
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkExtJSTJIDChannel()V

    .line 220
    return-void
.end method

.method public getSingInfo()V
    .locals 7

    .prologue
    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 137
    sget-object v5, Lcom/east2west/game/SdkApplication;->Acontext:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 138
    const/16 v6, 0x40

    .line 136
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 139
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 140
    .local v3, "signs":[Landroid/content/pm/Signature;
    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 141
    .local v2, "sign":Landroid/content/pm/Signature;
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/east2west/game/SdkApplication;->parseSignature([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "sign":Landroid/content/pm/Signature;
    .end local v3    # "signs":[Landroid/content/pm/Signature;
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 51
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkSIM()V

    .line 52
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkChannel()V

    .line 53
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkExtSDK()V

    .line 54
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkChannelName()V

    .line 55
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkMobileSplash()V

    .line 56
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkChannelSplash()V

    .line 57
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkLoge()V

    .line 58
    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->JSXML()V

    .line 59
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkNumber()V

    .line 62
    :try_start_0
    invoke-direct {p0, p0}, Lcom/east2west/game/SdkApplication;->getSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/east2west/game/SdkApplication;->key:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    const-string v1, "IAP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[SDKApp]SdkName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/east2west/game/SdkApplication;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v1, Lcom/east2west/game/SdkApplication;->iscarriersneed:Ljava/lang/String;

    const-string v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lcom/east2west/game/E2WApp;->SortChannelID:Ljava/lang/String;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/east2west/game/E2WApp;->SortChannelID:Ljava/lang/String;

    const-string v2, "unicom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    const-string v1, "megjb"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public parseSignature([B)V
    .locals 5
    .param p1, "signature"    # [B

    .prologue
    .line 150
    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 152
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 151
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 153
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "pubKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "pubKey":Ljava/lang/String;
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0
.end method

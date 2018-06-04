.class public Lcom/east2west/testapp/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field public static appcall:Lcom/east2west/game/inApp/APPBaseInterface;

.field public static context:Landroid/content/Context;


# instance fields
.field public e2w:Lcom/east2west/game/E2WApp;

.field public qin:Lcom/east2west/game/QinConst;

.field public qin1:Lcom/east2west/game/QinConst;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/east2west/testapp/MainActivity;->appcall:Lcom/east2west/game/inApp/APPBaseInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sput-object p0, Lcom/east2west/testapp/MainActivity;->context:Landroid/content/Context;

    .line 27
    const-string v5, "E2W"

    const-string v6, "2->e2w"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v5, Lcom/east2west/game/E2WApp;

    invoke-direct {v5}, Lcom/east2west/game/E2WApp;-><init>()V

    iput-object v5, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    .line 29
    new-instance v5, Lcom/east2west/game/QinConst;

    invoke-direct {v5}, Lcom/east2west/game/QinConst;-><init>()V

    iput-object v5, p0, Lcom/east2west/testapp/MainActivity;->qin:Lcom/east2west/game/QinConst;

    .line 30
    new-instance v5, Lcom/east2west/testapp/MainActivity$1;

    invoke-direct {v5, p0}, Lcom/east2west/testapp/MainActivity$1;-><init>(Lcom/east2west/testapp/MainActivity;)V

    sput-object v5, Lcom/east2west/testapp/MainActivity;->appcall:Lcom/east2west/game/inApp/APPBaseInterface;

    .line 88
    const-string v5, "E2W"

    const-string v6, "4->InitE2WSDK"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v5, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    sget-object v6, Lcom/east2west/testapp/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/east2west/game/E2WApp;->InitE2WSDK(Landroid/content/Context;)V

    .line 91
    const-string v5, "E2W"

    const-string v6, "5->InitAd"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v5, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    sget-object v6, Lcom/east2west/testapp/MainActivity;->appcall:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-virtual {v5, v6}, Lcom/east2west/game/E2WApp;->InitAd(Lcom/east2west/game/inApp/APPBaseInterface;)V

    .line 93
    const/high16 v5, 0x7f030000

    invoke-virtual {p0, v5}, Lcom/east2west/testapp/MainActivity;->setContentView(I)V

    .line 94
    const v5, 0x7f0e0002

    invoke-virtual {p0, v5}, Lcom/east2west/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 96
    .local v0, "btn":Landroid/widget/Button;
    new-instance v5, Lcom/east2west/testapp/MainActivity$2;

    invoke-direct {v5, p0}, Lcom/east2west/testapp/MainActivity$2;-><init>(Lcom/east2west/testapp/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const/high16 v5, 0x7f0e0000

    invoke-virtual {p0, v5}, Lcom/east2west/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 106
    .local v4, "exit":Landroid/widget/Button;
    new-instance v5, Lcom/east2west/testapp/MainActivity$3;

    invoke-direct {v5, p0}, Lcom/east2west/testapp/MainActivity$3;-><init>(Lcom/east2west/testapp/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v5, 0x7f0e0001

    invoke-virtual {p0, v5}, Lcom/east2west/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 116
    .local v1, "btn1":Landroid/widget/Button;
    new-instance v5, Lcom/east2west/testapp/MainActivity$4;

    invoke-direct {v5, p0}, Lcom/east2west/testapp/MainActivity$4;-><init>(Lcom/east2west/testapp/MainActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v5, 0x7f0e0004

    invoke-virtual {p0, v5}, Lcom/east2west/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 126
    .local v2, "btn2":Landroid/widget/Button;
    new-instance v5, Lcom/east2west/testapp/MainActivity$5;

    invoke-direct {v5, p0}, Lcom/east2west/testapp/MainActivity$5;-><init>(Lcom/east2west/testapp/MainActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v5, 0x7f0e0003

    invoke-virtual {p0, v5}, Lcom/east2west/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 135
    .local v3, "btn3":Landroid/widget/Button;
    new-instance v5, Lcom/east2west/testapp/MainActivity$6;

    invoke-direct {v5, p0}, Lcom/east2west/testapp/MainActivity$6;-><init>(Lcom/east2west/testapp/MainActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onDestroy()V

    .line 200
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onPause()V

    .line 174
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 187
    iget-object v0, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onRestart()V

    .line 188
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 193
    iget-object v0, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onResume()V

    .line 194
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 180
    iget-object v0, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onStop()V

    .line 181
    return-void
.end method

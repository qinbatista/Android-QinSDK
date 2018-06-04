.class Lcom/east2west/game/E2WApp$1$1;
.super Ljava/lang/Object;
.source "E2WApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/E2WApp$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/east2west/game/E2WApp$1;

.field private final synthetic val$image:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/east2west/game/E2WApp$1;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/east2west/game/E2WApp$1$1;->this$1:Lcom/east2west/game/E2WApp$1;

    iput-object p2, p0, Lcom/east2west/game/E2WApp$1$1;->val$image:Landroid/widget/ImageView;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    sget-object v1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/east2west/game/E2WApp$1$1$1;

    iget-object v3, p0, Lcom/east2west/game/E2WApp$1$1;->val$image:Landroid/widget/ImageView;

    invoke-direct {v2, p0, v3}, Lcom/east2west/game/E2WApp$1$1$1;-><init>(Lcom/east2west/game/E2WApp$1$1;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 109
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

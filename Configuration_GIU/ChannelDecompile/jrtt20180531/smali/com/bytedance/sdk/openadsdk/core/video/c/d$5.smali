.class Lcom/bytedance/sdk/openadsdk/core/video/c/d$5;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/video/c/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$5;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$5;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V

    .line 315
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$5;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$5;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 318
    :cond_0
    return-void
.end method

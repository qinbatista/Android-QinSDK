.class Lcom/bytedance/sdk/openadsdk/core/video/b/a$3;
.super Ljava/lang/Object;
.source "RewardVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->g(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->g(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;->a()V

    .line 253
    :cond_0
    return-void
.end method

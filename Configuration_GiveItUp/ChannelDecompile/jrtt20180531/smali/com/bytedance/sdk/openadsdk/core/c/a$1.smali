.class Lcom/bytedance/sdk/openadsdk/core/c/a$1;
.super Ljava/lang/Object;
.source "FrequentCallController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/c/a;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/c/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/c/a;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/c/a;Z)V

    .line 99
    return-void
.end method

.class Lcom/east2west/game/E2WApp$2;
.super Ljava/lang/Object;
.source "E2WApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/E2WApp;->ExitGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/east2west/game/E2WApp;


# direct methods
.method constructor <init>(Lcom/east2west/game/E2WApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/east2west/game/E2WApp$2;->this$0:Lcom/east2west/game/E2WApp;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/east2west/game/E2WApp$2;->this$0:Lcom/east2west/game/E2WApp;

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->access$0(Lcom/east2west/game/E2WApp;)Lcom/east2west/game/inApp/InAppBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->ExitGame()V

    .line 168
    return-void
.end method

.class public Lnw8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private flowReceiver:Lnw8/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeGetAct()Ljava/lang/String;
.end method

.method private native nativeGetAct2()Ljava/lang/String;
.end method

.method private native nativeGetAct3()Ljava/lang/String;
.end method

.method private native nativeHandleMapsActivity(Landroid/app/Activity;)V
.end method

.method private native nativeOnActivityCreated(Ljava/lang/String;)V
.end method

.method private native nativeOnActivityDestroyed(Ljava/lang/String;)V
.end method

.method private native nativeOnActivityPaused(Ljava/lang/String;)V
.end method

.method private native nativeOnActivityResumed(Ljava/lang/String;)V
.end method

.method private native nativeOnActivityStarted(Ljava/lang/String;)V
.end method

.method private native nativeOnActivityStopped(Ljava/lang/String;)V
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnw8/a;->nativeOnActivityCreated(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnw8/a;->nativeOnActivityDestroyed(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lnw8/a;->nativeGetAct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-direct {p0}, Lnw8/a;->nativeGetAct2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-direct {p0}, Lnw8/a;->nativeGetAct3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_31
    iget-object v0, p0, Lnw8/a;->flowReceiver:Lnw8/c;

    if-eqz v0, :cond_3b

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnw8/a;->flowReceiver:Lnw8/c;

    :cond_3b
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnw8/a;->nativeOnActivityPaused(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lnw8/a;->nativeGetAct()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-direct {p0}, Lnw8/a;->nativeGetAct2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-direct {p0}, Lnw8/a;->nativeGetAct3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    :cond_31
    const/4 p1, 0x0

    sput-boolean p1, Lmf9/a;->as:Z

    :cond_34
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    const/4 v0, 0x1

    sput-boolean v0, Lmf9/a;->as:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnw8/a;->nativeOnActivityResumed(Ljava/lang/String;)V

    invoke-direct {p0}, Lnw8/a;->nativeGetAct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-direct {p0}, Lnw8/a;->nativeGetAct2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-direct {p0}, Lnw8/a;->nativeGetAct3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_2c
    invoke-static {}, Lmf9/a;->a()Lmf9/a;

    move-result-object v0

    iput-object p1, v0, Lmf9/a;->m:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lnw8/a;->nativeHandleMapsActivity(Landroid/app/Activity;)V

    :cond_35
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnw8/a;->nativeOnActivityStarted(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnw8/a;->nativeOnActivityStopped(Ljava/lang/String;)V

    return-void
.end method

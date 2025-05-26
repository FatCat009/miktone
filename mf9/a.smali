.class public abstract Lmf9/a;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static as:Z = true

.field private static i:Lmf9/a;


# instance fields
.field public f:Landroid/widget/FrameLayout;

.field public m:Landroid/app/Activity;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "mikfl-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Lmf9/a;
    .registers 1

    sget-object v0, Lmf9/a;->i:Lmf9/a;

    return-object v0
.end method

.method private native nativeInit()V
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-direct {p0}, Lmf9/a;->nativeInit()V

    sput-object p0, Lmf9/a;->i:Lmf9/a;

    return-void
.end method

.class public final enum Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;
.super Ljava/lang/Enum;
.source "PrimitiveSpawnShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpawnSide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

.field public static final enum both:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

.field public static final enum bottom:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

.field public static final enum top:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    const-string v1, "both"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->both:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    const-string v1, "top"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->top:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    const-string v1, "bottom"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->bottom:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->both:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->top:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->bottom:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    aput-object v1, v0, v4

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->$VALUES:[Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->$VALUES:[Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    return-object v0
.end method

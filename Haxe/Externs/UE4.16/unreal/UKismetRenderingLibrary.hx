/**
 * 
 * WARNING! This file was autogenerated by: 
 *  _   _ _   _ __   __ 
 * | | | | | | |\ \ / / 
 * | | | | |_| | \ V /  
 * | | | |  _  | /   \  
 * | |_| | | | |/ /^\ \ 
 *  \___/\_| |_/\/   \/ 
 * 
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;

/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Kismet/KismetRenderingLibrary.h")
@:uextern @:uclass extern class UKismetRenderingLibrary extends unreal.UBlueprintFunctionLibrary {
  
  /**
    Clears the specified render target with the given ClearColor.
  **/
  @:ufunction static public function ClearRenderTarget2D(WorldContextObject : unreal.UObject, TextureRenderTarget : unreal.UTextureRenderTarget2D, @:opt("(R=0.000000,G=0.000000,B=0.000000,A=1.000000)") ClearColor : unreal.FLinearColor) : Void;
  
  /**
    Creates a new render target and initializes it to the specified dimensions
  **/
  @:ufunction static public function CreateRenderTarget2D(WorldContextObject : unreal.UObject, Width : unreal.Int32 = 256, Height : unreal.Int32 = 256) : unreal.UTextureRenderTarget2D;
  
  /**
    Renders a quad with the material applied to the specified render target.
    This sets the render target even if it is already set, which is an expensive operation.
    Use BeginDrawCanvasToRenderTarget / EndDrawCanvasToRenderTarget instead if rendering multiple primitives to the same render target.
  **/
  @:ufunction static public function DrawMaterialToRenderTarget(WorldContextObject : unreal.UObject, TextureRenderTarget : unreal.UTextureRenderTarget2D, Material : unreal.UMaterialInterface) : Void;
  
  /**
    Copies the contents of a render target to a UTexture2D
    Only works in the editor
  **/
  @:ufunction static public function ConvertRenderTargetToTexture2DEditorOnly(WorldContextObject : unreal.UObject, RenderTarget : unreal.UTextureRenderTarget2D, Texture : unreal.UTexture2D) : Void;
  
  /**
    Exports a render target as a HDR image onto the disk.
  **/
  @:ufunction static public function ExportRenderTarget(WorldContextObject : unreal.UObject, TextureRenderTarget : unreal.UTextureRenderTarget2D, FilePath : unreal.FString, FileName : unreal.FString) : Void;
  
  /**
    Exports a Texture2D as a HDR image onto the disk.
  **/
  @:ufunction static public function ExportTexture2D(WorldContextObject : unreal.UObject, Texture : unreal.UTexture2D, FilePath : unreal.FString, FileName : unreal.FString) : Void;
  
  /**
    Must be paired with a BeginDrawCanvasToRenderTarget to complete rendering to a render target.
  **/
  @:ufunction static public function EndDrawCanvasToRenderTarget(WorldContextObject : unreal.UObject, Context : unreal.Const<unreal.PRef<unreal.FDrawToRenderTargetContext>>) : Void;
  
  /**
    Create FSkelMeshSkinWeightInfo
  **/
  @:ufunction static public function MakeSkinWeightInfo(Bone0 : unreal.Int32, Weight0 : unreal.UInt8, Bone1 : unreal.Int32, Weight1 : unreal.UInt8, Bone2 : unreal.Int32, Weight2 : unreal.UInt8, Bone3 : unreal.Int32, Weight3 : unreal.UInt8) : unreal.FSkelMeshSkinWeightInfo;
  
  /**
    Break FSkelMeshSkinWeightInfo
  **/
  @:ufunction static public function BreakSkinWeightInfo(InWeight : unreal.FSkelMeshSkinWeightInfo, Bone0 : unreal.Int32, Weight0 : unreal.UInt8, Bone1 : unreal.Int32, Weight1 : unreal.UInt8, Bone2 : unreal.Int32, Weight2 : unreal.UInt8, Bone3 : unreal.Int32, Weight3 : unreal.UInt8) : Void;
  
}

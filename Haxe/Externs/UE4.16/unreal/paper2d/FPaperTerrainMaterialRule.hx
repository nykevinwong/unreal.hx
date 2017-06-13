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
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.paper2d;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Rule for a single section of a terrain material
**/
@:umodule("Paper2D")
@:glueCppIncludes("PaperTerrainMaterial.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FPaperTerrainMaterialRule {
  #if WITH_EDITORONLY_DATA
  
  /**
    Readable description for the rule (unused anywhere, just for clarity when editing the material)
  **/
  @:uproperty public var Description : unreal.FText;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Specify a draw order for different materials in a spline. Smaller draw orders are drawn first, negative values are allowed.
  **/
  @:uproperty public var DrawOrder : unreal.Int32;
  
  /**
    How much should the collision be lofted from the spline (positive values go out from the spline, negative values go in to the spline)
  **/
  @:uproperty public var CollisionOffset : unreal.Float32;
  
  /**
    If true, collision is enabled for sections matching this rule
  **/
  @:uproperty public var bEnableCollision : Bool;
  
  /**
    Maximum slope angle (in degrees) to apply this rule
  **/
  @:uproperty public var MaximumAngle : unreal.Float32;
  
  /**
    Minimum slope angle (in degrees) to apply this rule
  **/
  @:uproperty public var MinimumAngle : unreal.Float32;
  
  /**
    The sprite to use at the 'right' (closest to spline end) edge of the terrain segment
  **/
  @:uproperty public var EndCap : unreal.paper2d.UPaperSprite;
  
  /**
    A set of sprites to randomly choose to fill up the interior space between the caps in a terrain segment
  **/
  @:uproperty public var Body : unreal.TArray<unreal.paper2d.UPaperSprite>;
  
  /**
    The sprite to use at the 'left' (closest to spline start) edge of the terrain segment
  **/
  @:uproperty public var StartCap : unreal.paper2d.UPaperSprite;
  
}

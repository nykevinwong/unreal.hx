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
package unreal;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:glueCppIncludes("Components/MaterialBillboardComponent.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FMaterialSpriteElement {
  
  /**
    A curve that maps distance on the X axis to the sprite size on the Y axis.
  **/
  @:uproperty public var DistanceToSizeCurve : unreal.UCurveFloat;
  
  /**
    The base height of the sprite, multiplied with the DistanceToSizeCurve.
  **/
  @:uproperty public var BaseSizeY : unreal.Float32;
  
  /**
    The base width of the sprite, multiplied with the DistanceToSizeCurve.
  **/
  @:uproperty public var BaseSizeX : unreal.Float32;
  
  /**
    Whether the size is defined in screen-space or world-space.
  **/
  @:uproperty public var bSizeIsInScreenSpace : Bool;
  
  /**
    A curve that maps distance on the X axis to the sprite opacity on the Y axis.
  **/
  @:uproperty public var DistanceToOpacityCurve : unreal.UCurveFloat;
  
  /**
    The material that the sprite is rendered with.
  **/
  @:uproperty public var Material : unreal.UMaterialInterface;
  
}

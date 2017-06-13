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
  
  Data about a single point in a projectile path trace.
**/
@:glueCppIncludes("Kismet/GameplayStaticsTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FPredictProjectilePathPointData {
  
  /**
    Elapsed time at this point from the start of the trace.
  **/
  @:uproperty public var Time : unreal.Float32;
  
  /**
    Velocity at this point
  **/
  @:uproperty public var Velocity : unreal.FVector;
  
  /**
    Location of this point
  **/
  @:uproperty public var Location : unreal.FVector;
  
}

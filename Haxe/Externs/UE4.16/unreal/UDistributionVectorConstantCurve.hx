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
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Distributions/DistributionVectorConstantCurve.h")
@:uextern @:uclass extern class UDistributionVectorConstantCurve extends unreal.UDistributionVector {
  @:uproperty public var LockedAxes : unreal.EDistributionVectorLockFlags;
  
  /**
    If true, X == Y == Z ie. only one degree of freedom. If false, each axis is picked independently.
  **/
  @:uproperty public var bLockAxes : Bool;
  
  /**
    Keyframe data for each component (X,Y,Z) over time.
  **/
  @:uproperty public var ConstantCurve : unreal.FInterpCurveVector;
  
}

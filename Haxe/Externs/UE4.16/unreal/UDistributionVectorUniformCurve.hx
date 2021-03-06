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
@:glueCppIncludes("Distributions/DistributionVectorUniformCurve.h")
@:uextern @:uclass extern class UDistributionVectorUniformCurve extends unreal.UDistributionVector {
  @:uproperty public var bUseExtremes : Bool;
  @:uproperty public var bLockAxes2 : Bool;
  
  /**
    If true, X == Y == Z ie. only one degree of freedom. If false, each axis is picked independently.
  **/
  @:uproperty public var bLockAxes1 : Bool;
  
  /**
    Keyframe data for how output constant varies over time.
  **/
  @:uproperty public var ConstantCurve : unreal.FInterpCurveTwoVectors;
  
}

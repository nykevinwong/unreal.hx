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
@:glueCppIncludes("Particles/Beam/ParticleModuleBeamTarget.h")
@:uextern @:uclass extern class UParticleModuleBeamTarget extends unreal.UParticleModuleBeamBase {
  
  /**
    Default target-point information to use if the beam method is endpoint.
  **/
  @:uproperty public var LockRadius : unreal.Float32;
  
  /**
    Whether to lock the Target to the life of the particle.
  **/
  @:uproperty public var bLockTargetStength : Bool;
  
  /**
    The strength of the tangent from the Target point for each beam.
  **/
  @:uproperty public var TargetStrength : unreal.FRawDistributionFloat;
  
  /**
    Whether to lock the Target to the life of the particle.
  **/
  @:uproperty public var bLockTargetTangent : Bool;
  
  /**
    The tangent for the Target point for each beam.
  **/
  @:uproperty public var TargetTangent : unreal.FRawDistributionVector;
  
  /**
    The method to use for the Target tangent.
  **/
  @:uproperty public var TargetTangentMethod : unreal.Beam2SourceTargetTangentMethod;
  
  /**
    Whether to lock the Target to the life of the particle.
  **/
  @:uproperty public var bLockTarget : Bool;
  
  /**
    Whether to treat the as an absolute position in world space.
  **/
  @:uproperty public var bTargetAbsolute : Bool;
  
  /**
    Default target-point information to use if the beam method is endpoint.
  **/
  @:uproperty public var Target : unreal.FRawDistributionVector;
  
  /**
    The target point sources of each beam, when using the end point method.
  **/
  @:uproperty public var TargetName : unreal.FName;
  
  /**
    The method flag.
  **/
  @:uproperty public var TargetMethod : unreal.Beam2SourceTargetMethod;
  
}

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
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Particles/Velocity/ParticleModuleVelocityBase.h")
@:noClass @:uextern @:uclass extern class UParticleModuleVelocityBase extends unreal.UParticleModule {
  
  /**
    If true, then apply the particle system components scale to the velocity value.
  **/
  @:uproperty public var bApplyOwnerScale : Bool;
  
  /**
    If true, then treat the velocity as world-space defined.
    NOTE: LocalSpace emitters that are moving will see strange results...
  **/
  @:uproperty public var bInWorldSpace : Bool;
  
}

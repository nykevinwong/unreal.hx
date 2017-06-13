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

@:glueCppIncludes("Particles/Location/ParticleModuleLocationEmitter.h")
@:uextern @:uclass extern class UParticleModuleLocationEmitter extends unreal.UParticleModuleLocationBase {
  
  /**
    Amount to scale the source rotation by when inheriting it.
  **/
  @:uproperty public var InheritSourceRotationScale : unreal.Float32;
  
  /**
    If true, the spawned particle should inherit the rotation of the source particle.
  **/
  @:uproperty public var bInheritSourceRotation : Bool;
  
  /**
    Amount to scale the source velocity by when inheriting it.
  **/
  @:uproperty public var InheritSourceVelocityScale : unreal.Float32;
  
  /**
    If true, the spawned particle should inherit the velocity of the source particle.
  **/
  @:uproperty public var InheritSourceVelocity : Bool;
  
  /**
    The method to use when selecting a spawn target particle from the emitter.
    Can be one of the following:
            ELESM_Random            Randomly select a particle from the source emitter.
            ELESM_Sequential        Step through each particle from the source emitter in order.
  **/
  @:uproperty public var SelectionMethod : unreal.ELocationEmitterSelectionMethod;
  
  /**
    The name of the emitter to use that the source location for particle.
  **/
  @:uproperty public var EmitterName : unreal.FName;
  
}

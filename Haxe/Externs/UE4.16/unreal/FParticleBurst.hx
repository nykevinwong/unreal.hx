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

@:glueCppIncludes("Particles/ParticleEmitter.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FParticleBurst {
  
  /**
    The time at which to burst them (0..1: emitter lifetime)
  **/
  @:uproperty public var Time : unreal.Float32;
  
  /**
    If >= 0, use as a range [CountLow..Count]
  **/
  @:uproperty public var CountLow : unreal.Int32;
  
  /**
    The number of particles to burst
  **/
  @:uproperty public var Count : unreal.Int32;
  
}

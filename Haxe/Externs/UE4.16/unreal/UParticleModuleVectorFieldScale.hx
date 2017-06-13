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
@:glueCppIncludes("Particles/VectorField/ParticleModuleVectorFieldScale.h")
@:uextern @:uclass extern class UParticleModuleVectorFieldScale extends unreal.UParticleModuleVectorFieldBase {
  
  /**
    Per-particle vector field scale. Evaluated using emitter time.
  **/
  @:uproperty public var VectorFieldScaleRaw : unreal.FRawDistributionFloat;
  
  /**
    Per-particle vector field scale. Evaluated using emitter time.
  **/
  @:deprecated @:uproperty public var VectorFieldScale_DEPRECATED : unreal.UDistributionFloat;
  
}

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
@:glueCppIncludes("Particles/Parameter/ParticleModuleParameterDynamic.h")
@:uextern @:uclass extern class UParticleModuleParameterDynamic extends unreal.UParticleModuleParameterBase {
  @:uproperty public var bUsesVelocity : Bool;
  
  /**
    Flags for optimizing update
  **/
  @:uproperty public var UpdateFlags : unreal.Int32;
  
  /**
    The dynamic parameters this module uses.
  **/
  @:uproperty public var DynamicParams : unreal.TArray<unreal.FEmitterDynamicParameter>;
  
}

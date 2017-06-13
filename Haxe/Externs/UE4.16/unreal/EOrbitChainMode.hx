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

@:glueCppIncludes("Particles/Orbit/ParticleModuleOrbit.h")
@:uname("EOrbitChainMode")
@:uextern @:uenum extern enum EOrbitChainMode {
  
  /**
    Add the module values to the previous results
    @DisplayName Add
  **/
  @DisplayName("Add")
  EOChainMode_Add;
  
  /**
    Multiply the module values by the previous results
    @DisplayName Scale
  **/
  @DisplayName("Scale")
  EOChainMode_Scale;
  
  /**
    'Break' the chain and apply the values from the previous results
    @DisplayName Link
  **/
  @DisplayName("Link")
  EOChainMode_Link;
  
}

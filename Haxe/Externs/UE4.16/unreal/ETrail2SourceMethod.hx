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

@:glueCppIncludes("Particles/Trail/ParticleModuleTrailSource.h")
@:uname("ETrail2SourceMethod")
@:uextern @:uenum extern enum ETrail2SourceMethod {
  
  /**
    Default        - use the emitter position.
        This is the fallback for when other modes can't be resolved.
  **/
  PET2SRCM_Default;
  
  /**
    Particle       - use the particles from a given emitter in the system.
        The name of the emitter should be set in SourceName.
  **/
  PET2SRCM_Particle;
  
  /**
    Actor          - use the actor as the source.
        The name of the actor should be set in SourceName.
  **/
  PET2SRCM_Actor;
  
}

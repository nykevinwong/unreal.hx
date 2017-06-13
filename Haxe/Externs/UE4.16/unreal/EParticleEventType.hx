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
  Event type
**/
@:glueCppIncludes("Particles/ParticleSystemComponent.h")
@:uname("EParticleEventType")
@:uextern @:uenum extern enum EParticleEventType {
  
  /**
    Any - allow any event
    @DisplayName Any
  **/
  @DisplayName("Any")
  EPET_Any;
  
  /**
    Spawn - a particle spawn event
    @DisplayName Spawn
  **/
  @DisplayName("Spawn")
  EPET_Spawn;
  
  /**
    Death - a particle death event
    @DisplayName Death
  **/
  @DisplayName("Death")
  EPET_Death;
  
  /**
    Collision - a particle collision event
    @DisplayName Collision
  **/
  @DisplayName("Collision")
  EPET_Collision;
  
  /**
    Burst - a particle burst event
    @DisplayName Burst
  **/
  @DisplayName("Burst")
  EPET_Burst;
  
  /**
    Blueprint - an event generated by level script
    @DisplayName Blueprint
  **/
  @DisplayName("Blueprint")
  EPET_Blueprint;
  
}

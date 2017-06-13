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

@:glueCppIncludes("Animation/AnimNotifies/AnimNotify_PlayParticleEffect.h")
@:uextern @:uclass extern class UAnimNotify_PlayParticleEffect extends unreal.UAnimNotify {
  
  /**
    SocketName to attach to
  **/
  @:uproperty public var SocketName : unreal.FName;
  
  /**
    Should attach to the bone/socket
  **/
  @:uproperty public var Attached : Bool;
  
  /**
    Rotation offset from socket
  **/
  @:uproperty public var RotationOffset : unreal.FRotator;
  
  /**
    Location offset from the socket
  **/
  @:uproperty public var LocationOffset : unreal.FVector;
  
  /**
    Particle System to Spawn
  **/
  @:uproperty public var PSTemplate : unreal.UParticleSystem;
  
}

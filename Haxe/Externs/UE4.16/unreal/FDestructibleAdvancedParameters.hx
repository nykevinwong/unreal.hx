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
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Parameters that are less-often used.
**/
@:glueCppIncludes("Engine/DestructibleMesh.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FDestructibleAdvancedParameters {
  
  /**
    Scale factor used to apply an impulse force along the normal of chunk when fractured.  This is used
    in order to "push" the pieces out as they fracture.
  **/
  @:uproperty public var FractureImpulseScale : unreal.Float32;
  
  /**
    If greater than 0, the chunks' speeds will not be allowed to exceed this value.  Use 0
    to disable this feature (this is the default).
  **/
  @:uproperty public var MaxChunkSpeed : unreal.Float32;
  
  /**
    Large impact force may be reported if rigid bodies are spawned inside one another.  In this case the realative velocity of the two
    objects will be low.  This variable allows the user to set a minimum velocity threshold for impacts to ensure that the objects are
    moving at a min velocity in order for the impact force to be considered.
  **/
  @:uproperty public var ImpactVelocityThreshold : unreal.Float32;
  
  /**
    Limits the amount of damage applied to a chunk.  This is useful for preventing the entire destructible
    from getting pulverized by a very large application of damage.  This can easily happen when impact damage is
    used, and the damage amount is proportional to the impact force (see forceToDamage).
  **/
  @:uproperty public var DamageCap : unreal.Float32;
  
}

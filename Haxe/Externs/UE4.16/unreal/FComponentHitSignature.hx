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

/**
  Delegate for notification of blocking collision against a specific component.
  NormalImpulse will be filled in for physics-simulating bodies, but will be zero for swept-component blocking collisions.
  @param HitComponent
  @param OtherActor
  @param OtherComp
  @param NormalImpulse
  @param Hit
  
**/
@:glueCppIncludes("Components/PrimitiveComponent.h")
@:uParamName("HitComponent")
@:uParamName("OtherActor")
@:uParamName("OtherComp")
@:uParamName("NormalImpulse")
@:uParamName("Hit")
typedef FComponentHitSignature = unreal.DynamicMulticastDelegate<FComponentHitSignature, unreal.UPrimitiveComponent->unreal.AActor->unreal.UPrimitiveComponent->unreal.FVector->unreal.Const<unreal.PRef<unreal.FHitResult>>->Void>;
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

@:glueCppIncludes("Particles/Location/ParticleModuleLocationPrimitiveCylinder.h")
@:uextern @:uclass extern class UParticleModuleLocationPrimitiveCylinder extends unreal.UParticleModuleLocationPrimitiveBase {
  
  /**
    Determine particle particle system axis that should represent the height of the cylinder.
    Can be one of the following:
      PMLPC_HEIGHTAXIS_X - Orient the height along the particle system X-axis.
      PMLPC_HEIGHTAXIS_Y - Orient the height along the particle system Y-axis.
      PMLPC_HEIGHTAXIS_Z - Orient the height along the particle system Z-axis.
  **/
  @:uproperty public var HeightAxis : unreal.CylinderHeightAxis;
  
  /**
    The height of the cylinder, centered about the location.
  **/
  @:uproperty public var StartHeight : unreal.FRawDistributionFloat;
  
  /**
    The radius of the cylinder.
  **/
  @:uproperty public var StartRadius : unreal.FRawDistributionFloat;
  
  /**
    If true, get the particle velocity form the radial distance inside the primitive.
  **/
  @:uproperty public var RadialVelocity : Bool;
  
}

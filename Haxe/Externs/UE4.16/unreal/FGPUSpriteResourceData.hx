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
  
  The source data for runtime resources.
**/
@:glueCppIncludes("Particles/TypeData/ParticleModuleTypeDataGpu.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FGPUSpriteResourceData {
  
  /**
    The distance at which PSA_FacingCameraDistanceBlend    is fully PSA_FacingCameraPosition
  **/
  @:uproperty public var MaxFacingCameraBlendDistance : unreal.Float32;
  
  /**
    The distance at which PSA_FacingCameraDistanceBlend    is fully PSA_Square
  **/
  @:uproperty public var MinFacingCameraBlendDistance : unreal.Float32;
  
  /**
    If true, removes the HMD view roll (e.g. in VR)
  **/
  @:uproperty public var bRemoveHMDRoll : Bool;
  
  /**
    Pivot offset in UV space for placing the verts of each particle.
  **/
  @:uproperty public var PivotOffset : unreal.FVector2D;
  
  /**
    The method for locking the particles to a particular axis.
  **/
  @:uproperty public var LockAxisFlag : unreal.EParticleAxisLock;
  
  /**
    Screen alignment for particles.
  **/
  @:uproperty public var ScreenAlignment : unreal.EParticleScreenAlignment;
  
  /**
    How much to stretch sprites based on camera motion blur.
  **/
  @:uproperty public var CameraMotionBlurAmount : unreal.Float32;
  
  /**
    Scale to apply to per-particle rotation rate.
  **/
  @:uproperty public var RotationRateScale : unreal.Float32;
  
  /**
    One minus the coefficient of friction applied to particles upon collision.
  **/
  @:uproperty public var OneMinusFriction : unreal.Float32;
  
  /**
    Control on reflection's random distribution when colliding. (1=uniform distribution)
  **/
  @:uproperty public var CollisionRandomDistribution : unreal.Float32;
  
  /**
    Control on reflection's random distribution spread.
  **/
  @:uproperty public var CollisionRandomSpread : unreal.Float32;
  
  /**
    Bias applied to relative time upon collision.
  **/
  @:uproperty public var CollisionTimeBias : unreal.Float32;
  
  /**
    Bias to apply to per-particle size for collision.
  **/
  @:uproperty public var CollisionRadiusBias : unreal.Float32;
  
  /**
    Scale to apply to per-particle size for collision.
  **/
  @:uproperty public var CollisionRadiusScale : unreal.Float32;
  
  /**
    Bias to apply to per-particle damping factor.
  **/
  @:uproperty public var ResilienceBias : unreal.Float32;
  
  /**
    Scale to apply to per-particle damping factor.
  **/
  @:uproperty public var ResilienceScale : unreal.Float32;
  
  /**
    Bias to apply to per-particle drag coefficient.
  **/
  @:uproperty public var DragCoefficientBias : unreal.Float32;
  
  /**
    Scale to apply to per-particle drag coefficient.
  **/
  @:uproperty public var DragCoefficientScale : unreal.Float32;
  
  /**
    Bias to apply to per-particle vector field scale.
  **/
  @:uproperty public var PerParticleVectorFieldBias : unreal.Float32;
  
  /**
    Scale to apply to per-particle vector field scale.
  **/
  @:uproperty public var PerParticleVectorFieldScale : unreal.Float32;
  
  /**
    Tightness override value for the global vector fields.
  **/
  @:uproperty public var GlobalVectorFieldTightness : unreal.Float32;
  
  /**
    Scale to apply to global vector fields.
  **/
  @:uproperty public var GlobalVectorFieldScale : unreal.Float32;
  @:uproperty public var OrbitPhaseRange : unreal.FVector;
  
  /**
    Phase offset of orbit around each axis.
  **/
  @:uproperty public var OrbitPhaseBase : unreal.FVector;
  @:uproperty public var OrbitFrequencyRange : unreal.FVector;
  
  /**
    Frequency at which the particle orbits around each axis.
  **/
  @:uproperty public var OrbitFrequencyBase : unreal.FVector;
  @:uproperty public var OrbitOffsetRange : unreal.FVector;
  
  /**
    Offset at which to orbit.
  **/
  @:uproperty public var OrbitOffsetBase : unreal.FVector;
  
  /**
    Constant acceleration to apply to particles.
  **/
  @:uproperty public var ConstantAcceleration : unreal.FVector;
  
  /**
    SizeBySpeed parameters. XY=SpeedScale ZW=MaxSpeedScale.
  **/
  @:uproperty public var SizeBySpeed : unreal.FVector4;
  
  /**
    Size of subimages. X:SubImageCountH Y:SubImageCountV Z:1/SubImageCountH W:1/SubImageCountV
  **/
  @:uproperty public var SubImageSize : unreal.FVector4;
  @:uproperty public var SimulationAttrCurveBias : unreal.FVector4;
  
  /**
    Scale and bias to be applied to the simulation attribute curves.
  **/
  @:uproperty public var SimulationAttrCurveScale : unreal.FVector4;
  @:uproperty public var MiscBias : unreal.FVector4;
  
  /**
    Scale and bias to be applied to the misc curve.
  **/
  @:uproperty public var MiscScale : unreal.FVector4;
  @:uproperty public var ColorBias : unreal.FVector4;
  
  /**
    Scale and bias to be applied to the color of sprites.
  **/
  @:uproperty public var ColorScale : unreal.FVector4;
  
  /**
    Quantized samples for simulation attributes.
  **/
  @:uproperty public var QuantizedSimulationAttrSamples : unreal.TArray<unreal.FColor>;
  
  /**
    Quantized samples for misc curve attributes to be evaluated at runtime.
  **/
  @:uproperty public var QuantizedMiscSamples : unreal.TArray<unreal.FColor>;
  
  /**
    Quantized color samples.
  **/
  @:uproperty public var QuantizedColorSamples : unreal.TArray<unreal.FColor>;
  
}

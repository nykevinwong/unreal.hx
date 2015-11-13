/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Vehicles/VehicleWheel.h")
@:uextern extern class UVehicleWheel extends unreal.UObject {
  
  /**
    Current velocity of the wheel center (change in location over time)
  **/
  public var Velocity : unreal.FVector;
  
  /**
    Worldspace location of this wheel last frame
  **/
  public var OldLocation : unreal.FVector;
  
  /**
    Worldspace location of this wheel
  **/
  public var Location : unreal.FVector;
  
  /**
    Lateral force the wheel is applying to the chassis
  **/
  public var DebugLatForce : unreal.Float32;
  
  /**
    Longitudinal force the wheel is applying to the chassis
  **/
  public var DebugLongForce : unreal.Float32;
  
  /**
    Wheel torque
  **/
  public var DebugWheelTorque : unreal.Float32;
  
  /**
    How much force the tire experiences at rest devided by how much force it is experiencing now
  **/
  public var DebugNormalizedTireLoad : unreal.Float32;
  
  /**
    Lateral slip experienced by the wheel
  **/
  public var DebugLatSlip : unreal.Float32;
  
  /**
    Longitudinal slip experienced by the wheel
  **/
  public var DebugLongSlip : unreal.Float32;
  
  /**
    Our index in the vehicle's (and setup's) wheels array
  **/
  public var WheelIndex : unreal.Int32;
  
  /**
    The vehicle that owns us
  **/
  public var VehicleSim : unreal.UWheeledVehicleMovementComponent;
  
  /**
    Max handbrake brake torque for this wheel (Nm). A handbrake should have a stronger brake torque
    than the brake. This will be ignored for wheels that are not affected by the handbrake.
  **/
  public var MaxHandBrakeTorque : unreal.Float32;
  
  /**
    max brake torque for this wheel (Nm)
  **/
  public var MaxBrakeTorque : unreal.Float32;
  
  /**
    The rate at which energy is dissipated from the spring. Standard cars have values between 0.8 and 1.2.
    values < 1 are more sluggish, values > 1 or more twitchy
  **/
  public var SuspensionDampingRatio : unreal.Float32;
  
  /**
    Oscillation frequency of suspension. Standard cars have values between 5 and 10
  **/
  public var SuspensionNaturalFrequency : unreal.Float32;
  
  /**
    How far the wheel can drop below the resting position
  **/
  public var SuspensionMaxDrop : unreal.Float32;
  
  /**
    How far the wheel can go above the resting position
  **/
  public var SuspensionMaxRaise : unreal.Float32;
  
  /**
    Vertical offset from vehicle center of mass where suspension forces are applied
  **/
  public var SuspensionForceOffset : unreal.Float32;
  
  /**
    How much longitudinal stiffness to have given longitudinal slip
  **/
  public var LongStiffValue : unreal.Float32;
  
  /**
    How much lateral stiffness to have given lateral slip
  **/
  public var LatStiffValue : unreal.Float32;
  
  /**
    Max normalized tire load at which the tire can deliver no more lateral stiffness no matter how much extra load is applied to the tire.
  **/
  public var LatStiffMaxLoad : unreal.Float32;
  
  /**
    Tire type for the wheel. Determines friction
  **/
  public var TireType : unreal.UTireType;
  
  /**
    Whether handbrake should affect this wheel
  **/
  public var bAffectedByHandbrake : Bool;
  
  /**
    steer angle in degrees for this wheel
  **/
  public var SteerAngle : unreal.Float32;
  
  /**
    Damping rate for this wheel (Kgm^2/s)
  **/
  public var DampingRate : unreal.Float32;
  
  /**
    Mass of this wheel
  **/
  public var Mass : unreal.Float32;
  
  /**
    Width of the wheel
  **/
  public var ShapeWidth : unreal.Float32;
  
  /**
    Radius of the wheel
  **/
  public var ShapeRadius : unreal.Float32;
  
  /**
    If BoneName is specified, offset the wheel from the bone's location.
    Otherwise this offsets the wheel from the vehicle's origin.
  **/
  public var Offset : unreal.FVector;
  
  /**
    If true, ShapeRadius and ShapeWidth will be used to automatically scale collision taken from CollisionMesh to match wheel size.
    If false, size of CollisionMesh won't be changed. Use if you want to scale wheels manually.
  **/
  public var bAutoAdjustCollisionSize : Bool;
  
  /**
    If set, shape won't be created, but mapped from chassis mesh
  **/
  public var bDontCreateShape : Bool;
  
  /**
    Static mesh with collision setup for wheel, will be used to create wheel shape
    (if empty, sphere will be added as wheel shape, check bDontCreateShape flag)
  **/
  public var CollisionMesh : unreal.UStaticMesh;
  @:final public function GetSteerAngle() : unreal.Float32;
  @:final public function GetRotationAngle() : unreal.Float32;
  @:final public function GetSuspensionOffset() : unreal.Float32;
  
}
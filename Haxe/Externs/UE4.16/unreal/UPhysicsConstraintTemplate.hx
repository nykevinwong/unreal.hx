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
@:glueCppIncludes("PhysicsEngine/PhysicsConstraintTemplate.h")
@:uextern @:uclass extern class UPhysicsConstraintTemplate extends unreal.UObject {
  #if WITH_EDITORONLY_DATA
  @:deprecated @:uproperty public var AngularBreakThreshold_DEPRECATED : unreal.Float32;
  @:deprecated @:uproperty public var bAngularBreakable_DEPRECATED : Bool;
  @:deprecated @:uproperty public var TwistLimitDamping_DEPRECATED : unreal.Float32;
  @:deprecated @:uproperty public var TwistLimitStiffness_DEPRECATED : unreal.Float32;
  @:deprecated @:uproperty public var SwingLimitDamping_DEPRECATED : unreal.Float32;
  @:deprecated @:uproperty public var SwingLimitStiffness_DEPRECATED : unreal.Float32;
  @:deprecated @:uproperty public var TwistLimitAngle_DEPRECATED : unreal.Float32;
  @:deprecated @:uproperty public var Swing2LimitAngle_DEPRECATED : unreal.Float32;
  @:deprecated @:uproperty public var Swing1LimitAngle_DEPRECATED : unreal.Float32;
  @:deprecated @:uproperty public var bTwistLimitSoft_DEPRECATED : Bool;
  @:deprecated @:uproperty public var bSwingLimitSoft_DEPRECATED : Bool;
  @:deprecated @:uproperty public var AngularTwistMotion_DEPRECATED : unreal.EAngularConstraintMotion;
  @:deprecated @:uproperty public var AngularSwing2Motion_DEPRECATED : unreal.EAngularConstraintMotion;
  @:deprecated @:uproperty public var AngularSwing1Motion_DEPRECATED : unreal.EAngularConstraintMotion;
  @:deprecated @:uproperty public var LinearBreakThreshold_DEPRECATED : unreal.Float32;
  @:deprecated @:uproperty public var bLinearBreakable_DEPRECATED : Bool;
  @:deprecated @:uproperty public var LinearLimitDamping_DEPRECATED : unreal.Float32;
  @:deprecated @:uproperty public var LinearLimitStiffness_DEPRECATED : unreal.Float32;
  @:deprecated @:uproperty public var bLinearLimitSoft_DEPRECATED : Bool;
  @:deprecated @:uproperty public var LinearLimitSize_DEPRECATED : unreal.Float32;
  @:deprecated @:uproperty public var LinearZMotion_DEPRECATED : unreal.ELinearConstraintMotion;
  @:deprecated @:uproperty public var LinearYMotion_DEPRECATED : unreal.ELinearConstraintMotion;
  @:deprecated @:uproperty public var LinearXMotion_DEPRECATED : unreal.ELinearConstraintMotion;
  @:deprecated @:uproperty public var ProjectionAngularTolerance_DEPRECATED : unreal.Float32;
  @:deprecated @:uproperty public var ProjectionLinearTolerance_DEPRECATED : unreal.Float32;
  @:deprecated @:uproperty public var bEnableProjection_DEPRECATED : Bool;
  @:deprecated @:uproperty public var SecAxis2_DEPRECATED : unreal.FVector;
  @:deprecated @:uproperty public var PriAxis2_DEPRECATED : unreal.FVector;
  @:deprecated @:uproperty public var Pos2_DEPRECATED : unreal.FVector;
  @:deprecated @:uproperty public var SecAxis1_DEPRECATED : unreal.FVector;
  @:deprecated @:uproperty public var PriAxis1_DEPRECATED : unreal.FVector;
  @:deprecated @:uproperty public var Pos1_DEPRECATED : unreal.FVector;
  @:deprecated @:uproperty public var ConstraintBone2_DEPRECATED : unreal.FName;
  @:deprecated @:uproperty public var ConstraintBone1_DEPRECATED : unreal.FName;
  @:deprecated @:uproperty public var JointName_DEPRECATED : unreal.FName;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Handles to the constraint profiles applicable to this constraint
  **/
  @:uproperty public var ProfileHandles : unreal.TArray<unreal.FPhysicsConstraintProfileHandle>;
  @:uproperty public var DefaultInstance : unreal.FConstraintInstance;
  
}

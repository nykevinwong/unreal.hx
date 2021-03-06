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
package unreal.animgraphruntime;

/**
  Constraint setup struct, holds data required to build a physics constraint
**/
@:umodule("AnimGraphRuntime")
@:glueCppIncludes("BoneControllers/AnimNode_AnimDynamics.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FAnimPhysConstraintSetup {
  
  /**
    If all axes are locked we can use 3 linear limits instead of the 6 needed for limited axes
  **/
  @:uproperty public var bLinearFullyLocked : Bool;
  
  /**
    Target direction to face for body1 (in body0 local space)
  **/
  @:uproperty public var AngularTarget : unreal.FVector;
  
  /**
    Axis on body1 to match to the angular target direction.
  **/
  @:uproperty public var AngularTargetAxis : unreal.AnimPhysTwistAxis;
  @:uproperty public var AngularLimitsMax : unreal.FVector;
  @:uproperty public var AngularLimitsMin : unreal.FVector;
  
  /**
    Z-axis limit for angular motion when using the "Angular" constraint type (Set to 0 to lock, or 180 to remain free)
  **/
  @:deprecated @:uproperty public var AngularZAngle_DEPRECATED : unreal.Float32;
  
  /**
    Y-axis limit for angular motion when using the "Angular" constraint type (Set to 0 to lock, or 180 to remain free)
  **/
  @:deprecated @:uproperty public var AngularYAngle_DEPRECATED : unreal.Float32;
  
  /**
    X-axis limit for angular motion when using the "Angular" constraint type (Set to 0 to lock, or 180 to remain free)
  **/
  @:deprecated @:uproperty public var AngularXAngle_DEPRECATED : unreal.Float32;
  
  /**
    Angle to use when constraining using a cone
  **/
  @:uproperty public var ConeAngle : unreal.Float32;
  
  /**
    Axis to consider for twist when constraining angular motion (forward axis)
  **/
  @:uproperty public var TwistAxis : unreal.AnimPhysTwistAxis;
  
  /**
    Method to use when constraining angular motion
  **/
  @:uproperty public var AngularConstraintType : unreal.animgraphruntime.AnimPhysAngularConstraintType;
  
  /**
    Maximum linear movement per-axis (Set zero here and in the min limit to lock)
  **/
  @:uproperty public var LinearAxesMax : unreal.FVector;
  
  /**
    Minimum linear movement per-axis (Set zero here and in the max limit to lock)
  **/
  @:uproperty public var LinearAxesMin : unreal.FVector;
  
  /**
    Whether to limit the linear Z axis
  **/
  @:uproperty public var LinearZLimitType : unreal.animgraphruntime.AnimPhysLinearConstraintType;
  
  /**
    Whether to limit the linear Y axis
  **/
  @:uproperty public var LinearYLimitType : unreal.animgraphruntime.AnimPhysLinearConstraintType;
  
  /**
    Whether to limit the linear X axis
  **/
  @:uproperty public var LinearXLimitType : unreal.animgraphruntime.AnimPhysLinearConstraintType;
  
}

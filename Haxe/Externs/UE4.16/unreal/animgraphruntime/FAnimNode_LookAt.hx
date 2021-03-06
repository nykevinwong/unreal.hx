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
  Simple controller that make a bone to look at the point or another bone
**/
@:umodule("AnimGraphRuntime")
@:glueCppIncludes("BoneControllers/AnimNode_LookAt.h")
@:uextern @:ustruct extern class FAnimNode_LookAt extends unreal.animgraphruntime.FAnimNode_SkeletalControlBase {
  @:uproperty public var InterpolationTriggerThreashold : unreal.Float32;
  @:uproperty public var InterpolationTime : unreal.Float32;
  @:uproperty public var InterpolationType : unreal.animgraphruntime.EInterpolationBlend;
  
  /**
    Look at Clamp value in degree - if you're look at axis is Z, only X, Y degree of clamp will be used
  **/
  @:uproperty public var LookAtClamp : unreal.Float32;
  @:uproperty public var LookUp_Axis : unreal.FAxis;
  
  /**
    Custom look up axis in local space. Only used if LookUpAxis==EAxisOption::Custom
  **/
  @:deprecated @:uproperty public var CustomLookUpAxis_DEPRECATED : unreal.FVector;
  
  /**
    Look up axis in local space
  **/
  @:deprecated @:uproperty public var LookUpAxis_DEPRECATED : unreal.EAxisOption;
  
  /**
    Whether or not to use Look up axis
  **/
  @:uproperty public var bUseLookUpAxis : Bool;
  @:uproperty public var LookAt_Axis : unreal.FAxis;
  
  /**
    Custom look up axis in local space. Only used if LookAtAxis==EAxisOption::Custom
  **/
  @:deprecated @:uproperty public var CustomLookAtAxis_DEPRECATED : unreal.FVector;
  
  /**
    Look at axis, which axis to align to look at point
  **/
  @:deprecated @:uproperty public var LookAtAxis_DEPRECATED : unreal.EAxisOption;
  
  /**
    Target Offset. It's in world space if LookAtBone is empty or it is based on LookAtBone or LookAtSocket in their local space
  **/
  @:uproperty public var LookAtLocation : unreal.FVector;
  
  /**
    Target socket to look at. Used if LookAtBone is empty. - You can use  LookAtLocation if you need offset from this point. That location will be used in their local space. *
  **/
  @:uproperty public var LookAtSocket : unreal.FName;
  
  /**
    Target Bone to look at - You can use  LookAtLocation if you need offset from this point. That location will be used in their local space. *
  **/
  @:uproperty public var LookAtBone : unreal.FBoneReference;
  
  /**
    Name of bone to control. This is the main bone chain to modify from. *
  **/
  @:uproperty public var BoneToModify : unreal.FBoneReference;
  
}

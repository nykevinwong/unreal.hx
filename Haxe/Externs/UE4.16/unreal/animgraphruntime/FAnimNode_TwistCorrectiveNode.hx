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
  This is the node that apply corrective morphtarget for twist
  Good example is that if you twist your neck too far right or left, you're going to see odd stretch shape of neck,
  This node can detect the angle and apply morphtarget curve
  This isn't the twist control node for bone twist
**/
@:umodule("AnimGraphRuntime")
@:glueCppIncludes("BoneControllers/AnimNode_TwistCorrectiveNode.h")
@:uextern @:ustruct extern class FAnimNode_TwistCorrectiveNode extends unreal.animgraphruntime.FAnimNode_SkeletalControlBase {
  @:uproperty public var Curve : unreal.FAnimCurveParam;
  
  /**
    Maximum value to apply to the destination (remapped from the input range)
  **/
  @:uproperty public var RemappedMax : unreal.Float32;
  
  /**
    Minimum value to apply to the destination (remapped from the input range)
  **/
  @:uproperty public var RemappedMin : unreal.Float32;
  
  /**
    Maximum limit of the input value (mapped to RemappedMax, only used when limiting the source range)
    We can't go more than 180 right now because this is dot product driver
  **/
  @:uproperty public var RangeMax : unreal.Float32;
  
  /**
    Normal of the Plane that we'd like to calculate angle calculation from in BaseFrame. Please note we're looking for Normal Axis
  **/
  @:uproperty public var TwistPlaneNormalAxis : unreal.FAxis;
  
  /**
    Transform component to use as input
  **/
  @:uproperty public var TwistFrame : unreal.animgraphruntime.FReferenceBoneFrame;
  
  /**
    Base Frame of the reference for the twist node
  **/
  @:uproperty public var BaseFrame : unreal.animgraphruntime.FReferenceBoneFrame;
  
}

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

@:glueCppIncludes("Animation/AnimClassData.h")
@:uextern @:uclass extern class UAnimClassData extends unreal.UObject implements unreal.IAnimClassInterface {
  
  /**
    Array of sync group names in the order that they are requested during compile
  **/
  @:uproperty public var SyncGroupNames : unreal.TArray<unreal.FName>;
  
  /**
    The array of anim nodes
  **/
  @:uproperty public var AnimNodeProperties : unreal.TArray<unreal.UStructProperty>;
  @:uproperty public var RootAnimNodeProperty : unreal.UStructProperty;
  
  /**
    Indices for each of the saved pose nodes that require updating, in the order they need to get updates.
  **/
  @:uproperty public var OrderedSavedPoseIndices : unreal.TArray<unreal.Int32>;
  
  /**
    The index of the root node in the animation tree
  **/
  @:uproperty public var RootAnimNodeIndex : unreal.Int32;
  
  /**
    A list of anim notifies that state machines (or anything else) may reference
  **/
  @:uproperty public var AnimNotifies : unreal.TArray<unreal.FAnimNotifyEvent>;
  
  /**
    Target skeleton for this blueprint class
  **/
  @:uproperty public var TargetSkeleton : unreal.USkeleton;
  
  /**
    List of state machines present in this blueprint class
  **/
  @:uproperty public var BakedStateMachines : unreal.TArray<unreal.FBakedAnimationStateMachine>;
  // AnimClassInterface interface implementation
  
}

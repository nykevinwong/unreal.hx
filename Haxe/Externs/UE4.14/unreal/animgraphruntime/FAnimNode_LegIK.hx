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
package unreal.animgraphruntime;

@:umodule("AnimGraphRuntime")
@:glueCppIncludes("BoneControllers/AnimNode_LegIK.h")
@:uextern @:ustruct extern class FAnimNode_LegIK extends unreal.animgraphruntime.FAnimNode_SkeletalControlBase {
  @:uproperty public var LegsData : unreal.TArray<unreal.animgraphruntime.FAnimLegIKData>;
  @:uproperty public var LegsDefinition : unreal.TArray<unreal.animgraphruntime.FAnimLegIKDefinition>;
  
  /**
    Max Number of Iterations.
  **/
  @:uproperty public var MaxIterations : unreal.Int32;
  
  /**
    Tolerance for reaching IK Target, in unreal units.
  **/
  @:uproperty public var ReachPrecision : unreal.Float32;
  
}

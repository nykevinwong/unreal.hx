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
package unreal.animgraphruntime;


/**
  @TODO: Comment
**/
@:umodule("AnimGraphRuntime")
@:glueCppIncludes("AnimNodes/AnimNode_RotationOffsetBlendSpace.h")
@:uextern @:ustruct extern class FAnimNode_RotationOffsetBlendSpace extends unreal.animgraphruntime.FAnimNode_BlendSpacePlayer {
  @:uproperty public var bIsLODEnabled : Bool;
  
  /**
    * Max LOD that this node is allowed to run
    * For example if you have LODThreadhold to be 2, it will run until LOD 2 (based on 0 index)
    * when the component LOD becomes 3, it will stop update/evaluate
    * currently transition would be issue and that has to be re-visited
  **/
  @:uproperty public var LODThreshold : unreal.Int32;
  @:uproperty public var BasePose : unreal.FPoseLink;
  
}

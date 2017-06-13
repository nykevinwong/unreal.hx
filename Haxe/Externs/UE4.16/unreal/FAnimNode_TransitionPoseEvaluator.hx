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
  Animation data node for state machine transitions.
  Can be set to supply either the animation data from the transition source (From State) or the transition destination (To State).
**/
@:glueCppIncludes("Animation/AnimNode_TransitionPoseEvaluator.h")
@:uextern @:ustruct extern class FAnimNode_TransitionPoseEvaluator extends unreal.FAnimNode_Base {
  @:uproperty public var CacheFramesRemaining : unreal.Int32;
  @:uproperty public var FramesToCachePose : unreal.Int32;
  @:uproperty public var EvaluatorMode : unreal.EEvaluatorMode;
  @:uproperty public var DataSource : unreal.EEvaluatorDataSource;
  
}

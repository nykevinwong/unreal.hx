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
package unreal.animgraph;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  Editor node for FABRIK IK skeletal controller
**/
@:umodule("AnimGraph")
@:glueCppIncludes("AnimGraphNode_Fabrik.h")
@:uextern @:uclass extern class UAnimGraphNode_Fabrik extends unreal.animgraph.UAnimGraphNode_SkeletalControlBase {
  @:uproperty public var Node : unreal.animgraphruntime.FAnimNode_Fabrik;
  
}

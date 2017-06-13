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
  This is the base class for any animation graph nodes that generate or consume an animation pose in
  the animation blend graph.
  
  Any concrete implementations will be paired with a runtime graph node derived from FAnimNode_Base
**/
@:umodule("AnimGraph")
@:glueCppIncludes("AnimGraphNode_Base.h")
@:uextern @:uclass extern class UAnimGraphNode_Base extends unreal.blueprintgraph.UK2Node {
  @:uproperty public var BlueprintUsage : unreal.animgraph.EBlueprintUsage;
  @:uproperty public var ShowPinForProperties : unreal.TArray<unreal.blueprintgraph.FOptionalPinFromProperty>;
  
}

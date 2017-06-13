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
package unreal.aimodule;


/**
  Make Noise task node.
  A task node that calls MakeNoise() on this Pawn when executed.
**/
@:umodule("AIModule")
@:glueCppIncludes("BehaviorTree/Tasks/BTTask_MakeNoise.h")
@:uextern @:uclass extern class UBTTask_MakeNoise extends unreal.aimodule.UBTTaskNode {
  
  /**
    Loudnes of generated noise
  **/
  @:uproperty public var Loudnes : unreal.Float32;
  
}

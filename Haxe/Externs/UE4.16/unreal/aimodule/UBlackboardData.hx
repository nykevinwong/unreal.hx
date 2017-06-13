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

@:umodule("AIModule")
@:glueCppIncludes("BehaviorTree/BlackboardData.h")
@:uextern @:uclass extern class UBlackboardData extends unreal.UDataAsset {
  
  /**
    blackboard keys
  **/
  @:uproperty public var Keys : unreal.TArray<unreal.aimodule.FBlackboardEntry>;
  #if WITH_EDITORONLY_DATA
  
  /**
    all keys inherited from parent chain
  **/
  @:uproperty public var ParentKeys : unreal.TArray<unreal.aimodule.FBlackboardEntry>;
  #end // WITH_EDITORONLY_DATA
  
  /**
    parent blackboard (keys can be overridden)
  **/
  @:uproperty public var Parent : unreal.aimodule.UBlackboardData;
  
}

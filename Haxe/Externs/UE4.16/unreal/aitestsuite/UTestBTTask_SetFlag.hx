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
package unreal.aitestsuite;


/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("AITestSuite")
@:glueCppIncludes("BehaviorTree/TestBTTask_SetFlag.h")
@:noClass @:uextern @:uclass extern class UTestBTTask_SetFlag extends unreal.aimodule.UBTTaskNode {
  @:uproperty public var TaskResult : unreal.aimodule.EBTNodeResult;
  @:uproperty public var bValue : Bool;
  @:uproperty public var KeyName : unreal.FName;
  
}

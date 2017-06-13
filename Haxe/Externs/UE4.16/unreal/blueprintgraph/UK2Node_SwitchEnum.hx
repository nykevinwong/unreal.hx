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
package unreal.blueprintgraph;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("BlueprintGraph")
@:glueCppIncludes("K2Node_SwitchEnum.h")
@:uextern @:uclass extern class UK2Node_SwitchEnum extends unreal.blueprintgraph.UK2Node_Switch implements unreal.blueprintgraph.INodeDependingOnEnumInterface {
  
  /**
    List of the current entries in the enum
  **/
  @:uproperty public var EnumFriendlyNames : unreal.TArray<unreal.FText>;
  
  /**
    List of the current entries in the enum
  **/
  @:uproperty public var EnumEntries : unreal.TArray<unreal.FName>;
  
  /**
    Name of the enum being switched on
  **/
  @:uproperty public var Enum : unreal.UEnum;
  // NodeDependingOnEnumInterface interface implementation
  
}

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
@:glueCppIncludes("K2Node_LocalVariable.h")
@:uextern @:uclass extern class UDEPRECATED_K2Node_LocalVariable extends unreal.blueprintgraph.UK2Node_TemporaryVariable {
  
  /**
    The local variable's assigned tooltip
  **/
  @:uproperty public var VariableTooltip : unreal.FText;
  
  /**
    If this is not an override, allow user to specify a name for the function created by this entry point
  **/
  @:uproperty public var CustomVariableName : unreal.FName;
  
}

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
@:glueCppIncludes("K2Node_DoOnceMultiInput.h")
@:uextern @:uclass extern class UK2Node_DoOnceMultiInput extends unreal.blueprintgraph.UK2Node {
  
  /**
    Reference to the integer that contains
  **/
  @:uproperty public var DataNode : unreal.blueprintgraph.UK2Node_TemporaryVariable;
  
  /**
    The number of additional input pins to generate for this node (2 base pins are not included)
  **/
  @:uproperty public var NumAdditionalInputs : unreal.Int32;
  
}

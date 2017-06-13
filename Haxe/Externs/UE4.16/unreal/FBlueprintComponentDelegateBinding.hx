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
  Entry for a delegate to assign after a blueprint has been instanced
**/
@:glueCppIncludes("Engine/ComponentDelegateBinding.h")
@:uextern @:ustruct extern class FBlueprintComponentDelegateBinding {
  
  /**
    Name of function that we want to bind to the delegate.
  **/
  @:uproperty public var FunctionNameToBind : unreal.FName;
  
  /**
    Name of property on the component that we want to assign to.
  **/
  @:uproperty public var DelegatePropertyName : unreal.FName;
  
  /**
    Name of component property that contains delegate we want to assign to.
  **/
  @:uproperty public var ComponentPropertyName : unreal.FName;
  
}

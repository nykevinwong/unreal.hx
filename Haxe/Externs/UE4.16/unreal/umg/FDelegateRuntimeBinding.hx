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
package unreal.umg;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h", "Blueprint/WidgetBlueprintGeneratedClass.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FDelegateRuntimeBinding {
  
  /**
    The kind of binding we're performing, are we binding to a property or a function.
  **/
  @:uproperty public var Kind : unreal.umg.EBindingKind;
  @:uproperty public var SourcePath : unreal.umg.FDynamicPropertyPath;
  
  /**
    The function or property we're binding to on the source object.
  **/
  @:uproperty public var FunctionName : unreal.FName;
  
  /**
    The property on the widget that will have a binding placed on it.
  **/
  @:uproperty public var PropertyName : unreal.FName;
  
  /**
    The widget that will be bound to the live data.
  **/
  @:uproperty public var ObjectName : unreal.FString;
  
}

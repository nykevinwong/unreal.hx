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
package unreal.umgeditor;

@:umodule("UMGEditor")
@:glueCppIncludes("WidgetBlueprint.h")
@:uextern @:ustruct extern class FDelegateEditorBinding {
  @:uproperty public var Kind : unreal.umg.EBindingKind;
  
  /**
    If it's an actual Function Graph in the blueprint that we're bound to, there's a GUID we can use to lookup that function, to deal with renames better.  This is that GUID.
  **/
  @:uproperty public var MemberGuid : unreal.FGuid;
  @:uproperty public var SourcePath : unreal.umgeditor.FEditorPropertyPath;
  
  /**
    The property we are bindings to directly on the source object.
  **/
  @:uproperty public var SourceProperty : unreal.FName;
  
  /**
    The function that was generated to return the SourceProperty
  **/
  @:uproperty public var FunctionName : unreal.FName;
  
  /**
    The property on the ObjectName that we are binding to.
  **/
  @:uproperty public var PropertyName : unreal.FName;
  
  /**
    The member widget the binding is on, must be a direct variable of the UUserWidget.
  **/
  @:uproperty public var ObjectName : unreal.FString;
  
}

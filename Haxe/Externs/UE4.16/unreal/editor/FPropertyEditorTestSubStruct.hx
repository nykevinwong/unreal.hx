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
package unreal.editor;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Editor/PropertyEditorTestObject.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FPropertyEditorTestSubStruct {
  @:uproperty public var CustomizedStructInsideUncustomizedStruct2 : unreal.FStringAssetReference;
  @:uproperty public var CustomizedStructInsideUncustomizedStruct : unreal.FLinearColor;
  @:uproperty public var SecondProperty : unreal.Int32;
  @:uproperty public var FirstProperty : unreal.Int32;
  
}

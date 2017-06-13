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
  Configure settings for the 2D Level Editor
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Settings/EditorProjectSettings.h")
@:uextern @:uclass extern class ULevelEditor2DSettings extends unreal.UDeveloperSettings {
  
  /**
    Snap layers that are displayed in the viewport toolbar
  **/
  @:uproperty public var SnapLayers : unreal.TArray<unreal.editor.FMode2DLayer>;
  
  /**
    Snap axis
  **/
  @:uproperty public var SnapAxis : unreal.editor.ELevelEditor2DAxis;
  
  /**
    If enabled will allow 2D mode
  **/
  @:uproperty public var bEnableSnapLayers : Bool;
  
  /**
    If enabled will allow 2D mode
  **/
  @:uproperty public var bEnable2DWidget : Bool;
  
}

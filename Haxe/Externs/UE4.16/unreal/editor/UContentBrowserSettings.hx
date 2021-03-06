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
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.editor;

/**
  Implements the Level Editor's loading and saving settings.
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Settings/ContentBrowserSettings.h")
@:uextern @:uclass extern class UContentBrowserSettings extends unreal.UObject {
  
  /**
    Whether to display folders in the assets view of the content browser. Note that this implies 'Show Only Assets in Selected Folders'.
  **/
  @:uproperty public var DisplayFolders : Bool;
  
  /**
    Whether to render thumbnails for loaded assets in real-time in the Content Browser
  **/
  @:uproperty public var RealTimeThumbnails : Bool;
  
  /**
    The number of objects to load at once in the Content Browser before displaying a warning about loading many assets
  **/
  @:uproperty public var NumObjectsToLoadBeforeWarning : unreal.Int32;
  
}

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
package unreal.landscapeeditor;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:umodule("LandscapeEditor")
@:glueCppIncludes("LandscapeEditorObject.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FLandscapeImportLayer extends unreal.landscape.FLandscapeImportLayerInfo {
  @:uproperty public var ErrorMessage : unreal.FText;
  @:uproperty public var ImportResult : unreal.landscapeeditor.ELandscapeImportResult;
  @:uproperty public var ThumbnailMIC : unreal.landscape.ULandscapeMaterialInstanceConstant;
  
}

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
package unreal.worldbrowser;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  FTileLODEntryDetails
  
  Helper class to hold tile LOD level description
**/
@:umodule("WorldBrowser")
@:glueCppIncludes("Private/Tiles/WorldTileDetails.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FTileLODEntryDetails {
  @:uproperty public var SimplificationDetails : unreal.FLevelSimplificationDetails;
  
  /**
    Relative to original tile streaming distance
  **/
  @:uproperty public var Distance : unreal.Int32;
  
  /**
    Maximum deviation of details percentage
  **/
  @:uproperty public var LODIndex : unreal.Int32;
  
}

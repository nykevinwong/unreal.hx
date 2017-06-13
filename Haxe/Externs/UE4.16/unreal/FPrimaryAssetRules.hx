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
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Structure defining rules for what to do with assets, this is defined per type and can be overridden per asset
**/
@:glueCppIncludes("Engine/AssetManagerTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FPrimaryAssetRules {
  
  /**
    Rule describing when this asset should be cooked
  **/
  @:uproperty public var CookRule : unreal.EPrimaryAssetCookRule;
  
  /**
    Assets will be put into this chunk id specifically, if set to something other than -1
  **/
  @:uproperty public var ChunkId : unreal.Int32;
  
  /**
    If true, will apply this rule to all referenced secondary assets recursively, if they are not managed by a higher priority Primary Asset
  **/
  @:uproperty public var bApplyRecursively : Bool;
  
  /**
    Primary Assets with a higher priority will take precedence over lower priorities when assigning management for referenced assets. If priorities match, both will manage the same secondary asset
  **/
  @:uproperty public var Priority : unreal.Int32;
  
}

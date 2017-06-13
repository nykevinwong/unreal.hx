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
  LOD settings for a single texture group.
**/
@:glueCppIncludes("Engine/TextureLODSettings.h")
@:uextern @:ustruct extern class FTextureLODGroup {
  @:uproperty public var MipFilter : unreal.FName;
  @:uproperty public var MinMagFilter : unreal.FName;
  @:uproperty public var MaxLODSize : unreal.Int32;
  @:uproperty public var MinLODSize : unreal.Int32;
  
  /**
    Defines how the the mip-map generation works, e.g. sharpening
  **/
  @:uproperty public var MipGenSettings : unreal.TextureMipGenSettings;
  
  /**
    Number of mip-levels that can be streamed. -1 means all mips can stream.
  **/
  @:uproperty public var NumStreamedMips : unreal.Int32;
  
  /**
    Group LOD bias.
  **/
  @:uproperty public var LODBias : unreal.Int32;
  
  /**
    Minimum LOD mip count below which the code won't bias.
  **/
  @:uproperty public var Group : unreal.TextureGroup;
  
}

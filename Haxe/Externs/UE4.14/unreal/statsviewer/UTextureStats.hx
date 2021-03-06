/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.statsviewer;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  Statistics page for textures.
**/
@:umodule("StatsViewer")
@:glueCppIncludes("TextureStats.h")
@:uextern @:uclass extern class UTextureStats extends unreal.UObject {
  
  /**
    Texture path without the name "package.[group.]"
  **/
  @:uproperty public var Path : unreal.FString;
  
  /**
    Relative time it was used for rendering the last time
  **/
  @:uproperty public var LastTimeRendered : unreal.Float32;
  
  /**
    The number of times the texture is used
  **/
  @:uproperty public var NumUses : unreal.Int32;
  
  /**
    The memory used when the texture is fully loaded in KB
  **/
  @:uproperty public var FullyLoadedKB : unreal.Float32;
  
  /**
    The memory used currently in KB
  **/
  @:uproperty public var CurrentKB : unreal.Float32;
  
  /**
    LOD Bias for this texture. (Texture LODBias + Texture group)
  **/
  @:uproperty public var LODBias : unreal.Int32;
  
  /**
    The texture group, TEXTUREGROUP_MAX is not used, e.g. TEXTUREGROUP_World
  **/
  @:uproperty public var Group : unreal.TextureGroup;
  
  /**
    The texture format, e.g. PF_DXT1
  **/
  @:uproperty public var Format : unreal.EPixelFormat;
  
  /**
    Current Dimension e.g 256x256
  **/
  @:uproperty public var CurrentDim : unreal.FVector2D;
  
  /**
    Max Dimension e.g. 256x256, not including the format
  **/
  @:uproperty public var MaxDim : unreal.FVector2D;
  
  /**
    Texture type e.g. 2D, 3D, Cube, "" if not known, ...
  **/
  @:uproperty public var Type : unreal.FString;
  
  /**
    Actor(s) - click to select & zoom Actor(s)
  **/
  @:uproperty public var Actors : unreal.TArray<unreal.TWeakObjectPtr<unreal.AActor>>;
  
  /**
    Texture - click to go to asset
  **/
  @:uproperty public var Texture : unreal.TWeakObjectPtr<unreal.UTexture>;
  
}

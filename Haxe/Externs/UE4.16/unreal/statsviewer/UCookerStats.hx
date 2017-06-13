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
package unreal.statsviewer;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  Statistics for a cooked asset.
  
  Note: We assume that asset files are not larger than 2GB, because the StatsViewer is still lacking int64 support.
**/
@:umodule("StatsViewer")
@:glueCppIncludes("CookerStats.h")
@:uextern @:uclass extern class UCookerStats extends unreal.UObject {
  
  /**
    Asset path without the name "package.[group.]"
  **/
  @:uproperty public var Path : unreal.FString;
  
  /**
    The size of the assets after cooking.
  **/
  @:uproperty public var SizeAfter : unreal.Float32;
  
  /**
    The size of the assets before cooking.
  **/
  @:uproperty public var SizeBefore : unreal.Float32;
  
  /**
    The assets contained in the file.
  **/
  @:uproperty public var Assets : unreal.TArray<unreal.TWeakObjectPtr<unreal.UObject>>;
  
}

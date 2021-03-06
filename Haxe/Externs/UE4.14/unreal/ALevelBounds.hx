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
package unreal;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  Defines level bounds
  Updates bounding box automatically based on actors transformation changes or holds fixed user defined bounding box
  Uses only actors where AActor::IsLevelBoundsRelevant() == true
**/
@:glueCppIncludes("Engine/LevelBounds.h")
@:uextern @:uclass extern class ALevelBounds extends unreal.AActor {
  
  /**
    Whether to automatically update actor bounds based on all relevant actors bounds belonging to the same level
  **/
  @:uproperty public var bAutoUpdateBounds : Bool;
  
}

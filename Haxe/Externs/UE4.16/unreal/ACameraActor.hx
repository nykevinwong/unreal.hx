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
  A CameraActor is a camera viewpoint that can be placed in a level.
**/
@:glueCppIncludes("Camera/CameraActor.h")
@:uextern @:uclass extern class ACameraActor extends unreal.AActor {
  @:uproperty public var SceneComponent : unreal.USceneComponent;
  @:uproperty public var CameraComponent : unreal.UCameraComponent;
  
  /**
    Returns index of the player for whom we auto-activate, or INDEX_NONE (-1) if disabled.
  **/
  @:ufunction @:thisConst @:final public function GetAutoActivatePlayerIndex() : unreal.Int32;
  
}

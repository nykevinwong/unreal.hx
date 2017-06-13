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
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  Simple class to store 2D camera information.
**/
@:glueCppIncludes("Engine/BookMark2D.h")
@:noClass @:uextern @:uclass extern class UBookMark2D extends unreal.UObject {
  
  /**
    Location of the camera
  **/
  @:uproperty public var Location : unreal.FIntPoint;
  
  /**
    Zoom of the camera
  **/
  @:uproperty public var Zoom2D : unreal.Float32;
  
}

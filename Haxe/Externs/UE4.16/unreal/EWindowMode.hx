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
  Supported windowing modes (mirrored from GenericWindow.h)
**/
@:glueCppIncludes("GameFramework/GameUserSettings.h")
@:uname("EWindowMode.Type")
@:uextern @:uenum extern enum EWindowMode {
  
  /**
    The window is in true fullscreen mode
  **/
  Fullscreen;
  
  /**
    The window has no border and takes up the entire area of the screen
  **/
  WindowedFullscreen;
  
  /**
    The window has a border and may not take up the entire screen area
  **/
  Windowed;
  
}

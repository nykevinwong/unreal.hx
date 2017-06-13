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
package unreal.androidruntimesettings;


/**
  The default install location for the application
**/
@:umodule("AndroidRuntimeSettings")
@:glueCppIncludes("AndroidRuntimeSettings.h")
@:uname("EAndroidInstallLocation.Type")
@:uextern @:uenum extern enum EAndroidInstallLocation {
  
  /**
    Install your app only on internal device storage
  **/
  InternalOnly;
  
  /**
    Install your app on external storage when available
  **/
  PreferExternal;
  
  /**
    Internal storage is preferred over external, unless the interal storage is low on space
  **/
  Auto;
  
}

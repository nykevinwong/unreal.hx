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
package unreal.iosruntimesettings;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  IOS Build resource file struct, used to serialize Directorys to the configs for use in the build system,
**/
@:umodule("IOSRuntimeSettings")
@:glueCppIncludes("IOSRuntimeSettings.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FIOSBuildResourceDirectory {
  
  /**
    The path to the file.
  **/
  @:uproperty public var Path : unreal.FString;
  
}

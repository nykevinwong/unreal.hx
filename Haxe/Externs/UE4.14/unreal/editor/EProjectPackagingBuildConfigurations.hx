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
package unreal.editor;


/**
  Enumerates the available build configurations for project packaging.
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Settings/ProjectPackagingSettings.h")
@:uname("EProjectPackagingBuildConfigurations")
@:uextern @:uenum extern enum EProjectPackagingBuildConfigurations {
  
  /**
    Debug configuration.
    @DisplayName DebugGame
  **/
  @DisplayName("DebugGame")
  PPBC_DebugGame;
  
  /**
    Development configuration.
    @DisplayName Development
  **/
  @DisplayName("Development")
  PPBC_Development;
  
  /**
    Shipping configuration.
    @DisplayName Shipping
  **/
  @DisplayName("Shipping")
  PPBC_Shipping;
  
}

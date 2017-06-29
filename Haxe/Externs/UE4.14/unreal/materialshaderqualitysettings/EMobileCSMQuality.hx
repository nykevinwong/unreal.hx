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
package unreal.materialshaderqualitysettings;

@:umodule("MaterialShaderQualitySettings")
@:glueCppIncludes("ShaderPlatformQualitySettings.h")
@:uname("EMobileCSMQuality")
@:class @:uextern @:uenum extern enum EMobileCSMQuality {
  
  /**
    // Lowest quality, no filtering.
  **/
  NoFiltering;
  
  /**
    Medium quality, 1x1 PCF filtering.
    @DisplayName 1x1 PCF
  **/
  @DisplayName("1x1 PCF")
  PCF_1x1;
  
  /**
    Highest quality, 2x2 PCF filtering.
    @DisplayName 2x2 PCF
  **/
  @DisplayName("2x2 PCF")
  PCF_2x2;
  
}
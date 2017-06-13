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
  Used by FPostProcessSettings Auto Exposure
**/
@:glueCppIncludes("Engine/Scene.h")
@:uname("EAutoExposureMethod")
@:uextern @:uenum extern enum EAutoExposureMethod {
  
  /**
    Not supported on mobile, requires compute shader to construct 64 bin histogram
    @DisplayName Auto Exposure Histogram
  **/
  @DisplayName("Auto Exposure Histogram")
  AEM_Histogram;
  
  /**
    Not supported on mobile, faster method that computes single value by downsampling
    @DisplayName Auto Exposure Basic
  **/
  @DisplayName("Auto Exposure Basic")
  AEM_Basic;
  
}

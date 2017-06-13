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

@:glueCppIncludes("Engine/EngineTypes.h")
@:uname("ESceneCaptureSource")
@:uextern @:uenum extern enum ESceneCaptureSource {
  
  /**
    SceneColor (HDR) in RGB, Inv Opacity in A
  **/
  @DisplayName("SceneColor (HDR) in RGB, Inv Opacity in A")
  SCS_SceneColorHDR;
  
  /**
    SceneColor (HDR) in RGB, 0 in A
  **/
  @DisplayName("SceneColor (HDR) in RGB, 0 in A")
  SCS_SceneColorHDRNoAlpha;
  
  /**
    Final Color (LDR) in RGB
  **/
  @DisplayName("Final Color (LDR) in RGB")
  SCS_FinalColorLDR;
  
  /**
    SceneColor (HDR) in RGB, SceneDepth in A
  **/
  @DisplayName("SceneColor (HDR) in RGB, SceneDepth in A")
  SCS_SceneColorSceneDepth;
  
  /**
    SceneDepth in R
  **/
  @DisplayName("SceneDepth in R")
  SCS_SceneDepth;
  
  /**
    DeviceDepth in RGB
  **/
  @DisplayName("DeviceDepth in RGB")
  SCS_DeviceDepth;
  
  /**
    Normal in RGB (Deferred Renderer only)
  **/
  @DisplayName("Normal in RGB (Deferred Renderer only)")
  SCS_Normal;
  
  /**
    BaseColor in RGB (Deferred Renderer only)
  **/
  @DisplayName("BaseColor in RGB (Deferred Renderer only)")
  SCS_BaseColor;
  
}

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
  If using RCIM_Cubic, this enum describes how the tangents should be controlled in editor.
**/
@:glueCppIncludes("Curves/RichCurve.h")
@:uname("ERichCurveTangentMode")
@:uextern @:uenum extern enum ERichCurveTangentMode {
  RCTM_Auto;
  RCTM_User;
  RCTM_Break;
  RCTM_None;
  
}

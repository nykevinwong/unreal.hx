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

@:glueCppIncludes("Engine/Brush.h")
@:uname("EBrushType")
@:uextern @:uenum extern enum EBrushType {
  
  /**
    Default/builder brush.
  **/
  Brush_Default;
  
  /**
    Add to world.
    @DisplayName Additive
  **/
  @DisplayName("Additive")
  Brush_Add;
  
  /**
    Subtract from world.
    @DisplayName Subtractive
  **/
  @DisplayName("Subtractive")
  Brush_Subtract;
  
}

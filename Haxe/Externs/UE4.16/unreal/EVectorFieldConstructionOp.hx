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
  Operation used to construct the vector field from a 2D texture.
**/
@:glueCppIncludes("VectorField/VectorFieldAnimated.h")
@:uname("EVectorFieldConstructionOp")
@:uextern @:uenum extern enum EVectorFieldConstructionOp {
  
  /**
    Extrude
  **/
  @DisplayName("Extrude")
  VFCO_Extrude;
  
  /**
    Revolve
  **/
  @DisplayName("Revolve")
  VFCO_Revolve;
  
}

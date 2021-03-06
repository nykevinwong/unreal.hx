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
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;

/**
  Selection information for geometry mode
**/
@:glueCppIncludes("Engine/Brush.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FGeomSelection {
  
  /**
    Index into the geometry data structures
  **/
  @:uproperty public var SelectionIndex : unreal.Int32;
  
  /**
    EGeometrySelectionType_
  **/
  @:uproperty public var Index : unreal.Int32;
  @:uproperty public var Type : unreal.Int32;
  
}

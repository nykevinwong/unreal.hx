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
package unreal.paper2d;


/**
  Method of specifying polygons for a sprite's render or collision data
**/
@:umodule("Paper2D")
@:glueCppIncludes("SpriteEditorOnlyTypes.h")
@:uname("ESpritePolygonMode.Type")
@:uextern @:uenum extern enum ESpritePolygonMode {
  
  /**
    Use the bounding box of the source sprite (no optimization)
  **/
  SourceBoundingBox;
  
  /**
    Tighten the bounding box around the sprite to exclude fully transparent areas (the default)
  **/
  TightBoundingBox;
  
  /**
    Shrink-wrapped geometry
  **/
  ShrinkWrapped;
  
  /**
    Fully custom geometry; edited by hand
  **/
  FullyCustom;
  
  /**
    Diced (split up into smaller squares, including only non-empty ones in the final geometry).  This option is only supported for Render geometry and will be ignored for Collision geometry.
  **/
  Diced;
  
}

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
  Selects the texture property to output
**/
@:glueCppIncludes("Classes/Materials/MaterialExpressionTextureProperty.h")
@:uname("EMaterialExposedTextureProperty")
@:uextern @:uenum extern enum EMaterialExposedTextureProperty {
  
  /**
    The texture's size.
    @DisplayName Texture Size
  **/
  @DisplayName("Texture Size")
  TMTM_TextureSize;
  
  /**
    The texture's texel size in the UV space (1 / Texture Size)
    @DisplayName Texel Size
  **/
  @DisplayName("Texel Size")
  TMTM_TexelSize;
  
}

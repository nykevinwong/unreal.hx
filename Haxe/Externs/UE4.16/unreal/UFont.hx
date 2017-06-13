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
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  A font object, for use by Slate, UMG, and Canvas.
  
  A font can either be:
    * Runtime cached - The font contains a series of TTF files that combine to form a composite font. The glyphs are cached on demand when required at runtime.
    * Offline cached - The font contains a series of textures containing pre-baked cached glyphs and their associated texture coordinates.
**/
@:glueCppIncludes("Engine/Font.h")
@:uextern @:uclass extern class UFont extends unreal.UObject implements unreal.slatecore.IFontProviderInterface {
  
  /**
    Embedded composite font data
  **/
  @:uproperty public var CompositeFont : unreal.slatecore.FCompositeFont;
  
  /**
    The default font name to use for legacy Canvas APIs that don't specify a font name
  **/
  @:uproperty public var LegacyFontName : unreal.FName;
  
  /**
    The default size of the font used for legacy Canvas APIs that don't specify a font size
  **/
  @:uproperty public var LegacyFontSize : unreal.Int32;
  
  /**
    Scale to apply to the font.
  **/
  @:uproperty public var ScalingFactor : unreal.Float32;
  
  /**
    The maximum height of a character in this font.  For multi-fonts, this array will contain a maximum
                  character height for each multi-font, otherwise the array will contain only a single element.  This is
                  cached at load-time or creation time, and is never serialized.
  **/
  @:uproperty public var MaxCharHeight : unreal.TArray<unreal.Int32>;
  
  /**
    Number of characters in the font, not including multiple instances of the same character (for multi-fonts).
                  This is cached at load-time or creation time, and is never serialized.
  **/
  @:uproperty public var NumCharacters : unreal.Int32;
  
  /**
    Options used when importing this font
  **/
  @:uproperty public var ImportOptions : unreal.FFontImportOptionsData;
  
  /**
    Default horizontal spacing between characters when rendering text with this font
  **/
  @:uproperty public var Kerning : unreal.Int32;
  
  /**
    @todo document
  **/
  @:uproperty public var Leading : unreal.Float32;
  
  /**
    @todo document
  **/
  @:uproperty public var Descent : unreal.Float32;
  
  /**
    @todo document
  **/
  @:uproperty public var Ascent : unreal.Float32;
  
  /**
    Font metrics.
  **/
  @:uproperty public var EmScale : unreal.Float32;
  
  /**
    True if font is 'remapped'.  That is, the character array is not a direct mapping to unicode values.  Instead,
                  all characters are indexed indirectly through the CharRemap array
  **/
  @:uproperty public var IsRemapped : unreal.Int32;
  
  /**
    Textures that store this font's glyph image data //NOTE: Do not expose this to the editor as it has nasty crash potential
  **/
  @:uproperty public var Textures : unreal.TArray<unreal.UTexture2D>;
  
  /**
    List of characters in the font.  For a MultiFont, this will include all characters in all sub-fonts!  Thus,
                  the number of characters in this array isn't necessary the number of characters available in the font
  **/
  @:uproperty public var Characters : unreal.TArray<unreal.FFontCharacter>;
  
  /**
    What kind of font caching should we use? This controls which options we see
  **/
  @:uproperty public var FontCacheType : unreal.EFontCacheType;
  // FontProviderInterface interface implementation
  
}

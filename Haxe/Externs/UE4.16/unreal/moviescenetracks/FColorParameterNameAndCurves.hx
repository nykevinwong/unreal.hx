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
package unreal.moviescenetracks;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Structure representing an animated vector parameter and it's associated animation curve.
**/
@:umodule("MovieSceneTracks")
@:glueCppIncludes("Sections/MovieSceneParameterSection.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FColorParameterNameAndCurves {
  
  /**
    The curve which contains the animation data for the alpha component of the color parameter.
  **/
  @:uproperty public var AlphaCurve : unreal.FRichCurve;
  
  /**
    The curve which contains the animation data for the blue component of the color parameter.
  **/
  @:uproperty public var BlueCurve : unreal.FRichCurve;
  
  /**
    The curve which contains the animation data for the green component of the color parameter.
  **/
  @:uproperty public var GreenCurve : unreal.FRichCurve;
  
  /**
    The curve which contains the animation data for the red component of the color parameter.
  **/
  @:uproperty public var RedCurve : unreal.FRichCurve;
  @:uproperty public var Index : unreal.Int32;
  
  /**
    The name of the vector parameter which is being animated.
  **/
  @:uproperty public var ParameterName : unreal.FName;
  
}

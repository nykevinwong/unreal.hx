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
package unreal.slatecore;


/**
  Represents the appearance of an STextBlock
**/
@:umodule("SlateCore")
@:glueCppIncludes("Styling/SlateTypes.h")
@:uextern @:ustruct extern class FTextBlockStyle extends unreal.slatecore.FSlateWidgetStyle {
  
  /**
    The brush used to draw an underline under the text (if any)
  **/
  @:uproperty public var UnderlineBrush : unreal.slatecore.FSlateBrush;
  
  /**
    The shape of highlighted text
  **/
  @:uproperty public var HighlightShape : unreal.slatecore.FSlateBrush;
  
  /**
    The color of highlighted text
  **/
  @:uproperty public var HighlightColor : unreal.FLinearColor;
  
  /**
    The background color of selected text
  **/
  @:uproperty public var SelectedBackgroundColor : unreal.slatecore.FSlateColor;
  
  /**
    The color and opacity of the shadow
  **/
  @:uproperty public var ShadowColorAndOpacity : unreal.FLinearColor;
  
  /**
    How much should the shadow be offset? An offset of 0 implies no shadow.
  **/
  @:uproperty public var ShadowOffset : unreal.FVector2D;
  
  /**
    The color and opacity of this text
  **/
  @:uproperty public var ColorAndOpacity : unreal.slatecore.FSlateColor;
  
  /**
    Font family and size to be used when displaying this text.
  **/
  @:uproperty public var Font : unreal.slatecore.FSlateFontInfo;
  
}

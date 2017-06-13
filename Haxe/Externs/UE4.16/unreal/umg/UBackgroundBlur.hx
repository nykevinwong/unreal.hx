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
package unreal.umg;


/**
  A background blur is a container widget that can contain one child widget, providing an opportunity
  to surround it with adjustable padding and apply a post-process Gaussian blur to all content beneath the widget.
  
  * Single Child
  * Blur Effect
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class UBackgroundBlur extends unreal.umg.UContentWidget {
  
  /**
    An image to draw instead of applying a blur when low quality override mode is enabled.
    You can enable low quality mode for background blurs by setting the cvar Slate.ForceBackgroundBlurLowQualityOverride to 1.
    This is usually done in the project's scalability settings
  **/
  @:uproperty public var LowQualityFallbackBrush : unreal.slatecore.FSlateBrush;
  
  /**
    This is the number of pixels which will be weighted in each direction from any given pixel when computing the blur
    A larger value is more costly but allows for stronger blurs.
  **/
  @:uproperty public var BlurRadius : unreal.Int32;
  
  /**
    Whether or not the radius should be computed automatically or if it should use the radius
  **/
  @:uproperty public var bOverrideAutoRadiusCalculation : Bool;
  
  /**
    How blurry the background is.  Larger numbers mean more blurry but will result in larger runtime cost on the gpu.
  **/
  @:uproperty public var BlurStrength : unreal.Float32;
  
  /**
    True to modulate the strength of the blur based on the widget alpha.
  **/
  @:uproperty public var bApplyAlphaToBlur : Bool;
  
  /**
    The alignment of the content vertically.
  **/
  @:uproperty public var VerticalAlignment : unreal.slatecore.EVerticalAlignment;
  
  /**
    The alignment of the content horizontally.
  **/
  @:uproperty public var HorizontalAlignment : unreal.slatecore.EHorizontalAlignment;
  
  /**
    The padding area between the slot and the content it contains.
  **/
  @:uproperty public var Padding : unreal.slatecore.FMargin;
  @:ufunction @:final public function SetPadding(InPadding : unreal.slatecore.FMargin) : Void;
  @:ufunction @:final public function SetHorizontalAlignment(InHorizontalAlignment : unreal.slatecore.EHorizontalAlignment) : Void;
  @:ufunction @:final public function SetVerticalAlignment(InVerticalAlignment : unreal.slatecore.EVerticalAlignment) : Void;
  @:ufunction @:final public function SetApplyAlphaToBlur(bInApplyAlphaToBlur : Bool) : Void;
  @:ufunction @:final public function SetBlurRadius(InBlurRadius : unreal.Int32) : Void;
  @:ufunction public function SetBlurStrength(InStrength : unreal.Float32) : Void;
  @:ufunction @:final public function SetLowQualityFallbackBrush(InBrush : unreal.Const<unreal.PRef<unreal.slatecore.FSlateBrush>>) : Void;
  
}

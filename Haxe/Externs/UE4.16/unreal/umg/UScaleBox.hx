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
  Allows you to place content with a desired size and have it scale to meet the constraints placed on this box's alloted area.  If
  you needed to have a background image scale to fill an area but not become distorted with different aspect ratios, or if you need
  to auto fit some text to an area, this is the control for you.
  
  * Single Child
  * Aspect Ratio
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class UScaleBox extends unreal.umg.UContentWidget {
  
  /**
    Optional bool to ignore the inherited scale. Applies inverse scaling to counteract parents before applying the local scale operation.
  **/
  @:uproperty public var IgnoreInheritedScale : Bool;
  
  /**
    Optional scale that can be specified by the User. Used only for UserSpecified stretching.
  **/
  @:uproperty public var UserSpecifiedScale : unreal.Float32;
  
  /**
    Controls in what direction content can be scaled
  **/
  @:uproperty public var StretchDirection : unreal.slate.EStretchDirection;
  
  /**
    The stretching rule to apply when content is stretched
  **/
  @:uproperty public var Stretch : unreal.slate.EStretch;
  @:ufunction @:final public function SetStretch(InStretch : unreal.slate.EStretch) : Void;
  @:ufunction @:final public function SetStretchDirection(InStretchDirection : unreal.slate.EStretchDirection) : Void;
  @:ufunction @:final public function SetUserSpecifiedScale(InUserSpecifiedScale : unreal.Float32) : Void;
  @:ufunction @:final public function SetIgnoreInheritedScale(bInIgnoreInheritedScale : Bool) : Void;
  
}

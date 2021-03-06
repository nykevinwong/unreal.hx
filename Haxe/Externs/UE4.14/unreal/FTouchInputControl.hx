/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:glueCppIncludes("GameFramework/TouchInterface.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FTouchInputControl {
  
  /**
    The alternate input to send from this control (for sticks, this is the vertical axis)
  **/
  @:uproperty public var AltInputKey : unreal.inputcore.FKey;
  
  /**
    The main input to send from this control (for sticks, this is the horizontal axis)
  **/
  @:uproperty public var MainInputKey : unreal.inputcore.FKey;
  
  /**
    The scale for control input
  **/
  @:uproperty public var InputScale : unreal.FVector2D;
  
  /**
    The interactive size of the control (if <= 1.0, it's relative to screen, > 1.0 is absolute)
  **/
  @:uproperty public var InteractionSize : unreal.FVector2D;
  
  /**
    For sticks, the size of the thumb (if <= 1.0, it's relative to screen, > 1.0 is absolute)
  **/
  @:uproperty public var ThumbSize : unreal.FVector2D;
  
  /**
    The size of the control (if <= 1.0, it's relative to screen, > 1.0 is absolute)
  **/
  @:uproperty public var VisualSize : unreal.FVector2D;
  
  /**
    The center point of the control (if <= 1.0, it's relative to screen, > 1.0 is absolute)
  **/
  @:uproperty public var Center : unreal.FVector2D;
  
  /**
    For sticks, this is the Background
  **/
  @:uproperty public var Image2 : unreal.UTexture2D;
  
  /**
    For sticks, this is the Thumb
  **/
  @:uproperty public var Image1 : unreal.UTexture2D;
  
}

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
  Defines an interface by which touch input can be controlled using any number of buttons and virtual joysticks
**/
@:glueCppIncludes("GameFramework/TouchInterface.h")
@:uextern @:uclass extern class UTouchInterface extends unreal.UObject {
  
  /**
    Delay at startup before virtual joystick is drawn
  **/
  @:uproperty public var StartupDelay : unreal.Float32;
  
  /**
    Whether to prevent joystick re-center
  **/
  @:uproperty public var bPreventRecenter : Bool;
  
  /**
    How long after joystick enabled for touch (0.0 will disable this feature)
  **/
  @:uproperty public var ActivationDelay : unreal.Float32;
  
  /**
    How long after going inactive will controls reset/recenter themselves (0.0 will disable this feature)
  **/
  @:uproperty public var TimeUntilReset : unreal.Float32;
  
  /**
    How long after user interaction will all controls fade out to Inactive Opacity
  **/
  @:uproperty public var TimeUntilDeactive : unreal.Float32;
  
  /**
    Opacity (0.0 - 1.0) of all controls while no controls are active
  **/
  @:uproperty public var InactiveOpacity : unreal.Float32;
  
  /**
    Opacity (0.0 - 1.0) of all controls while any control is active
  **/
  @:uproperty public var ActiveOpacity : unreal.Float32;
  @:uproperty public var Controls : unreal.TArray<unreal.FTouchInputControl>;
  
}

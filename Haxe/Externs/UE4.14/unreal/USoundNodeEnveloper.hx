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
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  Allows manipulation of volume and pitch over a set time period
**/
@:glueCppIncludes("Sound/SoundNodeEnveloper.h")
@:uextern @:uclass extern class USoundNodeEnveloper extends unreal.USoundNode {
  
  /**
    The upper bound of volume (1.0 is no change)
  **/
  @:uproperty public var VolumeMax : unreal.Float32;
  
  /**
    The lower bound of volume (1.0 is no change)
  **/
  @:uproperty public var VolumeMin : unreal.Float32;
  
  /**
    The upper bound of pitch (1.0 is no change)
  **/
  @:uproperty public var PitchMax : unreal.Float32;
  
  /**
    The lower bound of pitch (1.0 is no change)
  **/
  @:uproperty public var PitchMin : unreal.Float32;
  
  /**
    The distribution defining the pitch envelope.
  **/
  @:uproperty public var PitchCurve : unreal.FRuntimeFloatCurve;
  
  /**
    The distribution defining the volume envelope.
  **/
  @:uproperty public var VolumeCurve : unreal.FRuntimeFloatCurve;
  @:deprecated @:uproperty public var PitchInterpCurve_DEPRECATED : unreal.UDistributionFloatConstantCurve;
  @:deprecated @:uproperty public var VolumeInterpCurve_DEPRECATED : unreal.UDistributionFloatConstantCurve;
  
  /**
    If enabled, the envelope will loop using the loop settings.
  **/
  @:uproperty public var bLoop : Bool;
  
  /**
    If enabled, the envelope will continue to loop indefenitely regardless of the Loop Count value.
  **/
  @:uproperty public var bLoopIndefinitely : Bool;
  
  /**
    The number of times the envelope should loop if looping is enabled and the envelope is not set to loop indefinitely.
  **/
  @:uproperty public var LoopCount : unreal.Int32;
  
  /**
    The time in seconds it takes the evelope to fade out after the last loop is completed.
  **/
  @:uproperty public var DurationAfterLoop : unreal.Float32;
  
  /**
    The time in seconds where the envelope's loop ends.
  **/
  @:uproperty public var LoopEnd : unreal.Float32;
  
  /**
    The time in seconds where the envelope's loop begins.
  **/
  @:uproperty public var LoopStart : unreal.Float32;
  
}

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
package unreal.audiomixer;


/**
  A submix dynamics processor
**/
@:umodule("AudioMixer")
@:glueCppIncludes("SubmixEffects/AudioMixerSubmixEffectDynamicsProcessor.h")
@:uextern @:ustruct extern class FSubmixEffectDynamicsProcessorSettings {
  
  /**
    Toggles treating the attack and release envelopes as analog-style vs digital-style. Analog will respond a bit more naturally/slower.
  **/
  @:uproperty public var bAnalogMode : Bool;
  
  /**
    Whether or not to average all channels of audio before inputing into the dynamics processor
  **/
  @:uproperty public var bChannelLinked : Bool;
  
  /**
    The output gain of the dynamics processor in dB
  **/
  @:uproperty public var OutputGainDb : unreal.Float32;
  
  /**
    The input gain of the dynamics processor in dB
  **/
  @:uproperty public var InputGainDb : unreal.Float32;
  
  /**
    The knee bandwidth of the compressor to use in dB
  **/
  @:uproperty public var KneeBandwidthDb : unreal.Float32;
  
  /**
    The dynamics processor ratio -- has different meaning depending on the processor type.
  **/
  @:uproperty public var Ratio : unreal.Float32;
  
  /**
    The threshold at which to perform a dynamics processing operation
  **/
  @:uproperty public var ThresholdDb : unreal.Float32;
  
  /**
    The amount of time to release the dynamics processing effect in milliseconds
  **/
  @:uproperty public var ReleaseTimeMsec : unreal.Float32;
  
  /**
    The amount of time to ramp into any dynamics processing effect in milliseconds.
  **/
  @:uproperty public var AttackTimeMsec : unreal.Float32;
  
  /**
    The amount of time to look ahead of the current audio. Allows for transients to be included in dynamics processing.
  **/
  @:uproperty public var LookAheadMsec : unreal.Float32;
  @:uproperty public var PeakMode : unreal.audiomixer.ESubmixEffectDynamicsPeakMode;
  @:uproperty public var DynamicsProcessorType : unreal.audiomixer.ESubmixEffectDynamicsProcessorType;
  
}

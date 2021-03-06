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
  
  This represents a baked transition
**/
@:glueCppIncludes("Animation/AnimStateMachineTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FAnimationTransitionBetweenStates extends unreal.FAnimationStateBase {
  @:uproperty public var LogicType : unreal.ETransitionLogicType;
  @:uproperty public var BlendProfile : unreal.UBlendProfile;
  @:uproperty public var CustomCurve : unreal.UCurveFloat;
  @:uproperty public var BlendMode : unreal.EAlphaBlendOption;
  @:uproperty public var InterruptNotify : unreal.Int32;
  @:uproperty public var EndNotify : unreal.Int32;
  @:uproperty public var StartNotify : unreal.Int32;
  @:uproperty public var CrossfadeDuration : unreal.Float32;
  
  /**
    Transition-only: State being transitioned to
  **/
  @:uproperty public var NextState : unreal.Int32;
  
  /**
    Transition-only: State being transitioned from
  **/
  @:uproperty public var PreviousState : unreal.Int32;
  
}

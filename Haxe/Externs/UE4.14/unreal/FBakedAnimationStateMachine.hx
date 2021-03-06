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
@:glueCppIncludes("Animation/AnimStateMachineTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FBakedAnimationStateMachine {
  
  /**
    List of all transitions between states
  **/
  @:uproperty public var Transitions : unreal.TArray<unreal.FAnimationTransitionBetweenStates>;
  
  /**
    List of all states this machine can be in
  **/
  @:uproperty public var States : unreal.TArray<unreal.FBakedAnimationState>;
  
  /**
    Index of the initial state that the machine will start in
  **/
  @:uproperty public var InitialState : unreal.Int32;
  
  /**
    Name of this machine (primarily for debugging purposes)
  **/
  @:uproperty public var MachineName : unreal.FName;
  
}

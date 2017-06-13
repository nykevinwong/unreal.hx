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
package unreal.cinematiccamera;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Settings to control the camera's lookat feature
**/
@:umodule("CinematicCamera")
@:glueCppIncludes("CineCameraActor.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FCameraLookatTrackingSettings {
  
  /**
    Offset from actor position to look at. Relative to actor if tracking an actor, relative to world otherwise.
  **/
  @:uproperty public var RelativeOffset : unreal.FVector;
  
  /**
    If set, camera will track this actor's location
  **/
  @:uproperty public var ActorToTrack : unreal.AActor;
  
  /**
    Controls degree of smoothing. 0.f for no smoothing, higher numbers for faster/tighter tracking.
  **/
  @:uproperty public var LookAtTrackingInterpSpeed : unreal.Float32;
  
  /**
    True to draw a debug representation of the lookat location
  **/
  @:uproperty public var bDrawDebugLookAtTrackingPosition : Bool;
  
  /**
    Interp,
  **/
  @:uproperty public var bEnableLookAtTracking : Bool;
  
}

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

@:glueCppIncludes("Matinee/MatineeActor.h")
@:uextern @:uclass extern class AMatineeActor extends unreal.AActor {
  @:uproperty public var InterpPosition : unreal.Float32;
  
  /**
    The below property is deprecated and will be removed in 4.9.
  **/
  @:uproperty public var bPendingStop : Bool;
  @:uproperty public var bPaused : Bool;
  @:uproperty public var bReversePlayback : Bool;
  
  /**
    properties that may change on InterpAction that we need to notify clients about, since the object's properties will not be replicated
  **/
  @:uproperty public var bIsPlaying : Bool;
  #if WITH_EDITORONLY_DATA
  
  /**
    Set by the editor when scrubbing data
  **/
  @:uproperty public var bIsScrubbing : Bool;
  @:uproperty public var bIsBeingEdited : Bool;
  @:uproperty public var SpriteComponent : unreal.UBillboardComponent;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Contains the camera world-position for each camera cut in the cinematic.
  **/
  @:uproperty public var CameraCuts : unreal.TArray<unreal.FCameraCutInfo>;
  
  /**
    Instance data for interp groups. One for each variable/group combination.
  **/
  @:uproperty public var GroupInst : unreal.TArray<unreal.UInterpGroupInst>;
  
  /**
    Cached value that indicates whether or not gore was enabled when the sequence was started
  **/
  @:uproperty public var bShouldShowGore : Bool;
  
  /**
    @todo UE4 matinee - shouldnt be directly editable.  Needs a nice interface in matinee
  **/
  @:uproperty public var GroupActorInfos : unreal.TArray<unreal.FInterpGroupActorInfo>;
  
  /**
    Hide HUD during play
  **/
  @:uproperty public var bHideHud : Bool;
  
  /**
    Hide Player Pawn during play
  **/
  @:uproperty public var bHidePlayer : Bool;
  
  /**
    Disable LookAt Input from player during play
  **/
  @:uproperty public var bDisableLookAtInput : Bool;
  
  /**
    Disable Input from player during play
  **/
  @:uproperty public var bDisableMovementInput : Bool;
  
  /**
    Preferred local viewport number (when split screen is active) the director track should associate with, or zero for 'all'.
  **/
  @:uproperty public var PreferredSplitScreenNum : unreal.Int32;
  
  /**
    Lets you skip the matinee with the CANCELMATINEE exec command. Triggers all events to the end along the way.
  **/
  @:uproperty public var bIsSkippable : Bool;
  
  /**
    if bClientSideOnly is true, whether this matinee should be completely skipped if none of the affected Actors are visible
  **/
  @:uproperty public var bSkipUpdateIfNotVisible : Bool;
  
  /**
    Indicates that this interpolation does not affect gameplay. This means that:
    -it is not replicated via MatineeActor
    -it is not ticked if no affected Actors are visible
    -on dedicated servers, it is completely ignored
  **/
  @:uproperty public var bClientSideOnly : Bool;
  
  /**
    If true, disables the realtime radio effect
  **/
  @:uproperty public var bDisableRadioFilter : Bool;
  
  /**
    Only used if bRewindOnPlay if true. Defines what should happen if the Play input is activated while currently playing.
    If true, hitting Play while currently playing will pop the position back to the start and begin playback over again.
    If false, hitting Play while currently playing will do nothing.
  **/
  @:uproperty public var bRewindIfAlreadyPlaying : Bool;
  
  /**
    If true, when rewinding this interpolation, reset the 'initial positions' of any RelateToInitial movements to the current location.
    This allows the next loop of movement to proceed from the current locations.
  **/
  @:uproperty public var bNoResetOnRewind : Bool;
  
  /**
    If true, sequence will rewind itself back to the start each time the Play input is activated.
  **/
  @:uproperty public var bRewindOnPlay : Bool;
  
  /**
    If sequence should pop back to beginning when finished.
    Note, if true, will never get Completed/Reversed events - sequence must be explicitly Stopped.
  **/
  @:uproperty public var bLooping : Bool;
  
  /**
    Time position to always start at if bForceStartPos is set to true.
  **/
  @:uproperty public var ForceStartPosition : unreal.Float32;
  
  /**
    Lets you force the sequence to always start at ForceStartPosition
  **/
  @:uproperty public var bForceStartPos : Bool;
  
  /**
    If true, the matinee will play when the level is loaded.
  **/
  @:uproperty public var bPlayOnLevelLoad : Bool;
  
  /**
    Time multiplier for playback.
  **/
  @:uproperty public var PlayRate : unreal.Float32;
  
  /**
    Name of controller node in level script, used to know what function to try and find for events
  **/
  @:uproperty public var MatineeControllerName : unreal.FName;
  
  /**
    The matinee data used by this actor
  **/
  @:uproperty public var MatineeData : unreal.UInterpData;
  
  /**
    Begin playback of the matinee. Only called in game.
    Will then advance Position by (PlayRate * Deltatime) each time the matinee is ticked.
  **/
  @:ufunction public function Play() : Void;
  
  /**
    Stops playback at the current position
  **/
  @:ufunction public function Stop() : Void;
  
  /**
    Similar to play, but the playback will go backwards until the beginning of the sequence is reached.
  **/
  @:ufunction public function Reverse() : Void;
  
  /**
    Hold playback at its current position. Calling Pause again will continue playback in its current direction.
  **/
  @:ufunction public function Pause() : Void;
  
  /**
    Set the position of the interpolation.
    @note if the interpolation is not currently active, this function doesn't send any Kismet events
    @param NewPosition the new position to set the interpolation to
    @param bJump if true, teleport to the new position (don't trigger any events between the old and new positions, etc)
  **/
  @:ufunction @:final public function SetPosition(NewPosition : unreal.Float32, bJump : Bool = false) : Void;
  
  /**
    Changes the direction of playback (go in reverse if it was going forward, or vice versa)
  **/
  @:ufunction public function ChangePlaybackDirection() : Void;
  
  /**
    Change the looping behaviour of this matinee
  **/
  @:ufunction public function SetLoopingState(bNewLooping : Bool) : Void;
  @:ufunction @:final public function EnableGroupByName(GroupName : unreal.FString, bEnable : Bool) : Void;
  
}

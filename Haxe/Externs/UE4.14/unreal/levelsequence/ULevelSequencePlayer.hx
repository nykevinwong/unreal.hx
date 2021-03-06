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
package unreal.levelsequence;


/**
  ULevelSequencePlayer is used to actually "play" an level sequence asset at runtime.
  
  This class keeps track of playback state and provides functions for manipulating
  an level sequence while its playing.
**/
@:umodule("LevelSequence")
@:glueCppIncludes("LevelSequencePlayer.h")
@:uextern @:uclass extern class ULevelSequencePlayer extends unreal.UObject {
  
  /**
    Create a new level sequence player.
    
    @param WorldContextObject Context object from which to retrieve a UWorld.
    @param LevelSequence The level sequence to play.
    @param Settings The desired playback settings
  **/
  @:ufunction static public function CreateLevelSequencePlayer(WorldContextObject : unreal.UObject, LevelSequence : unreal.levelsequence.ULevelSequence, Settings : unreal.levelsequence.FLevelSequencePlaybackSettings) : unreal.levelsequence.ULevelSequencePlayer;
  
  /**
    Start playback forwards from the current time cursor position, using the current play rate.
  **/
  @:ufunction @:final public function Play() : Void;
  
  /**
    Reverse playback.
  **/
  @:ufunction @:final public function PlayReverse() : Void;
  
  /**
    Changes the direction of playback (go in reverse if it was going forward, or vice versa)
  **/
  @:ufunction @:final public function ChangePlaybackDirection() : Void;
  
  /**
    Start playback from the current time cursor position, looping the specified number of times.
    @param NumLoops - The number of loops to play. -1 indicates infinite looping.
  **/
  @:ufunction @:final public function PlayLooping(NumLoops : unreal.Int32 = -1) : Void;
  
  /**
    Start playback from the current time cursor position, using the current play rate. Does not update the animation until next tick.
  **/
  @:ufunction @:final public function StartPlayingNextTick() : Void;
  
  /**
    Pause playback.
  **/
  @:ufunction @:final public function Pause() : Void;
  
  /**
    Stop playback.
  **/
  @:ufunction @:final public function Stop() : Void;
  
  /**
    Get the current playback position
  **/
  @:ufunction @:thisConst @:final public function GetPlaybackPosition() : unreal.Float32;
  
  /**
    Set the current playback position
    @param NewPlaybackPosition - The new playback position to set.
    If the animation is currently playing, it will continue to do so from the new position
  **/
  @:ufunction @:final public function SetPlaybackPosition(NewPlaybackPosition : unreal.Float32) : Void;
  
  /**
    Check whether the sequence is actively playing.
  **/
  @:ufunction @:thisConst @:final public function IsPlaying() : Bool;
  
  /**
    Get the playback length of the sequence
  **/
  @:ufunction @:thisConst @:final public function GetLength() : unreal.Float32;
  
  /**
    Get the playback rate of this player.
  **/
  @:ufunction @:thisConst @:final public function GetPlayRate() : unreal.Float32;
  
  /**
    Set the playback rate of this player. Negative values will play the animation in reverse.
    @param PlayRate - The new rate of playback for the animation.
  **/
  @:ufunction @:final public function SetPlayRate(PlayRate : unreal.Float32) : Void;
  
  /**
    Sets the range in time to be played back by this player, overriding the default range stored in the asset
    
    @param       NewStartTime    The new starting time for playback
    @param       NewEndTime              The new ending time for playback.  Must be larger than the start time.
  **/
  @:ufunction @:final public function SetPlaybackRange(NewStartTime : unreal.Float32, NewEndTime : unreal.Float32) : Void;
  
  /**
    Get the offset within the level sequence to start playing
  **/
  @:ufunction @:thisConst @:final public function GetPlaybackStart() : unreal.Float32;
  
  /**
    Get the offset within the level sequence to finish playing
  **/
  @:ufunction @:thisConst @:final public function GetPlaybackEnd() : unreal.Float32;
  
}

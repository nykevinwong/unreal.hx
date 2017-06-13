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
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:glueCppIncludes("SingleAnimationPlayData.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FSingleAnimationPlayData {
  
  /**
    Default setting for play rate of SequenceToPlay to play.
  **/
  @:uproperty public var SavedPlayRate : unreal.Float32;
  
  /**
    Default setting for position of SequenceToPlay to play.
  **/
  @:uproperty public var SavedPosition : unreal.Float32;
  
  /**
    Default setting for playing for SequenceToPlay. This is not current state of playing.
  **/
  @:uproperty public var bSavedPlaying : Bool;
  
  /**
    Default setting for looping for SequenceToPlay. This is not current state of looping.
  **/
  @:uproperty public var bSavedLooping : Bool;
  
  /**
    @todo in the future, we should make this one UObject
    and have detail customization to display different things
    The default sequence to play on this skeletal mesh
  **/
  @:uproperty public var AnimToPlay : unreal.UAnimationAsset;
  
}

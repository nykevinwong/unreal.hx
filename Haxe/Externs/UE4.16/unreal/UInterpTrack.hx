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
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Matinee/InterpTrack.h")
@:uextern @:uclass extern class UInterpTrack extends unreal.UObject {
  #if WITH_EDITORONLY_DATA
  
  /**
    If this track is collapsed. (Only applies  to tracks with subtracks).
  **/
  @:uproperty public var bIsCollapsed : Bool;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Whether or not this track is recording in the editor.
  **/
  @:uproperty public var bIsRecording : Bool;
  
  /**
    Whether or not this track is visible in the editor.
  **/
  @:uproperty public var bVisible : Bool;
  
  /**
    If this track can only exist as a sub track.
  **/
  @:uproperty public var bSubTrackOnly : Bool;
  
  /**
    If true, the  AActor  this track is working on will have BeginAnimControl/FinishAnimControl called on it.
  **/
  @:uproperty public var bIsAnimControlTrack : Bool;
  #if WITH_EDITORONLY_DATA
  @:uproperty public var TrackIcon : unreal.UTexture2D;
  #end // WITH_EDITORONLY_DATA
  
  /**
    If this track can only exist inside the Director group.
  **/
  @:uproperty public var bDirGroupOnly : Bool;
  
  /**
    Whether there may only be one of this track in an UInterpGroup.
  **/
  @:uproperty public var bOnePerGroup : Bool;
  
  /**
    Title of track type.
  **/
  @:uproperty public var TrackTitle : unreal.FString;
  
  /**
    Sets the condition that must be met for this track to be enabled
  **/
  @:uproperty public var ActiveCondition : unreal.ETrackActiveCondition;
  @:uproperty public var TrackInstClass : unreal.TSubclassOf<unreal.UInterpTrackInst>;
  #if WITH_EDITORONLY_DATA
  
  /**
    A list of supported tracks that can be a subtrack of this track.
  **/
  @:uproperty public var SupportedSubTracks : unreal.TArray<unreal.FSupportedSubTrackInfo>;
  
  /**
    A list of subtrack groups (for editor UI organization only)
  **/
  @:uproperty public var SubTrackGroups : unreal.TArray<unreal.FSubTrackGroup>;
  #end // WITH_EDITORONLY_DATA
  
  /**
    A list of subtracks that belong to this track
  **/
  @:uproperty public var SubTracks : unreal.TArray<unreal.UInterpTrack>;
  
}

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
package unreal.blutility;


/**
  , Blueprintable
**/
@:umodule("Blutility")
@:glueCppIncludes("PlacedEditorUtilityBase.h")
@:uextern @:uclass extern class APlacedEditorUtilityBase extends unreal.AActor {
  @:uproperty public var HelpText : unreal.FString;
  
  /**
    Returns the current selection set in the editor.  Note that for non-editor builds, this will return an empty array
  **/
  @:ufunction @:final public function GetSelectionSet() : unreal.TArray<unreal.AActor>;
  
  /**
    Gets information about the camera position for the primary level editor viewport.  In non-editor builds, these will be zeroed
    
    @param       CameraLocation  (out) Current location of the level editing viewport camera, or zero if none found
    @param       CameraRotation  (out) Current rotation of the level editing viewport camera, or zero if none found
    @return      Whether or not we were able to get a camera for a level editing viewport
  **/
  @:ufunction @:final public function GetLevelViewportCameraInfo(CameraLocation : unreal.PRef<unreal.FVector>, CameraRotation : unreal.PRef<unreal.FRotator>) : Bool;
  
  /**
    Sets information about the camera position for the primary level editor viewport.
    
    @param        CameraLocation  Location the camera will be moved to.
    @param        CameraRotation  Rotation the camera will be set to.
  **/
  @:ufunction @:final public function SetLevelViewportCameraInfo(CameraLocation : unreal.FVector, CameraRotation : unreal.FRotator) : Void;
  
  /**
    Remove all actors from the selection set
  **/
  @:ufunction @:final public function ClearActorSelectionSet() : Void;
  
  /**
    Selects nothing in the editor (another way to clear the selection)
  **/
  @:ufunction @:final public function SelectNothing() : Void;
  
  /**
    Set the selection state for the selected actor
  **/
  @:ufunction @:final public function SetActorSelectionState(Actor : unreal.AActor, bShouldBeSelected : Bool) : Void;
  
  /**
    Attempts to find the actor specified by PathToActor in the current editor world
    @param        PathToActor     The path to the actor (e.g. PersistentLevel.PlayerStart)
    @return       A reference to the actor, or none if it wasn't found
  **/
  @:ufunction @:final public function GetActorReference(PathToActor : unreal.FString) : unreal.AActor;
  
}

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
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;

/**
  -> will be exported to EngineDecalClasses.h
**/
@:glueCppIncludes("Components/SceneCaptureComponent.h")
@:uextern @:uclass extern class USceneCaptureComponent extends unreal.USceneComponent {
  
  /**
    ShowFlags for the SceneCapture's ViewFamily, to control rendering settings for this view. Hidden but accessible through details customization
  **/
  @:uproperty public var ShowFlagSettings : unreal.TArray<unreal.FEngineShowFlagsSetting>;
  
  /**
    Capture priority within the frame to sort scene capture on GPU to resolve interdependencies between multiple capture components. Highest come first.
  **/
  @:uproperty public var CaptureSortPriority : unreal.Int32;
  
  /**
    if > 0, sets a maximum render distance override.  Can be used to cull distant objects from a reflection if the reflecting plane is in an enclosed area like a hallway or room
  **/
  @:uproperty public var MaxViewDistanceOverride : unreal.Float32;
  
  /**
    Scales the distance used by LOD. Set to values greater than 1 to cause the scene capture to use lower LODs than the main view to speed up the scene capture pass.
  **/
  @:uproperty public var LODDistanceFactor : unreal.Float32;
  
  /**
    Whether to update the capture's contents on movement.  Disable if you are going to capture manually from blueprint.
  **/
  @:uproperty public var bCaptureOnMovement : Bool;
  
  /**
    Whether to update the capture's contents every frame.  If disabled, the component will render once on load and then only when moved.
  **/
  @:uproperty public var bCaptureEveryFrame : Bool;
  
  /**
    The only actors to be rendered by this scene capture, if present.
  **/
  @:uproperty public var ShowOnlyActors : unreal.TArray<unreal.AActor>;
  
  /**
    The only components to be rendered by this scene capture, if present.
  **/
  @:uproperty public var ShowOnlyComponents : unreal.TArray<unreal.TWeakObjectPtr<unreal.UPrimitiveComponent>>;
  
  /**
    The actors to hide in the scene capture.
  **/
  @:uproperty public var HiddenActors : unreal.TArray<unreal.AActor>;
  
  /**
    The components won't rendered by current component.
  **/
  @:uproperty public var HiddenComponents : unreal.TArray<unreal.TWeakObjectPtr<unreal.UPrimitiveComponent>>;
  
  /**
    Adds the component to our list of hidden components.
  **/
  @:ufunction @:final public function HideComponent(InComponent : unreal.UPrimitiveComponent) : Void;
  
  /**
    Adds all primitive components in the actor to our list of hidden components.
  **/
  @:ufunction @:final public function HideActorComponents(InActor : unreal.AActor) : Void;
  
  /**
    Adds the component to our list of show-only components.
  **/
  @:ufunction @:final public function ShowOnlyComponent(InComponent : unreal.UPrimitiveComponent) : Void;
  
  /**
    Adds all primitive components in the actor to our list of show-only components.
  **/
  @:ufunction @:final public function ShowOnlyActorComponents(InActor : unreal.AActor) : Void;
  
  /**
    Removes a component from the Show Only list.
  **/
  @:ufunction @:final public function RemoveShowOnlyComponent(InComponent : unreal.UPrimitiveComponent) : Void;
  
  /**
    Removes a actor's components from the Show Only list.
  **/
  @:ufunction @:final public function RemoveShowOnlyActorComponents(InActor : unreal.AActor) : Void;
  
  /**
    Clears the Show Only list.
  **/
  @:ufunction @:final public function ClearShowOnlyComponents(InComponent : unreal.UPrimitiveComponent) : Void;
  
  /**
    Changes the value of TranslucentSortPriority.
  **/
  @:ufunction @:final public function SetCaptureSortPriority(NewCaptureSortPriority : unreal.Int32) : Void;
  
}

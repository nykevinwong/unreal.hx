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

@:glueCppIncludes("AI/Navigation/NavigationTestingActor.h")
@:uextern @:uclass extern class ANavigationTestingActor extends unreal.AActor implements unreal.INavAgentInterface implements unreal.INavPathObserverInterface {
  @:uproperty public var OffsetFromCornersDistance : unreal.Float32;
  @:uproperty public var ShowStepIndex : unreal.Int32;
  
  /**
    "None" will result in default filter being used
  **/
  @:uproperty public var FilterClass : unreal.TSubclassOf<unreal.UNavigationQueryFilter>;
  @:uproperty public var OtherActor : unreal.ANavigationTestingActor;
  @:uproperty public var PathfindingSteps : unreal.Int32;
  @:uproperty public var PathCost : unreal.Float32;
  
  /**
    Time in micro seconds
  **/
  @:uproperty public var PathfindingTime : unreal.Float32;
  @:uproperty public var bPathSearchOutOfNodes : Bool;
  @:uproperty public var bPathIsPartial : Bool;
  @:uproperty public var bPathExist : Bool;
  
  /**
    text canvas offset to apply
  **/
  @:uproperty public var TextCanvasOffset : unreal.FVector2D;
  
  /**
    determines which cost will be shown
  **/
  @:uproperty public var CostDisplayMode : unreal.ENavCostDisplay;
  @:uproperty public var bShouldBeVisibleInGame : Bool;
  
  /**
    show which nodes were modified in current A* step
  **/
  @:uproperty public var bShowDiffWithPreviousStep : Bool;
  
  /**
    show current best path
  **/
  @:uproperty public var bShowBestPath : Bool;
  
  /**
    show polys from open (orange) and closed (yellow) sets
  **/
  @:uproperty public var bShowNodePool : Bool;
  @:uproperty public var bDrawDistanceToWall : Bool;
  
  /**
    if set, all steps of A* algorithm will be accessible for debugging
  **/
  @:uproperty public var bGatherDetailedInfo : Bool;
  @:uproperty public var bUseHierarchicalPathfinding : Bool;
  @:uproperty public var bSearchStart : Bool;
  @:uproperty public var bProjectedLocationValid : Bool;
  @:uproperty public var ProjectedLocation : unreal.FVector;
  @:uproperty public var MyNavData : unreal.ANavigationData;
  @:uproperty public var QueryingExtent : unreal.FVector;
  
  /**
    @todo document
  **/
  @:uproperty public var NavAgentProps : unreal.FNavAgentProperties;
  @:uproperty public var bActAsNavigationInvoker : Bool;
  @:uproperty public var InvokerComponent : unreal.UNavigationInvokerComponent;
  #if WITH_EDITORONLY_DATA
  @:uproperty public var EdRenderComp : unreal.UNavTestRenderingComponent;
  #end // WITH_EDITORONLY_DATA
  @:uproperty public var CapsuleComponent : unreal.UCapsuleComponent;
  // NavAgentInterface interface implementation
  // NavPathObserverInterface interface implementation
  
}

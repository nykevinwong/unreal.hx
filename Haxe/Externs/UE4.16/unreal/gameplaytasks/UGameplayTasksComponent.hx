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
package unreal.gameplaytasks;


/**
  The core ActorComponent for interfacing with the GameplayAbilities System
**/
@:umodule("GameplayTasks")
@:glueCppIncludes("GameplayTasksComponent.h")
@:uextern @:uclass extern class UGameplayTasksComponent extends unreal.UActorComponent implements unreal.gameplaytasks.IGameplayTaskOwnerInterface {
  
  /**
    Array of currently active UGameplayTask that require ticking
  **/
  @:uproperty private var TickingTasks : unreal.TArray<unreal.gameplaytasks.UGameplayTask>;
  @:uproperty private var TaskPriorityQueue : unreal.TArray<unreal.gameplaytasks.UGameplayTask>;
  
  /**
    Tasks that run on simulated proxies
  **/
  @:uproperty private var SimulatedTasks : unreal.TArray<unreal.gameplaytasks.UGameplayTask>;
  @:ufunction @:final public function OnRep_SimulatedTasks() : Void;
  // GameplayTaskOwnerInterface interface implementation
  
}

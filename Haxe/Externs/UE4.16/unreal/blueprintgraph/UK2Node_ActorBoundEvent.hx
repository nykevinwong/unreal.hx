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
package unreal.blueprintgraph;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("BlueprintGraph")
@:glueCppIncludes("K2Node_ActorBoundEvent.h")
@:uextern @:uclass extern class UK2Node_ActorBoundEvent extends unreal.blueprintgraph.UK2Node_Event {
  
  /**
    The event that this event is bound to
  **/
  @:uproperty public var EventOwner : unreal.AActor;
  
  /**
    Delegate property's owner class that this event is associated with
  **/
  @:uproperty public var DelegateOwnerClass : unreal.UClass;
  
  /**
    Delegate property name that this event is associated with
  **/
  @:uproperty public var DelegatePropertyName : unreal.FName;
  
}

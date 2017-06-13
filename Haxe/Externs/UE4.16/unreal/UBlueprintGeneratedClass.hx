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

@:glueCppIncludes("Engine/BlueprintGeneratedClass.h")
@:uextern @:uclass extern class UBlueprintGeneratedClass extends unreal.UClass {
  
  /**
    Flag used to indicate if this class has a nativized parent in a cooked build.
  **/
  @:uproperty public var bHasNativizedParent : Bool;
  #if WITH_EDITORONLY_DATA
  @:uproperty public var OverridenArchetypeForCDO : unreal.UObject;
  #end // WITH_EDITORONLY_DATA
  
  /**
    If this Generated Class has instrumentation
  **/
  @:uproperty public var bHasInstrumentation : Bool;
  
  /**
    This is a list of event graph call function nodes that are simple (no argument) thunks into the event graph (typically used for animation delegates, etc...)
    It is a deprecated list only used for backwards compatibility prior to VER_UE4_SERIALIZE_BLUEPRINT_EVENTGRAPH_FASTCALLS_IN_UFUNCTION.
  **/
  @:deprecated @:uproperty public var FastCallPairs_DEPRECATED : unreal.TArray<unreal.FEventGraphFastCallPair>;
  @:uproperty public var UberGraphFunction : unreal.UFunction;
  @:uproperty public var UberGraphFramePointerProperty : unreal.UStructProperty;
  
  /**
    Stores data to override (in children classes) components (created by SCS) from parent classes
  **/
  @:uproperty public var InheritableComponentHandler : unreal.UInheritableComponentHandler;
  
  /**
    'Simple' construction script - graph of components to instance
  **/
  @:uproperty public var SimpleConstructionScript : unreal.USimpleConstructionScript;
  
  /**
    Array of templates for timelines that should be created
  **/
  @:uproperty public var Timelines : unreal.TArray<unreal.UTimelineTemplate>;
  
  /**
    Array of component template objects, used by AddComponent function
  **/
  @:uproperty public var ComponentTemplates : unreal.TArray<unreal.UActorComponent>;
  
  /**
    Array of objects containing information for dynamically binding delegates to functions in this blueprint
  **/
  @:uproperty public var DynamicBindingObjects : unreal.TArray<unreal.UDynamicBlueprintBinding>;
  @:uproperty public var NumReplicatedProperties : unreal.Int32;
  
}

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
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("BehaviorTree/BTFunctionLibrary.h")
@:uextern @:uclass extern class UBTFunctionLibrary extends unreal.UBlueprintFunctionLibrary {
  @:ufunction static public function GetOwnersBlackboard(NodeOwner : unreal.aimodule.UBTNode) : unreal.aimodule.UBlackboardComponent;
  @:ufunction static public function GetOwnerComponent(NodeOwner : unreal.aimodule.UBTNode) : unreal.aimodule.UBehaviorTreeComponent;
  @:ufunction static public function GetBlackboardValueAsObject(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>) : unreal.UObject;
  @:ufunction static public function GetBlackboardValueAsActor(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>) : unreal.AActor;
  @:ufunction static public function GetBlackboardValueAsClass(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>) : unreal.UClass;
  @:ufunction static public function GetBlackboardValueAsEnum(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>) : unreal.UInt8;
  @:ufunction static public function GetBlackboardValueAsInt(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>) : unreal.Int32;
  @:ufunction static public function GetBlackboardValueAsFloat(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>) : unreal.Float32;
  @:ufunction static public function GetBlackboardValueAsBool(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>) : Bool;
  @:ufunction static public function GetBlackboardValueAsString(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>) : unreal.FString;
  @:ufunction static public function GetBlackboardValueAsName(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>) : unreal.FName;
  @:ufunction static public function GetBlackboardValueAsVector(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>) : unreal.FVector;
  @:ufunction static public function GetBlackboardValueAsRotator(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>) : unreal.FRotator;
  @:ufunction static public function SetBlackboardValueAsObject(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>, Value : unreal.UObject) : Void;
  @:ufunction static public function SetBlackboardValueAsClass(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>, Value : unreal.UClass) : Void;
  @:ufunction static public function SetBlackboardValueAsEnum(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>, Value : unreal.UInt8) : Void;
  @:ufunction static public function SetBlackboardValueAsInt(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>, Value : unreal.Int32) : Void;
  @:ufunction static public function SetBlackboardValueAsFloat(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>, Value : unreal.Float32) : Void;
  @:ufunction static public function SetBlackboardValueAsBool(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>, Value : Bool) : Void;
  @:ufunction static public function SetBlackboardValueAsString(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>, Value : unreal.FString) : Void;
  @:ufunction static public function SetBlackboardValueAsName(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>, Value : unreal.FName) : Void;
  @:ufunction static public function SetBlackboardValueAsVector(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>, Value : unreal.FVector) : Void;
  
  /**
    (DEPRECATED) Use ClearBlackboardValue instead
  **/
  @:ufunction static public function ClearBlackboardValueAsVector(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>) : Void;
  @:ufunction static public function SetBlackboardValueAsRotator(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>, Value : unreal.FRotator) : Void;
  
  /**
    Resets indicated value to "not set" value, based on values type
  **/
  @:ufunction static public function ClearBlackboardValue(NodeOwner : unreal.aimodule.UBTNode, Key : unreal.Const<unreal.PRef<unreal.aimodule.FBlackboardKeySelector>>) : Void;
  
  /**
    Initialize variables marked as "instance memory" and set owning actor for blackboard operations
  **/
  @:ufunction static public function StartUsingExternalEvent(NodeOwner : unreal.aimodule.UBTNode, OwningActor : unreal.AActor) : Void;
  
  /**
    Save variables marked as "instance memory" and clear owning actor
  **/
  @:ufunction static public function StopUsingExternalEvent(NodeOwner : unreal.aimodule.UBTNode) : Void;
  
}

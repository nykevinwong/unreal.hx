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


/**
  Blackboard decorator node.
  A decorator node that bases its condition on a Blackboard key.
**/
@:umodule("AIModule")
@:glueCppIncludes("BehaviorTree/Decorators/BTDecorator_Blackboard.h")
@:uextern @:uclass extern class UBTDecorator_Blackboard extends unreal.aimodule.UBTDecorator_BlackboardBase {
  #if WITH_EDITORONLY_DATA
  @:uproperty private var TextOperation : unreal.aimodule.ETextKeyOperation;
  @:uproperty private var ArithmeticOperation : unreal.aimodule.EArithmeticKeyOperation;
  @:uproperty private var BasicOperation : unreal.aimodule.EBasicKeyOperation;
  #end // WITH_EDITORONLY_DATA
  
  /**
    when observer can try to request abort?
  **/
  @:uproperty private var NotifyObserver : unreal.aimodule.EBTBlackboardRestart;
  
  /**
    operation type
  **/
  @:uproperty private var OperationType : unreal.UInt8;
  
  /**
    cached description
  **/
  @:uproperty private var CachedDescription : unreal.FString;
  
  /**
    value for string operations
  **/
  @:uproperty private var StringValue : unreal.FString;
  
  /**
    value for arithmetic operations
  **/
  @:uproperty private var FloatValue : unreal.Float32;
  
  /**
    value for arithmetic operations
  **/
  @:uproperty private var IntValue : unreal.Int32;
  
}

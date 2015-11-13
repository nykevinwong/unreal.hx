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
package unreal.aimodule;


/**
  keep in sync with DescribeLogicOp() in BTCompositeNode.cpp
**/
@:umodule("AIModule")
@:glueCppIncludes("BehaviorTree/BehaviorTree.h")
@:uname("EBTDecoratorLogic.Type")
@:uextern extern enum EBTDecoratorLogic {
  Invalid;
  
  /**
    Test decorator conditions.
  **/
  Test;
  
  /**
    logic op: AND
  **/
  And;
  
  /**
    logic op: OR
  **/
  Or;
  
  /**
    logic op: NOT
  **/
  Not;
  
}
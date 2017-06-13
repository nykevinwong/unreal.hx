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
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Movement capabilities, determining available movement options for Pawns and used by AI for reachability tests.
**/
@:glueCppIncludes("AI/Navigation/NavigationTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FMovementProperties {
  
  /**
    If true, this Pawn is capable of flying.
  **/
  @:uproperty public var bCanFly : Bool;
  
  /**
    If true, this Pawn is capable of swimming or moving through fluid volumes.
  **/
  @:uproperty public var bCanSwim : Bool;
  
  /**
    If true, this Pawn is capable of walking or moving on the ground.
  **/
  @:uproperty public var bCanWalk : Bool;
  
  /**
    If true, this Pawn is capable of jumping.
  **/
  @:uproperty public var bCanJump : Bool;
  
  /**
    If true, this Pawn is capable of crouching.
  **/
  @:uproperty public var bCanCrouch : Bool;
  
}

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
  Each player that is active on the current client has a LocalPlayer. It stays active across maps
  There may be several spawned in the case of splitscreen/coop.
  There may be 0 spawned on servers.
**/
@:glueCppIncludes("Engine/LocalPlayer.h")
@:uextern @:uclass extern class ULocalPlayer extends unreal.UPlayer {
  
  /**
    set when we've sent a split join request
  **/
  @:uproperty public var bSentSplitJoin : Bool;
  
  /**
    The class of PlayerController to spawn for players logging in.
  **/
  @:uproperty public var PendingLevelPlayerControllerClass : unreal.TSubclassOf<unreal.APlayerController>;
  
  /**
    How to constrain perspective viewport FOV
  **/
  @:uproperty public var AspectRatioAxisConstraint : unreal.EAspectRatioAxisConstraint;
  
  /**
    The master viewport containing this player's view.
  **/
  @:uproperty public var ViewportClient : unreal.UGameViewportClient;
  
}

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
package unreal.onlinesubsystemutils;

/**
  A beacon host used for taking reservations for an existing game session
**/
@:umodule("OnlineSubsystemUtils")
@:glueCppIncludes("LeaderboardBlueprintLibrary.h")
@:uextern @:uclass extern class ULeaderboardBlueprintLibrary extends unreal.UBlueprintFunctionLibrary {
  
  /**
    Writes an integer value to the specified leaderboard
  **/
  @:ufunction static public function WriteLeaderboardInteger(PlayerController : unreal.APlayerController, StatName : unreal.FName, StatValue : unreal.Int32) : Bool;
  
}

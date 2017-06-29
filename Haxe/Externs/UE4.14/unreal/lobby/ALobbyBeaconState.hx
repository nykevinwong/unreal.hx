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
package unreal.lobby;


/**
  Shared state of the game from the lobby perspective
  Duplicates much of the data in the traditional AGameState object for sharing with players
  connected via beacon only
**/
@:glueCppIncludes("LobbyBeaconState.h")
@:uextern extern class ALobbyBeaconState extends unreal.AInfo {
  
  /**
    Array of players currently in the game, lobby or otherwise
  **/
  private var Players : unreal.lobby.FLobbyPlayerStateInfoArray;
  
  /**
    Amount of time waiting for other players before starting the lobby
  **/
  private var WaitForPlayersTimeRemaining : unreal.Float32;
  
  /**
    Class to use for lobby beacon player states
  **/
  private var LobbyBeaconPlayerStateClass : unreal.TSubclassOf<unreal.lobby.ALobbyBeaconPlayerState>;
  
  /**
    Total number of players allowed in the lobby
  **/
  private var MaxPlayers : unreal.Int32;
  
  /**
    Handle the lobby starting
  **/
  @:final private function OnRep_LobbyStarted() : Void;
  
  /**
    Handle notification of time left to wait for lobby to start
  **/
  @:final private function OnRep_WaitForPlayersTimeRemaining() : Void;
  
}
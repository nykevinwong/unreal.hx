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
  Types of server travel failures broadcast by the engine
**/
@:glueCppIncludes("Engine/EngineBaseTypes.h")
@:uname("ETravelFailure.Type")
@:uextern @:uenum extern enum ETravelFailure {
  
  /**
    No level found in the loaded package
  **/
  NoLevel;
  
  /**
    LoadMap failed on travel (about to Browse to default map)
  **/
  LoadMapFailure;
  
  /**
    Invalid URL specified
  **/
  InvalidURL;
  
  /**
    A package is missing on the client
  **/
  PackageMissing;
  
  /**
    A package version mismatch has occurred between client and server
  **/
  PackageVersion;
  
  /**
    A package is missing and the client is unable to download the file
  **/
  NoDownload;
  
  /**
    General travel failure
  **/
  TravelFailure;
  
  /**
    Cheat commands have been used disabling travel
  **/
  CheatCommands;
  
  /**
    Failed to create the pending net game for travel
  **/
  PendingNetGameCreateFailure;
  
  /**
    Failed to save before travel
  **/
  CloudSaveFailure;
  
  /**
    There was an error during a server travel to a new map
  **/
  ServerTravelFailure;
  
  /**
    There was an error during a client travel to a new map
  **/
  ClientTravelFailure;
  
}

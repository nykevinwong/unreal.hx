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
package unreal.gamecircleruntimesettings;


/**
  Implements the settings for the OnlineSubsystemGameCircle plugin.
**/
@:glueCppIncludes("GameCircleRuntimeSettings.h")
@:uextern extern class UGameCircleRuntimeSettings extends unreal.UObject {
  
  /**
    The path of the api_key text file generated by Amazon from your distribution keystore from the Game Project directory
  **/
  public var DistributionAPIKeyFile : unreal.FString;
  
  /**
    The path of the api_key text file generated by Amazon from your debug keystore from the Game Project directory
  **/
  public var DebugAPIKeyFile : unreal.FString;
  
  /**
    Removes touchscreen hardware requirement when enabled
  **/
  public var bEnableFireTVSupport : Bool;
  
  /**
    Enables Amazon In App Purchasing
  **/
  public var bSupportsInAppPurchasing : Bool;
  
  /**
    Enables the Amazon GameCircle OnlineSubsystem
  **/
  public var bEnableAmazonGameCircleSupport : Bool;
  
}

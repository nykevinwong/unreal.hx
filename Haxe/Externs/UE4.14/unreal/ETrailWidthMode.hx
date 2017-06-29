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
package unreal;


/**
  Controls the way that the width scale property affects animation trails.
**/
@:glueCppIncludes("Engine/EngineTypes.h")
@:uname("ETrailWidthMode")
@:uextern @:uenum extern enum ETrailWidthMode {
  
  /**
    From Centre
  **/
  @DisplayName("From Centre")
  ETrailWidthMode_FromCentre;
  
  /**
    From First Socket
  **/
  @DisplayName("From First Socket")
  ETrailWidthMode_FromFirst;
  
  /**
    From Second Socket
  **/
  @DisplayName("From Second Socket")
  ETrailWidthMode_FromSecond;
  
}
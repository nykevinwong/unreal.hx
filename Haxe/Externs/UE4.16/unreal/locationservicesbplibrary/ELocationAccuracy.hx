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
package unreal.locationservicesbplibrary;


/**
  Enum used to determine what accuracy the Location Services should be run with. Based off the iOS kCLLocationAccuracy
  enums since those were the most restrictive (but convienently also had descriptive names)
**/
@:umodule("LocationServicesBPLibrary")
@:glueCppIncludes("LocationServicesBPLibrary.h")
@:uname("ELocationAccuracy")
@:class @:uextern @:uenum extern enum ELocationAccuracy {
  
  /**
    Three Kilometers
  **/
  @DisplayName("Three Kilometers")
  LA_ThreeKilometers;
  
  /**
    One Kilometer
  **/
  @DisplayName("One Kilometer")
  LA_OneKilometer;
  
  /**
    One Hundred Meters
  **/
  @DisplayName("One Hundred Meters")
  LA_HundredMeters;
  
  /**
    Ten Meters
  **/
  @DisplayName("Ten Meters")
  LA_TenMeters;
  
  /**
    Best
  **/
  @DisplayName("Best")
  LA_Best;
  
  /**
    Best for Navigation
  **/
  @DisplayName("Best for Navigation")
  LA_Navigation;
  
}

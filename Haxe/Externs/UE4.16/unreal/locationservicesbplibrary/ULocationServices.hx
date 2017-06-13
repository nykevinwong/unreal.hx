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

@:umodule("LocationServicesBPLibrary")
@:glueCppIncludes("LocationServicesBPLibrary.h")
@:uextern @:uclass extern class ULocationServices extends unreal.UBlueprintFunctionLibrary {
  
  /**
    Called to set up the Location Service before use
    
    @param Accuracy - as seen in the enum above
    @param UpdateFrequency - in milliseconds. (Android only)
    @param MinDistance - minDistance before a location update, in meters. 0 here means "update asap"
    @return - true if Initialization was succesful
  **/
  @:ufunction static public function InitLocationServices(Accuracy : unreal.locationservicesbplibrary.ELocationAccuracy, UpdateFrequency : unreal.Float32, MinDistanceFilter : unreal.Float32) : Bool;
  
  /**
    Starts requesting location updates from the appropriate Location Service
    @return - true if startup successful
  **/
  @:ufunction static public function StartLocationServices() : Bool;
  
  /**
    Stops the updates of location from the Location Service that was started with StartLocationService
    @return - true if stop is successful
  **/
  @:ufunction static public function StopLocationServices() : Bool;
  
  /**
    Returns the last location information returned by the location service. If no location update has been made, will return
    a default-value-filled struct.
    @return - the last known location from updates
  **/
  @:ufunction static public function GetLastKnownLocation() : unreal.locationservicesbplibrary.FLocationServicesData;
  
  /**
    Checks if the Location Services on the mobile device are enabled for this application
    @return - true if the mobile device has enabled the appropriate service for the app
  **/
  @:ufunction static public function AreLocationServicesEnabled() : Bool;
  
  /**
    Checks if the supplied Accuracy is available on the current device.
    @param Accuracy - the accuracy to check
    @return - true if the mobile device can support the Accuracy, false if it will use a different accuracy
  **/
  @:ufunction static public function IsLocationAccuracyAvailable(Accuracy : unreal.locationservicesbplibrary.ELocationAccuracy) : Bool;
  
  /**
    * Returns the Location Services implementation object. Intended to be used to set up the FLocationServicesData_OnLocationChanged
    * delegate in Blueprints.
    * @return - the Android or IOS impl object
  **/
  @:ufunction static public function GetLocationServicesImpl() : unreal.locationservicesbplibrary.ULocationServicesImpl;
  
}

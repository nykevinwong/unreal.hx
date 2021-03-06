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
package unreal.steamvr;

/**
  SteamVR Extensions Function Library
**/
@:umodule("SteamVR")
@:glueCppIncludes("SteamVRFunctionLibrary.h")
@:uextern @:uclass extern class USteamVRFunctionLibrary extends unreal.UBlueprintFunctionLibrary {
  
  /**
    Returns an array of the currently tracked device IDs
    
    @param       DeviceType      Which class of device (e.g. controller, tracking devices) to get Device Ids for
    @param       OutTrackedDeviceIds     (out) Array containing the ID of each device that's currently tracked
  **/
  @:ufunction static public function GetValidTrackedDeviceIds(DeviceType : unreal.steamvr.ESteamVRTrackedDeviceType, OutTrackedDeviceIds : unreal.PRef<unreal.TArray<unreal.Int32>>) : Void;
  
  /**
    Gets the orientation and position (in device space) of the device with the specified ID
    
    @param       DeviceId                Id of the device to get tracking info for
    @param       OutPosition             (out) Current position of the device
    @param       OutOrientation  (out) Current orientation of the device
    @return      True if the specified device id had a valid tracking pose this frame, false otherwise
  **/
  @:ufunction static public function GetTrackedDevicePositionAndOrientation(DeviceId : unreal.Int32, OutPosition : unreal.PRef<unreal.FVector>, OutOrientation : unreal.PRef<unreal.FRotator>) : Bool;
  
  /**
    Given a controller index and a hand, returns the position and orientation of the controller
    
    @param       ControllerIndex Index of the controller to get the tracked device ID for
    @param       Hand                    Which hand's controller to get the position and orientation for
    @param       OutPosition             (out) Current position of the device
    @param       OutRotation             (out) Current rotation of the device
    @return      True if the specified controller index has a valid tracked device ID
  **/
  @:ufunction static public function GetHandPositionAndOrientation(ControllerIndex : unreal.Int32, Hand : unreal.inputcore.EControllerHand, OutPosition : unreal.PRef<unreal.FVector>, OutOrientation : unreal.PRef<unreal.FRotator>) : Bool;
  
}

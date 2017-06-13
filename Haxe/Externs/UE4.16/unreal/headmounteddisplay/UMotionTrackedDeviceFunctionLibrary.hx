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
package unreal.headmounteddisplay;

@:umodule("HeadMountedDisplay")
@:glueCppIncludes("MotionTrackedDeviceFunctionLibrary.h")
@:uextern @:uclass extern class UMotionTrackedDeviceFunctionLibrary extends unreal.UBlueprintFunctionLibrary {
  
  /**
    Returns true if it is necessary for the game to manage how many motion tracked devices it is asking to be tracked simultaneously.
    On some platforms this is unnecessary because all supported devices can be tracked simultaneously.
    
    @return (Boolean) true if the game might need to manage which motion tracked devices are actively tracked.
  **/
  @:ufunction static public function IsMotionTrackedDeviceCountManagementNecessary() : Bool;
  
  /**
    Set whether motion tracked controllers activate on creation by default, or do not and must be explicitly activated.
    
    @param Require                                        (in) True means controllers are enabled by default.  Enables beyond the controller count limit will fail.
  **/
  @:ufunction static public function SetIsControllerMotionTrackingEnabledByDefault(Enable : Bool) : Void;
  
  /**
    Get the maximum number of controllers that can be tracked.
    
    @return (int) number of controllers that can be tracked, or -1 if there is no limit (IsMotionTrackedDeviceCountManagementNecessary() should return false).
  **/
  @:ufunction static public function GetMaximumMotionTrackedControllerCount() : unreal.Int32;
  
  /**
    Get the number of controllers for which tracking is enabled.
    
    @return (int) number of controllers tracked now, or -1 if this query is unsupported (IsMotionTrackedDeviceCountManagementNecessary() should return false).
  **/
  @:ufunction static public function GetMotionTrackingEnabledControllerCount() : unreal.Int32;
  
  /**
    Returns true if tracking is enabled for the specified device.
    
    @param PlayerIndex                                   (in) The index of the player.
    @param Hand                                                  (in) The tracked device type.
    
    @return (Boolean) true if the specified device is set to be tracked.
  **/
  @:ufunction static public function IsMotionTrackingEnabledForDevice(PlayerIndex : unreal.Int32, Hand : unreal.inputcore.EControllerHand) : Bool;
  
  /**
    Returns true if tracking is enabled for the specified device.
    
    @param MotionControllerComponent              (in) The motion controller component who's associated device is targeted.
    
    @return (Boolean) true if the specified device is set to be tracked.
  **/
  @:ufunction static public function IsMotionTrackingEnabledForComponent(MotionControllerComponent : unreal.Const<unreal.headmounteddisplay.UMotionControllerComponent>) : Bool;
  
  /**
    Enable tracking of the specified controller, by player index and tracked device type.
    
    @param PlayerIndex                                   (in) The index of the player.
    @param Hand                                                  (in) The device type.
    
    @return (Boolean) true if the specified device is now set to be tracked.  This could fail due to tracking limits, or on invalid input.
  **/
  @:ufunction static public function EnableMotionTrackingOfDevice(PlayerIndex : unreal.Int32, Hand : unreal.inputcore.EControllerHand) : Bool;
  
  /**
    Enable tracking of the specified controller, by player index and tracked device type.
    
    @param MotionControllerComponent              (in) The motion controller component who's associated device is targeted.
    
    @return (Boolean) true if the specified device is now set to be tracked.  This could fail due to tracking limits, or on invalid input.
  **/
  @:ufunction static public function EnableMotionTrackingForComponent(MotionControllerComponent : unreal.headmounteddisplay.UMotionControllerComponent) : Bool;
  
  /**
    Disable tracking of the specified controller, by player index and tracked device type.
    
    @param PlayerIndex                                   (in) The index of the player.
    @param Hand                                                  (in) The tracked device type.
  **/
  @:ufunction static public function DisableMotionTrackingOfDevice(PlayerIndex : unreal.Int32, Hand : unreal.inputcore.EControllerHand) : Void;
  
  /**
    Disable tracking of the specified controller, by player index and tracked device type.
    
    @param MotionControllerComponent              (in) The motion controller component who's associated device is targeted.
  **/
  @:ufunction static public function DisableMotionTrackingForComponent(MotionControllerComponent : unreal.Const<unreal.headmounteddisplay.UMotionControllerComponent>) : Void;
  
  /**
    Disable tracking for all controllers.
  **/
  @:ufunction static public function DisableMotionTrackingOfAllControllers() : Void;
  
  /**
    Disable tracking for all controllers associated with the specified player.
    
    @param PlayerIndex                                    (in) The index of the player.
  **/
  @:ufunction static public function DisableMotionTrackingOfControllersForPlayer(PlayerIndex : unreal.Int32) : Void;
  
}

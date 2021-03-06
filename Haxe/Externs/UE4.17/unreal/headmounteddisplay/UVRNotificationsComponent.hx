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
package unreal.headmounteddisplay;

@:umodule("HeadMountedDisplay")
@:glueCppIncludes("VRNotificationsComponent.h")
@:uextern @:uclass extern class UVRNotificationsComponent extends unreal.UActorComponent {
  
  /**
    This will be called when the HMD detects that it has been taken off by a player (disconnecting the hmd also causes it to register as taken off).
  **/
  @:uproperty public var HMDRemovedFromHeadDelegate : unreal.headmounteddisplay.FVRNotificationsDelegate;
  
  /**
    This will be called when the HMD detects that it has been put on by a player.
  **/
  @:uproperty public var HMDPutOnHeadDelegate : unreal.headmounteddisplay.FVRNotificationsDelegate;
  
  /**
    This will be called when the user declines to connect the HMD when prompted to do so by a system dialog. (PS4 Only)
  **/
  @:uproperty public var HMDConnectCanceledDelegate : unreal.headmounteddisplay.FVRNotificationsDelegate;
  
  /**
    This will be called when connection to HMD is restored.
  **/
  @:uproperty public var HMDReconnectedDelegate : unreal.headmounteddisplay.FVRNotificationsDelegate;
  
  /**
    This will be called when connection to HMD is lost.
  **/
  @:uproperty public var HMDLostDelegate : unreal.headmounteddisplay.FVRNotificationsDelegate;
  
  /**
    This will be called when the application is asked for VR headset recenter.
  **/
  @:uproperty public var HMDRecenteredDelegate : unreal.headmounteddisplay.FVRNotificationsDelegate;
  
  /**
    This will be called on Morpheus when the HMD is done initializing and therefore
    reprojection will start functioning.
    The app can continue now. (PS4 Only)
  **/
  @:uproperty public var HMDTrackingInitializedDelegate : unreal.headmounteddisplay.FVRNotificationsDelegate;
  
  /**
    This will be called on Morpheus if the HMD starts up and is not fully initialized (in NOT_STARTED or CALIBRATING states).
    The HMD will stay in NOT_STARTED until it is successfully position tracked.  Until it exits NOT_STARTED orientation
    based reprojection does not happen.  Therefore we do not update rotation at all to avoid user discomfort.
    Instructions to get the hmd tracked should be shown to the user.
    Sony may fix this eventually. (PS4 Only)
  **/
  @:uproperty public var HMDTrackingInitializingAndNeedsHMDToBeTrackedDelegate : unreal.headmounteddisplay.FVRNotificationsDelegate;
  
}

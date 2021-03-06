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
package unreal.swarminterface;

@:umodule("SwarmInterface")
@:glueCppIncludes("Private/SwarmMessages.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FSwarmJobStateMessage {
  @:uproperty public var RunningTime : unreal.Float64;
  
  /**
    Various stats, including run time, exit codes, etc.
  **/
  @:uproperty public var ExitCode : unreal.Int32;
  @:uproperty public var Message : unreal.FString;
  
  /**
    The current state and arbitrary message
  **/
  @:uproperty public var State : unreal.UInt8;
  
  /**
    The Job GUID used for identifying the Job
  **/
  @:uproperty public var Guid : unreal.FGuid;
  
}

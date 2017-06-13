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
package unreal.sequencerecorder;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:umodule("SequenceRecorder")
@:glueCppIncludes("SequenceRecorderSettings.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FSettingsForActorClass {
  
  /**
    Whether to record to 'possessable' (i.e. level-owned) or 'spawnable' (i.e. sequence-owned) actors.
  **/
  @:uproperty public var bRecordToPossessable : Bool;
  
  /**
    The class of the actor we want to record
  **/
  @:uproperty public var Class : unreal.TSubclassOf<unreal.AActor>;
  
}

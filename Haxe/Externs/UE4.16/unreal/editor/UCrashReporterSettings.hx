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
package unreal.editor;

/**
  Implements per-project cooker settings exposed to the editor
**/
@:umodule("UnrealEd")
@:glueCppIncludes("CrashReporterSettings.h")
@:uextern @:uclass extern class UCrashReporterSettings extends unreal.UObject {
  
  /**
    Remote PDB storage (directory path or http/https URL)
  **/
  @:uproperty public var RemoteStorage : unreal.TArray<unreal.FString>;
  
  /**
    Local downstream PDB storage path (used for caching remote .PDB files)
  **/
  @:uproperty public var DownstreamStorage : unreal.FString;
  
  /**
    Directory for uploading locally built binaries and .PDB files
  **/
  @:uproperty public var UploadSymbolsPath : unreal.FString;
  
}
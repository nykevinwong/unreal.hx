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
package unreal.scriptplugin;


/**
  The Script blueprint generates script-defined classes
**/
@:glueCppIncludes("ScriptBlueprint.h")
@:uextern extern class UScriptBlueprint extends unreal.UBlueprint {
  
  /**
    Script source code. @todo: this should be editor-only
  **/
  public var SourceCode : unreal.FString;
  
  /**
    Generated script bytecode
  **/
  public var ByteCode : unreal.TArray<unreal.UInt8>;
  #if WITH_EDITORONLY_DATA
  public var AssetImportData : unreal.UAssetImportData;
  @:deprecated public var SourceFilePath_DEPRECATED : unreal.FString;
  #end // WITH_EDITORONLY_DATA
  
}

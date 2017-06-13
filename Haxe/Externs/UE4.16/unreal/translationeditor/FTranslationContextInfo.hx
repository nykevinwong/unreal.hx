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
package unreal.translationeditor;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:umodule("TranslationEditor")
@:glueCppIncludes("Private/TranslationUnit.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FTranslationContextInfo {
  
  /**
    List of previous versions of the source text for this context
  **/
  @:uproperty public var Changes : unreal.TArray<unreal.translationeditor.FTranslationChange>;
  
  /**
    What file and line this translation is from
  **/
  @:uproperty public var Context : unreal.FString;
  
  /**
    The key specified in LOCTEXT
  **/
  @:uproperty public var Key : unreal.FString;
  
}

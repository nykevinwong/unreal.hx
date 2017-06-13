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
package unreal;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Sound/DialogueWave.h")
@:uextern @:uclass extern class UDialogueWave extends unreal.UObject {
  @:uproperty public var LocalizationGUID : unreal.FGuid;
  
  /**
    Mappings between dialogue contexts and associated soundwaves.
  **/
  @:uproperty public var ContextMappings : unreal.TArray<unreal.FDialogueContextMapping>;
  #if WITH_EDITORONLY_DATA
  
  /**
    Provides general notes to the voice actor intended to direct their performance, as well as contextual information to the translator.
  **/
  @:uproperty public var VoiceActorDirection : unreal.FString;
  #end // WITH_EDITORONLY_DATA
  
  /**
    A localized version of the subtitle text that should be displayed for this audio. By default this will be the same as the Spoken Text.
  **/
  @:uproperty public var SubtitleOverride : unreal.FString;
  
  /**
    A localized version of the text that is actually spoken phonetically in the audio.
  **/
  @:uproperty public var SpokenText : unreal.FString;
  @:uproperty public var bOverride_SubtitleOverride : Bool;
  
  /**
    true if this dialogue is considered to contain mature/adult content.
  **/
  @:uproperty public var bMature : Bool;
  
}

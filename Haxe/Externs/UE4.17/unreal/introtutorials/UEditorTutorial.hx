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
package unreal.introtutorials;

/**
  An asset used to build a stage-by-stage tutorial in the editor
**/
@:umodule("IntroTutorials")
@:glueCppIncludes("EditorTutorial.h")
@:uextern @:uclass extern class UEditorTutorial extends unreal.UObject {
  
  /**
    Comma seperated list of tags the search will use to help find this tutorial
  **/
  @:uproperty public var SearchTags : unreal.FText;
  
  /**
    Hide this tutorial in the tutorials browser
  **/
  @:uproperty public var bHideInBrowser : Bool;
  
  /**
    The path this tutorial was imported from, if any.
  **/
  @:uproperty public var ImportPath : unreal.FString;
  
  /**
    Asset to open & attach the tutorial to. Non-widget-bound content will appear in the asset's window
  **/
  @:uproperty public var AssetToUse : unreal.FStringAssetReference;
  
  /**
    A standalone tutorial displays no navigation buttons and each content widget has a close button
  **/
  @:uproperty public var bIsStandalone : Bool;
  
  /**
    Tutorial to optionally chain onto after this tutorial completes
  **/
  @:uproperty public var NextTutorial : unreal.FStringClassReference;
  
  /**
    Tutorial to optionally chain back to if the "back" button is clicked on the first stage
  **/
  @:uproperty public var PreviousTutorial : unreal.FStringClassReference;
  
  /**
    The various stages of this tutorial
  **/
  @:uproperty public var Stages : unreal.TArray<unreal.introtutorials.FTutorialStage>;
  
  /**
    Content to be displayed for this tutorial when presented to the user in summary
  **/
  @:uproperty public var SummaryContent : unreal.introtutorials.FTutorialContent;
  
  /**
    Category of this tutorial, used to organize tutorials when presented to the user
  **/
  @:uproperty public var Category : unreal.FString;
  
  /**
    Texture for this tutorial, used when presented to the user in the tutorial browser.
  **/
  @:uproperty public var Texture : unreal.UTexture2D;
  
  /**
    Icon name for this tutorial, used when presented to the user in the tutorial browser. This is a name for the icon in the Slate editor style. Only used if there isn't a valid texture to use.
  **/
  @:uproperty public var Icon : unreal.FString;
  
  /**
    Sorting priority, used by the tutorial browser
  **/
  @:uproperty public var SortOrder : unreal.Int32;
  
  /**
    Title of this tutorial, used when presented to the user
  **/
  @:uproperty public var Title : unreal.FText;
  
  /**
    Attempts to find the actor specified by PathToActor in the current editor world
    @param        PathToActor     The path to the actor (e.g. PersistentLevel.PlayerStart)
    @return       A reference to the actor, or none if it wasn't found
  **/
  @:ufunction @:final public function GetActorReference(PathToActor : unreal.FString) : unreal.AActor;
  
  /**
    Event fired when a tutorial stage begins
  **/
  @:ufunction private function OnTutorialStageStarted(StageName : unreal.FName) : Void;
  
  /**
    Event fired when a tutorial stage ends
  **/
  @:ufunction private function OnTutorialStageEnded(StageName : unreal.FName) : Void;
  
  /**
    Event fired when a tutorial is launched
  **/
  @:ufunction private function OnTutorialLaunched() : Void;
  
  /**
    Event fired when a tutorial is closed
  **/
  @:ufunction private function OnTutorialClosed() : Void;
  
  /**
    Advance to the next stage of a tutorial
  **/
  @:ufunction static private function GoToNextTutorialStage() : Void;
  
  /**
    Advance to the previous stage of a tutorial
  **/
  @:ufunction static private function GoToPreviousTutorialStage() : Void;
  
  /**
    Begin a tutorial. Note that this will end the current tutorial that is in progress, if any
  **/
  @:ufunction static private function BeginTutorial(TutorialToStart : unreal.introtutorials.UEditorTutorial, bRestart : Bool) : Void;
  
  /**
    Open an asset for use by a tutorial
    @param       Asset   The asset to open
  **/
  @:ufunction static private function OpenAsset(Asset : unreal.UObject) : Void;
  
  /**
    Sets the visibility of the engine folder in the content browser
  **/
  @:ufunction static private function SetEngineFolderVisibilty(bNewVisibility : Bool) : Void;
  
  /**
    Returns the visibility of the engine folder in the content browser
  **/
  @:ufunction static private function GetEngineFolderVisibilty() : Bool;
  
}
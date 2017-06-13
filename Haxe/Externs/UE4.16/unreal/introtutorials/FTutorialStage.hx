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
package unreal.introtutorials;


/**
  A single tutorial stage, containing the optional main content & a number of widgets with content attached
**/
@:umodule("IntroTutorials")
@:glueCppIncludes("EditorTutorial.h")
@:uextern @:ustruct extern class FTutorialStage {
  
  /**
    If false, stage will be skipped if running on any platform in PlatformsToTest. If true, the stage will be if not running on any platform in PlatformsToTest.
  **/
  @:uproperty public var bInvertPlatformTest : Bool;
  
  /**
    List of platforms to test against. Meaning of test is determined by InvertPlatformTest.
  **/
  @:uproperty public var PlatformsToTest : unreal.TArray<unreal.FString>;
  
  /**
    Text to display on the back button
  **/
  @:uproperty public var BackButtonText : unreal.FText;
  
  /**
    Text to display on the next button
  **/
  @:uproperty public var NextButtonText : unreal.FText;
  
  /**
    Widget-bound content to display for this stage
  **/
  @:uproperty public var WidgetContent : unreal.TArray<unreal.introtutorials.FTutorialWidgetContent>;
  
  /**
    Non-widget-bound content to display in this stage
  **/
  @:uproperty public var Content : unreal.introtutorials.FTutorialContent;
  
  /**
    Identifier for this stage
  **/
  @:uproperty public var Name : unreal.FName;
  
}

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
package unreal.editor;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Builders/LinearStairBuilder.h")
@:uextern @:uclass extern class ULinearStairBuilder extends unreal.editor.UEditorBrushBuilder {
  @:uproperty public var GroupName : unreal.FName;
  
  /**
    The distance below the first step
  **/
  @:uproperty public var AddToFirstStep : unreal.Int32;
  
  /**
    The number of steps
  **/
  @:uproperty public var NumSteps : unreal.Int32;
  
  /**
    The width of each step
  **/
  @:uproperty public var StepWidth : unreal.Int32;
  
  /**
    The height of each step
  **/
  @:uproperty public var StepHeight : unreal.Int32;
  
  /**
    The length of each step
  **/
  @:uproperty public var StepLength : unreal.Int32;
  
}

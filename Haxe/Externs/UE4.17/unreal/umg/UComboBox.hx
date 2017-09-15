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
package unreal.umg;

/**
  The combobox allows you to display a list of options to the user in a dropdown menu for them to select one.
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class UComboBox extends unreal.umg.UWidget {
  @:uproperty public var bIsFocusable : Bool;
  
  /**
    Called when the widget is needed for the item.
  **/
  @:uproperty public var OnGenerateWidgetEvent : unreal.umg.FGenerateWidgetForObject;
  
  /**
    The list of items to be displayed on the combobox.
  **/
  @:uproperty public var Items : unreal.TArray<unreal.UObject>;
  
}
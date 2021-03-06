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
package unreal.umg;


/**
  The widget blueprint generated class allows us to create blueprint-able widgets for UMG at runtime.
  All WBPGC's are of UUserWidget classes, and they perform special post initialization using this class
  to give themselves many of the same capabilities as AActor blueprints, like dynamic delegate binding for
  widgets.
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class UWidgetBlueprintGeneratedClass extends unreal.UBlueprintGeneratedClass {
  @:uproperty public var bCanEverPaint : Bool;
  @:uproperty public var bCanEverTick : Bool;
  @:uproperty public var NamedSlots : unreal.TArray<unreal.FName>;
  @:uproperty public var Animations : unreal.TArray<unreal.umg.UWidgetAnimation>;
  @:uproperty public var Bindings : unreal.TArray<unreal.umg.FDelegateRuntimeBinding>;
  
  /**
    A tree of the widget templates to be created
  **/
  @:uproperty public var WidgetTree : unreal.umg.UWidgetTree;
  
}

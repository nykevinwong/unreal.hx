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
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Struct containing information about what interfaces are implemented in this blueprint
**/
@:glueCppIncludes("Engine/Blueprint.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FBPInterfaceDescription {
  
  /**
    References to the graphs associated with the required functions for this interface
  **/
  @:uproperty public var Graphs : unreal.TArray<unreal.UEdGraph>;
  
  /**
    Reference to the interface class we're adding to this blueprint
  **/
  @:uproperty public var Interface : unreal.TSubclassOf<unreal.IInterface>;
  
}

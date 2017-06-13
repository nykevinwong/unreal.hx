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
  
  Stores information about a function that this material references, used to know when the material needs to be recompiled.
**/
@:glueCppIncludes("Materials/Material.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FMaterialFunctionInfo {
  
  /**
    The function which this material has a dependency on.
  **/
  @:uproperty public var Function : unreal.UMaterialFunction;
  
  /**
    Id that the function had when this material was last compiled.
  **/
  @:uproperty public var StateId : unreal.FGuid;
  
}

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
package unreal.niagara;

@:umodule("Niagara")
@:glueCppIncludes("NiagaraTypes.h")
@:uextern @:ustruct extern class FNiagaraTypeDefinition {
  
  /**
    UStruct specifying the type for this variable.
    For most types this will be a UScriptStruct pointing to a something like the struct for an FVector etc.
    In occasional situations this may be a UClass when we're dealing with DataInterface etc.
  **/
  @:uproperty public var Struct : unreal.UStruct;
  
}

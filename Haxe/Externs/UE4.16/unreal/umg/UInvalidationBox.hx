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
package unreal.umg;


/**
  Invalidate
  * Single Child
  * Caching / Performance
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class UInvalidationBox extends unreal.umg.UContentWidget {
  @:ufunction @:final public function InvalidateCache() : Void;
  @:ufunction @:thisConst @:final public function GetCanCache() : Bool;
  @:ufunction @:final public function SetCanCache(CanCache : Bool) : Void;
  
}

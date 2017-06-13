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
  
  An integral key, which holds the key time and the key value
**/
@:glueCppIncludes("Curves/IntegralCurve.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FIntegralKey {
  
  /**
    The keyed integral value
  **/
  @:uproperty public var Value : unreal.Int32;
  
  /**
    The keyed time
  **/
  @:uproperty public var Time : unreal.Float32;
  
}

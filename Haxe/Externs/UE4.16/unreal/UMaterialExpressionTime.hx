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
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Materials/MaterialExpressionTime.h")
@:noClass @:uextern @:uclass extern class UMaterialExpressionTime extends unreal.UMaterialExpression {
  
  /**
    Period at which to wrap around time
  **/
  @:uproperty public var Period : unreal.Float32;
  
  /**
    Enables or disables the Period value.
  **/
  @:uproperty public var bOverride_Period : Bool;
  
  /**
    This time continues advancing regardless of whether the game is paused.
  **/
  @:uproperty public var bIgnorePause : Bool;
  
}

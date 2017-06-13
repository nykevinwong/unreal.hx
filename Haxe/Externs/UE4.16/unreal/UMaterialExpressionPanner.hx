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
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Materials/MaterialExpressionPanner.h")
@:uextern @:uclass extern class UMaterialExpressionPanner extends unreal.UMaterialExpression {
  
  /**
    Output only the fractional part of the pan calculation for greater precision.
    Output is greater than or equal to 0 and less than 1.
  **/
  @:uproperty public var bFractionalPart : Bool;
  
  /**
    only used if Coordinate is not hooked up
  **/
  @:uproperty public var ConstCoordinate : unreal.FakeUInt32;
  @:uproperty public var SpeedY : unreal.Float32;
  @:uproperty public var SpeedX : unreal.Float32;
  
  /**
    Vector2 speed scale, if specified
  **/
  @:uproperty public var Speed : unreal.FExpressionInput;
  
  /**
    Defaults to Game Time if not specified
  **/
  @:uproperty public var Time : unreal.FExpressionInput;
  
  /**
    Defaults to 'ConstCoordinate' if not specified
  **/
  @:uproperty public var Coordinate : unreal.FExpressionInput;
  
}

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
@:glueCppIncludes("Materials/MaterialExpressionMultiply.h")
@:uextern @:uclass extern class UMaterialExpressionMultiply extends unreal.UMaterialExpression {
  
  /**
    only used if B is not hooked up
  **/
  @:uproperty public var ConstB : unreal.Float32;
  
  /**
    only used if A is not hooked up
  **/
  @:uproperty public var ConstA : unreal.Float32;
  
  /**
    Defaults to 'ConstB' if not specified
  **/
  @:uproperty public var B : unreal.FExpressionInput;
  
  /**
    Defaults to 'ConstA' if not specified
  **/
  @:uproperty public var A : unreal.FExpressionInput;
  
}

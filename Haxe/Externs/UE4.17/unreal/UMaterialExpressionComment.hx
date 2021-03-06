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
package unreal;

/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Materials/MaterialExpressionComment.h")
@:uextern @:uclass extern class UMaterialExpressionComment extends unreal.UMaterialExpression {
  
  /**
    Color to style comment with
  **/
  @:uproperty public var CommentColor : unreal.FLinearColor;
  @:uproperty public var Text : unreal.FString;
  @:uproperty public var SizeY : unreal.Int32;
  @:uproperty public var SizeX : unreal.Int32;
  
}

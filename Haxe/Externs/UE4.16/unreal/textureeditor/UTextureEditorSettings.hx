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
package unreal.textureeditor;


/**
  Implements the Editor's user settings.
**/
@:umodule("TextureEditor")
@:glueCppIncludes("TextureEditorSettings.h")
@:uextern @:uclass extern class UTextureEditorSettings extends unreal.UObject {
  
  /**
    If true, displays a border around the texture.
  **/
  @:uproperty public var TextureBorderEnabled : Bool;
  
  /**
    Color to use for the texture border, if enabled.
  **/
  @:uproperty public var TextureBorderColor : unreal.FColor;
  
  /**
    Whether the texture should scale to fit the view port.
  **/
  @:uproperty public var FitToViewport : Bool;
  
  /**
    The size of the checkered background tiles.
  **/
  @:uproperty public var CheckerSize : unreal.Int32;
  
  /**
    The second color of the checkered background.
  **/
  @:uproperty public var CheckerColorTwo : unreal.FColor;
  
  /**
    The first color of the checkered background.
  **/
  @:uproperty public var CheckerColorOne : unreal.FColor;
  
  /**
    Background and foreground color used by Texture preview view ports.
  **/
  @:uproperty public var BackgroundColor : unreal.FColor;
  
  /**
    The type of background to draw in the texture editor view port.
  **/
  @:uproperty public var Background : unreal.textureeditor.ETextureEditorBackgrounds;
  
}

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
package unreal.moviescene;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Movie scene binding override data
**/
@:umodule("MovieScene")
@:glueCppIncludes("MovieSceneBindingOverrides.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FMovieSceneBindingOverrideData {
  
  /**
    Specifies whether the default assignment should remain bound (false) or if this should completely override the default binding (false).
  **/
  @:uproperty public var bOverridesDefault : Bool;
  
  /**
    Specifies the object to override the binding with.
  **/
  @:uproperty public var Object : unreal.TWeakObjectPtr<unreal.UObject>;
  
  /**
    Specifies the object binding to override.
  **/
  @:uproperty public var ObjectBindingId : unreal.moviescene.FMovieSceneObjectBindingID;
  
}

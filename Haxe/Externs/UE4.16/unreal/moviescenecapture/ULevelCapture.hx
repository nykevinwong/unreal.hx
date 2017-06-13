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
package unreal.moviescenecapture;

@:umodule("MovieSceneCapture")
@:glueCppIncludes("LevelCapture.h")
@:uextern @:uclass extern class ULevelCapture extends unreal.moviescenecapture.UMovieSceneCapture {
  
  /**
    Specifies whether the capture should start immediately, or whether it will be invoked externally (through StartMovieCapture/StopMovieCapture exec commands)
  **/
  @:uproperty public var bAutoStartCapture : Bool;
  
}

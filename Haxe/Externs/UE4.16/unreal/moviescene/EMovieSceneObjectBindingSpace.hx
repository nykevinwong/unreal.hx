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
  Enumeration specifying how a movie scene object binding ID relates to the sequence
**/
@:umodule("MovieScene")
@:glueCppIncludes("MovieSceneObjectBindingID.h")
@:uname("EMovieSceneObjectBindingSpace")
@:class @:uextern @:uenum extern enum EMovieSceneObjectBindingSpace {
  
  /**
    The object binding sequence ID resolves from a local sequence (ie, it may need to accumulate a parent sequence ID before it resolves correctly)
  **/
  Local;
  
  /**
    The object binding sequence ID resolves from the root of the sequence
  **/
  Root;
  
}

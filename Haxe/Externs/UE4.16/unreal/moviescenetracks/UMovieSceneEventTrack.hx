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
package unreal.moviescenetracks;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  Implements a movie scene track that triggers discrete events during playback.
**/
@:umodule("MovieSceneTracks")
@:glueCppIncludes("Tracks/MovieSceneEventTrack.h")
@:uextern @:uclass extern class UMovieSceneEventTrack extends unreal.moviescene.UMovieSceneNameableTrack {
  
  /**
    Defines a list of object bindings on which to trigger the events in this track. When empty, events will trigger in the default event contexts for the playback environment (such as the level blueprint, or widget).
  **/
  @:uproperty public var EventReceivers : unreal.TArray<unreal.moviescene.FMovieSceneObjectBindingID>;
  
  /**
    Defines where in the evaluation to trigger events
  **/
  @:uproperty public var EventPosition : unreal.moviescenetracks.EFireEventsAtPosition;
  
  /**
    If events should be fired when passed playing the sequence backwards.
  **/
  @:uproperty public var bFireEventsWhenBackwards : Bool;
  
  /**
    If events should be fired when passed playing the sequence forwards.
  **/
  @:uproperty public var bFireEventsWhenForwards : Bool;
  
}

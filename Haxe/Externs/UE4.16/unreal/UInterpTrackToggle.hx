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
@:glueCppIncludes("Matinee/InterpTrackToggle.h")
@:uextern @:uclass extern class UInterpTrackToggle extends unreal.UInterpTrack {
  
  /**
    If true, events on this track are fired even when jumping forwads through a sequence - for example, skipping a cinematic.
  **/
  @:uproperty public var bFireEventsWhenJumpingForwards : Bool;
  
  /**
    If events should be fired when passed playing the sequence backwards.
  **/
  @:uproperty public var bFireEventsWhenBackwards : Bool;
  
  /**
    If events should be fired when passed playing the sequence forwards.
  **/
  @:uproperty public var bFireEventsWhenForwards : Bool;
  
  /**
    If true, the track will activate the system w/ the 'Just Attached' flag.
  **/
  @:uproperty public var bActivateWithJustAttachedFlag : Bool;
  
  /**
    If true, the track will call ActivateSystem on the emitter each update (the old 'incorrect' behavior).
    If false (the default), the System will only be activated if it was previously inactive.
  **/
  @:uproperty public var bActivateSystemEachUpdate : Bool;
  
  /**
    Array of events to fire off.
  **/
  @:uproperty public var ToggleTrack : unreal.TArray<unreal.FToggleTrackKey>;
  
}

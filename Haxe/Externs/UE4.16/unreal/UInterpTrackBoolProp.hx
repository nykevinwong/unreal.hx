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
@:glueCppIncludes("Matinee/InterpTrackBoolProp.h")
@:uextern @:uclass extern class UInterpTrackBoolProp extends unreal.UInterpTrack {
  
  /**
    Name of property in Group  AActor  which this track will modify over time.
  **/
  @:uproperty public var PropertyName : unreal.FName;
  
  /**
    Array of booleans to set.
  **/
  @:uproperty public var BoolTrack : unreal.TArray<unreal.FBoolTrackKey>;
  
}

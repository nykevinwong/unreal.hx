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
  
  Plays different sounds depending on the number of active sounds
  Any time a new sound is played, the first group that has an available slot will be chosen
**/
@:glueCppIncludes("Sound/SoundNodeGroupControl.h")
@:uextern @:uclass extern class USoundNodeGroupControl extends unreal.USoundNode {
  
  /**
    How many active sounds are allowed for each group
  **/
  @:uproperty public var GroupSizes : unreal.TArray<unreal.Int32>;
  
}

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
package unreal.animationmodifiers;

@:umodule("AnimationModifiers")
@:glueCppIncludes("AnimationModifier.h")
@:uextern @:uclass extern class UAnimationModifier extends unreal.UObject {
  
  /**
    Executed when the Animation is initialized (native event for debugging / testing purposes)
  **/
  @:ufunction public function OnApply(AnimationSequence : unreal.UAnimSequence) : Void;
  @:ufunction public function OnRevert(AnimationSequence : unreal.UAnimSequence) : Void;
  
}

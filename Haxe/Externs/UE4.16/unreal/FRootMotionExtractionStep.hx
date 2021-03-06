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
  Struct defining a RootMotionExtractionStep.
  When extracting RootMotion we can encounter looping animations (wrap around), or different animations.
  We break those up into different steps, to help with RootMotion extraction,
  as we can only extract a contiguous range per AnimSequence.
**/
@:glueCppIncludes("Animation/AnimCompositeBase.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FRootMotionExtractionStep {
  
  /**
    End position to extract root motion to.
  **/
  @:uproperty public var EndPosition : unreal.Float32;
  
  /**
    Start position to extract root motion from.
  **/
  @:uproperty public var StartPosition : unreal.Float32;
  
  /**
    AnimSequence ref
  **/
  @:uproperty public var AnimSequence : unreal.UAnimSequence;
  
}

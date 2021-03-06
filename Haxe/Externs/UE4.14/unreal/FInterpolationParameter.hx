/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:glueCppIncludes("Animation/BlendSpaceBase.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FInterpolationParameter {
  
  /**
    Interpolation Type for input, when it gets input, it will use this filter to decide how to get to target.
  **/
  @:uproperty public var InterpolationType : unreal.EFilterInterpolationType;
  
  /**
    Interpolation Time for input, when it gets input, it will use this time to interpolate to target, used for smoother interpolation.
  **/
  @:uproperty public var InterpolationTime : unreal.Float32;
  
}

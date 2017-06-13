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

@:glueCppIncludes("Animation/AnimTypes.h")
@:uname("ECurveBlendOption.Type")
@:uextern @:uenum extern enum ECurveBlendOption {
  
  /**
    Find Max Weight of curve and use that weight.
  **/
  MaxWeight;
  
  /**
    Normalize By Sum of Weight and use it to blend.
  **/
  NormalizeByWeight;
  
  /**
    Blend By Weight without normalizing
  **/
  BlendByWeight;
  
}

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

@:glueCppIncludes("AI/Navigation/NavigationTypes.h")
@:uextern @:ustruct extern class FNavDataConfig extends unreal.FNavAgentProperties {
  @:uproperty public var NavigationDataClassName : unreal.FStringClassReference;
  @:uproperty public var NavigationDataClass : unreal.TSubclassOf<unreal.ANavigationData>;
  @:uproperty public var DefaultQueryExtent : unreal.FVector;
  @:uproperty public var Color : unreal.FColor;
  @:uproperty public var Name : unreal.FName;
  
}

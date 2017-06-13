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
@:glueCppIncludes("Engine/PlatformInterfaceWebResponse.h")
@:uextern @:uclass extern class UPlatformInterfaceWebResponse extends unreal.UObject {
  
  /**
    For non-string results, this is the response
  **/
  @:uproperty public var BinaryResponse : unreal.TArray<unreal.UInt8>;
  
  /**
    For string results, this is the response
  **/
  @:uproperty public var StringResponse : unreal.FString;
  
  /**
    A user-specified tag specified with the request
  **/
  @:uproperty public var Tag : unreal.Int32;
  
  /**
    Result code from the response (200=OK, 404=Not Found, etc)
  **/
  @:uproperty public var ResponseCode : unreal.Int32;
  
  /**
    This holds the original requested URL
  **/
  @:uproperty public var OriginalURL : unreal.FString;
  
}

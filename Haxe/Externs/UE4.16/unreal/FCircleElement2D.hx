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
  Sphere shape used for collision
**/
@:glueCppIncludes("PhysicsEngine/AggregateGeometry2D.h")
@:uextern @:ustruct extern class FCircleElement2D {
  @:uproperty public var Radius : unreal.Float32;
  @:uproperty public var Center : unreal.FVector2D;
  
}

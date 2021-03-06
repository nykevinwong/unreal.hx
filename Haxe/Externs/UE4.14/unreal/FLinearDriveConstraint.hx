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
  Linear Drive
**/
@:glueCppIncludes("PhysicsEngine/ConstraintDrives.h")
@:uextern @:ustruct extern class FLinearDriveConstraint {
  @:uproperty public var bEnablePositionDrive : Bool;
  @:uproperty public var ZDrive : unreal.FConstraintDrive;
  @:uproperty public var YDrive : unreal.FConstraintDrive;
  @:uproperty public var XDrive : unreal.FConstraintDrive;
  
  /**
    Target velocity the linear drive.
  **/
  @:uproperty public var VelocityTarget : unreal.FVector;
  
  /**
    Target position the linear drive.
  **/
  @:uproperty public var PositionTarget : unreal.FVector;
  
}

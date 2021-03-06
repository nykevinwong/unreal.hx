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
  
  This is a mapping table between bone in a particular skeletal mesh and bone of this skeleton set.
**/
@:glueCppIncludes("Animation/Skeleton.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FSkeletonToMeshLinkup {
  
  /**
    Mapping table. Size must be same as size of ref pose (not bone tree).
    No index should be more than the number of bones in this skeletalmesh
    -1 indicates no match for this bone - will be ignored.
  **/
  @:uproperty public var MeshToSkeletonTable : unreal.TArray<unreal.Int32>;
  
  /**
    Mapping table. Size must be same as size of bone tree (not Mesh Ref Pose).
    No index should be more than the number of bones in this skeleton
    -1 indicates no match for this bone - will be ignored.
  **/
  @:uproperty public var SkeletonToMeshTable : unreal.TArray<unreal.Int32>;
  
}

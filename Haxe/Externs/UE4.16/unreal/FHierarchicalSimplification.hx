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

@:glueCppIncludes("GameFramework/WorldSettings.h")
@:uextern @:ustruct extern class FHierarchicalSimplification {
  
  /**
    Min number of actors to build LODActor
  **/
  @:uproperty public var MinNumberOfActorsToBuild : unreal.Int32;
  
  /**
    Desired Filling Percentage for clustering - this is not guaranteed but used to calculate filling factor  for auto clustering
  **/
  @:uproperty public var DesiredFillingPercentage : unreal.Float32;
  
  /**
    Desired Bounding Radius for clustering - this is not guaranteed but used to calculate filling factor for auto clustering
  **/
  @:uproperty public var DesiredBoundRadius : unreal.Float32;
  
  /**
    Merge Mesh Setting if bSimplifyMesh is false
  **/
  @:uproperty public var MergeSetting : unreal.FMeshMergingSettings;
  
  /**
    Simplification Setting if bSimplifyMesh is true
  **/
  @:uproperty public var ProxySetting : unreal.FMeshProxySettings;
  
  /**
    If this is true, it will simplify mesh but it is slower.
    If false, it will just merge actors but not simplify using the lower LOD if exists.
    For example if you build LOD 1, it will use LOD 1 of the mesh to merge actors if exists.
    If you merge material, it will reduce drawcalls.
  **/
  @:uproperty public var bSimplifyMesh : Bool;
  
  /**
    The screen radius an mesh object should reach before swapping to the LOD actor, once one of parent displays, it won't draw any of children.
  **/
  @:uproperty public var TransitionScreenSize : unreal.Float32;
  
}

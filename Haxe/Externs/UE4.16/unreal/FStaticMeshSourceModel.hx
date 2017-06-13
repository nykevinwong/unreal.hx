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
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Source model from which a renderable static mesh is built.
**/
@:glueCppIncludes("Engine/StaticMesh.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FStaticMeshSourceModel {
  
  /**
    ScreenSize to display this LOD.
    The screen size is based around the projected diameter of the bounding
    sphere of the model. i.e. 0.5 means half the screen's maximum dimension.
  **/
  @:uproperty public var ScreenSize : unreal.Float32;
  @:deprecated @:uproperty public var LODDistance_DEPRECATED : unreal.Float32;
  
  /**
    Reduction settings to apply when building render data.
  **/
  @:uproperty public var ReductionSettings : unreal.FMeshReductionSettings;
  
  /**
    Settings applied when building the mesh.
  **/
  @:uproperty public var BuildSettings : unreal.FMeshBuildSettings;
  
}

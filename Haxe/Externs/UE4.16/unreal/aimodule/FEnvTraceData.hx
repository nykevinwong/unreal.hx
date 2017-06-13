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
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("EnvironmentQuery/EnvQueryTypes.h")
@:uextern @:ustruct extern class FEnvTraceData {
  
  /**
    if set, editor show height up/down properties for projection
  **/
  @:uproperty public var bCanProjectDown : Bool;
  
  /**
    if set, editor will allow
  **/
  @:uproperty public var bCanDisableTrace : Bool;
  
  /**
    if set, editor will allow picking geometry trace
  **/
  @:uproperty public var bCanTraceOnGeometry : Bool;
  
  /**
    if set, editor will allow picking navmesh trace
  **/
  @:uproperty public var bCanTraceOnNavMesh : Bool;
  
  /**
    if set, trace will look only for blocking hits
  **/
  @:uproperty public var bOnlyBlockingHits : Bool;
  
  /**
    if set, trace will run on complex collisions
  **/
  @:uproperty public var bTraceComplex : Bool;
  
  /**
    shape used for geometry tracing
  **/
  @:uproperty public var TraceMode : unreal.aimodule.EEnvQueryTrace;
  
  /**
    shape used for geometry tracing
  **/
  @:uproperty public var TraceShape : unreal.aimodule.EEnvTraceShape;
  
  /**
    geometry trace channel for serialization purposes
  **/
  @:uproperty public var SerializedChannel : unreal.ECollisionChannel;
  
  /**
    geometry trace channel
  **/
  @:uproperty public var TraceChannel : unreal.ETraceTypeQuery;
  
  /**
    this value will be added to resulting location's Z axis. Can be useful when
        projecting points to navigation since navmesh is just an approximation of level
        geometry and items may end up being under collide-able geometry which would
        for example falsify visibility tests.
  **/
  @:uproperty public var PostProjectionVerticalOffset : unreal.Float32;
  
  /**
    shape parameter for trace
  **/
  @:uproperty public var ExtentZ : unreal.Float32;
  
  /**
    shape parameter for trace
  **/
  @:uproperty public var ExtentY : unreal.Float32;
  
  /**
    shape parameter for trace
  **/
  @:uproperty public var ExtentX : unreal.Float32;
  
  /**
    search height: above point
  **/
  @:uproperty public var ProjectUp : unreal.Float32;
  
  /**
    search height: below point
  **/
  @:uproperty public var ProjectDown : unreal.Float32;
  
  /**
    navigation filter for tracing
  **/
  @:uproperty public var NavigationFilter : unreal.TSubclassOf<unreal.UNavigationQueryFilter>;
  
  /**
    version number for updates
  **/
  @:uproperty public var VersionNum : unreal.Int32;
  
}

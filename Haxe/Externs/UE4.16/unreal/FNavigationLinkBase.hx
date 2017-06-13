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

@:glueCppIncludes("AI/Navigation/NavLinkDefinition.h")
@:uextern @:ustruct extern class FNavigationLinkBase {
  
  /**
    custom flag, check DescribeCustomFlags for details
  **/
  @:uproperty public var bCustomFlag7 : Bool;
  
  /**
    custom flag, check DescribeCustomFlags for details
  **/
  @:uproperty public var bCustomFlag6 : Bool;
  
  /**
    custom flag, check DescribeCustomFlags for details
  **/
  @:uproperty public var bCustomFlag5 : Bool;
  
  /**
    custom flag, check DescribeCustomFlags for details
  **/
  @:uproperty public var bCustomFlag4 : Bool;
  
  /**
    custom flag, check DescribeCustomFlags for details
  **/
  @:uproperty public var bCustomFlag3 : Bool;
  
  /**
    custom flag, check DescribeCustomFlags for details
  **/
  @:uproperty public var bCustomFlag2 : Bool;
  
  /**
    custom flag, check DescribeCustomFlags for details
  **/
  @:uproperty public var bCustomFlag1 : Bool;
  
  /**
    custom flag, check DescribeCustomFlags for details
  **/
  @:uproperty public var bCustomFlag0 : Bool;
  
  /**
    If set, link will try to snap to cheapest area in given radius
  **/
  @:uproperty public var bSnapToCheapestArea : Bool;
  
  /**
    WITH_EDITORONLY_DATA
  **/
  @:uproperty public var bUseSnapHeight : Bool;
  #if WITH_EDITORONLY_DATA
  
  /**
    this is an editor-only property to put descriptions in navlinks setup, to be able to identify it easier
  **/
  @:uproperty public var Description : unreal.FString;
  #end // WITH_EDITORONLY_DATA
  @:uproperty public var bSupportsAgent15 : Bool;
  @:uproperty public var bSupportsAgent14 : Bool;
  @:uproperty public var bSupportsAgent13 : Bool;
  @:uproperty public var bSupportsAgent12 : Bool;
  @:uproperty public var bSupportsAgent11 : Bool;
  @:uproperty public var bSupportsAgent10 : Bool;
  @:uproperty public var bSupportsAgent9 : Bool;
  @:uproperty public var bSupportsAgent8 : Bool;
  @:uproperty public var bSupportsAgent7 : Bool;
  @:uproperty public var bSupportsAgent6 : Bool;
  @:uproperty public var bSupportsAgent5 : Bool;
  @:uproperty public var bSupportsAgent4 : Bool;
  @:uproperty public var bSupportsAgent3 : Bool;
  @:uproperty public var bSupportsAgent2 : Bool;
  @:uproperty public var bSupportsAgent1 : Bool;
  
  /**
    DEPRECATED AGENT CONFIG
  **/
  @:uproperty public var bSupportsAgent0 : Bool;
  
  /**
    restrict area only to specified agents
  **/
  @:uproperty public var SupportedAgents : unreal.FNavAgentSelector;
  @:uproperty public var SnapHeight : unreal.Float32;
  @:uproperty public var SnapRadius : unreal.Float32;
  @:uproperty public var Direction : unreal.ENavLinkDirection;
  
  /**
    if greater than 0 nav system will attempt to project navlink's end point on geometry below
  **/
  @:uproperty public var MaxFallDownLength : unreal.Float32;
  
  /**
    if greater than 0 nav system will attempt to project navlink's start point on geometry below
  **/
  @:uproperty public var LeftProjectHeight : unreal.Float32;
  
}

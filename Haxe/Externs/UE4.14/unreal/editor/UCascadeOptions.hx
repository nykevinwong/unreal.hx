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
package unreal.editor;

@:umodule("UnrealEd")
@:glueCppIncludes("Preferences/CascadeOptions.h")
@:uextern @:uclass extern class UCascadeOptions extends unreal.UObject {
  
  /**
    The radius of the motion mode
  **/
  @:uproperty public var MotionModeRadius : unreal.Float32;
  
  /**
    The number of units the mouse must move before considering the module as dragged.
  **/
  @:uproperty public var Cascade_MouseMoveThreshold : unreal.Int32;
  
  /**
    If true, center the module name and buttons in the module box.
  **/
  @:uproperty public var bCenterCascadeModuleText : Bool;
  
  /**
    The height to use for the 'slimline' module drawing method in cascade.
  **/
  @:uproperty public var SlimCascadeDrawHeight : unreal.Int32;
  
  /**
    If true, use the 'slimline' module drawing method in cascade.
  **/
  @:uproperty public var bUseSlimCascadeDraw : Bool;
  @:uproperty public var ShowPPFlags : unreal.Int32;
  @:uproperty public var FloorScale3D : unreal.FVector;
  @:uproperty public var FloorScale : unreal.Float32;
  @:uproperty public var FloorRotation : unreal.FRotator;
  @:uproperty public var FloorPosition : unreal.FVector;
  @:uproperty public var FloorMesh : unreal.FString;
  @:uproperty public var bShowFloor : Bool;
  @:uproperty public var ParticleMemoryUpdateTime : unreal.Float32;
  @:uproperty public var bShowParticleMemory : Bool;
  @:uproperty public var bShowParticleDistance : Bool;
  @:uproperty public var bShowParticleTimes : Bool;
  @:uproperty public var bShowParticleEvents : Bool;
  @:uproperty public var bShowParticleCounts : Bool;
  @:uproperty public var GridPerspectiveSize : unreal.Float32;
  @:uproperty public var GridColor_Low : unreal.FColor;
  @:uproperty public var GridColor_Hi : unreal.FColor;
  @:uproperty public var bShowGrid : Bool;
  @:uproperty public var ModuleColor_Event_Selected : unreal.FColor;
  @:uproperty public var ModuleColor_Event_Unselected : unreal.FColor;
  @:uproperty public var ModuleColor_Required_Selected : unreal.FColor;
  @:uproperty public var ModuleColor_Required_Unselected : unreal.FColor;
  @:uproperty public var ModuleColor_SubUV_Selected : unreal.FColor;
  @:uproperty public var ModuleColor_SubUV_Unselected : unreal.FColor;
  @:uproperty public var ModuleColor_Light_Selected : unreal.FColor;
  @:uproperty public var ModuleColor_Light_Unselected : unreal.FColor;
  @:uproperty public var ModuleColor_Spawn_Selected : unreal.FColor;
  @:uproperty public var ModuleColor_Spawn_Unselected : unreal.FColor;
  @:uproperty public var ModuleColor_Trail_Selected : unreal.FColor;
  @:uproperty public var ModuleColor_Trail_Unselected : unreal.FColor;
  @:uproperty public var ModuleColor_Beam_Selected : unreal.FColor;
  @:uproperty public var ModuleColor_Beam_Unselected : unreal.FColor;
  @:uproperty public var ModuleColor_TypeData_Selected : unreal.FColor;
  @:uproperty public var ModuleColor_TypeData_Unselected : unreal.FColor;
  @:uproperty public var ModuleColor_General_Selected : unreal.FColor;
  @:uproperty public var ModuleColor_General_Unselected : unreal.FColor;
  @:uproperty public var Emitter_Selected : unreal.FColor;
  @:uproperty public var Emitter_Unselected : unreal.FColor;
  @:uproperty public var Emitter_Background : unreal.FColor;
  @:uproperty public var Empty_Background : unreal.FColor;
  @:uproperty public var bUseSpaceBarResetInLevel : Bool;
  @:uproperty public var bUseSpaceBarReset : Bool;
  @:uproperty public var bUseSubMenus : Bool;
  @:uproperty public var BackgroundColor : unreal.FColor;
  @:uproperty public var bShowModuleDump : Bool;
  
}

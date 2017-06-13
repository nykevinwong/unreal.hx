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
package unreal.editor;


/**
  Implements Editor settings for experimental features.
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Settings/EditorExperimentalSettings.h")
@:uextern @:uclass extern class UEditorExperimentalSettings extends unreal.UObject {
  
  /**
    Enable experimental clothing tools (parameter painting and simulation configuration) found in the skeletal mesh editor
  **/
  @:uproperty public var bClothingTools : Bool;
  
  /**
    Enable experimental bulk facial animation importer (found in Developer Tools menu, requires editor restart)
  **/
  @:uproperty public var bFacialAnimationImporter : Bool;
  
  /**
    Allows editing of potentially unsafe properties during PIE. Advanced use only - use with caution.
  **/
  @:uproperty public var bAllowPotentiallyUnsafePropertyEditing : Bool;
  
  /**
    Whether to use OpenCL to accelerate convex hull decomposition (uses GPU to decrease time taken to decompose meshes, currently only available on Mac OS X)
  **/
  @:uproperty public var bUseOpenCLForConvexHullDecomp : Bool;
  
  /**
    Enable multithreaded shadow map encoding (decreases time taken to encode shadow maps)
  **/
  @:uproperty public var bEnableMultithreadedShadowmapEncoding : Bool;
  
  /**
    Enable multithreaded lightmap encoding (decreases time taken to encode lightmaps)
  **/
  @:uproperty public var bEnableMultithreadedLightmapEncoding : Bool;
  
  /**
    Allow Vulkan Preview
  **/
  @:uproperty public var bAllowVulkanPreview : Bool;
  
  /**
    Enable late joining in PIE
  **/
  @:uproperty public var bAllowLateJoinInPIE : Bool;
  
  /**
    This feature allows you to broadcast to a live streaming service directly from the editor.  This requires you to have a live streaming plugin installed.
  **/
  @:uproperty public var bLiveStreamingFromEditor : Bool;
  
  /**
    Enables Environment Queries editor
  **/
  @:uproperty public var bEQSEditor : Bool;
  @:uproperty public var MultiProcessCooking : unreal.Int32;
  
  /**
    Disable cook in the editor
  **/
  @:uproperty public var bDisableCookInEditor : Bool;
  
  /**
    Allows ChunkIDs to be assigned to assets to via the content browser context menu.
  **/
  @:uproperty public var bContextMenuChunkAssignments : Bool;
  
  /**
    Whether to show Audio Streaming options for SoundWaves (disabling will not stop all audio streaming)
  **/
  @:uproperty public var bShowAudioStreamingOptions : Bool;
  
  /**
    , Category=Blueprints, meta=(DisplayName="Draw midpoint arrows in Blueprints")
  **/
  @:uproperty public var bDrawMidpointArrowsInBlueprints : Bool;
  
  /**
    Enables "Find and Replace All" tool in the MyBlueprint window for variables
  **/
  @:uproperty public var bEnableFindAndReplaceReferences : Bool;
  
  /**
    Enable experimental blueprint performance analysis tools.
  **/
  @:uproperty public var bBlueprintPerformanceAnalysisTools : Bool;
  
  /**
    Break on Exceptions allows you to trap Access Nones and other exceptional events in Blueprints.
  **/
  @:uproperty public var bBreakOnExceptions : Bool;
  
  /**
    Allows for customization of toolbars and menus throughout the editor
  **/
  @:uproperty public var bToolbarCustomization : Bool;
  
  /**
    Specify which console-specific nomenclature to use for gamepad label text
  **/
  @:uproperty public var ConsoleForGamepadLabels : unreal.inputcore.EConsoleForGamepadLabels;
  
  /**
    Device output log window (currently implemented for Android only)
  **/
  @:uproperty public var bDeviceOutputLog : Bool;
  
  /**
    When enabled, all details panels will be able to have properties marked as favorite that show in a top most category.
    NOTE: Some customizations are not supported yet
  **/
  @:uproperty public var bEnableFavoriteSystem : Bool;
  
  /**
    The Blutility shelf holds editor utility Blueprints. Summon from the Workspace menu.
  **/
  @:uproperty public var bEnableEditorUtilityBlueprints : Bool;
  
  /**
    Allows usage of the Translation Picker
  **/
  @:uproperty public var bEnableTranslationPicker : Bool;
  
  /**
    Allows usage of the Localization Dashboard
  **/
  @:uproperty public var bEnableLocalizationDashboard : Bool;
  
  /**
    Allows usage of the procedural foliage system
  **/
  @:uproperty public var bProceduralFoliage : Bool;
  
}

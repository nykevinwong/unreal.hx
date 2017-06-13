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
  
  Holds settings for the import workflow stage of the build promotion test
**/
@:glueCppIncludes("Tests/AutomationTestSettings.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FBuildPromotionImportWorkflowSettings {
  
  /**
    Import settings for any other assets you may want to import
  **/
  @:uproperty public var OtherAssetsToImport : unreal.TArray<unreal.FEditorImportWorkflowDefinition>;
  
  /**
    Import settings for the surround sound (Select any of the channels.  It will auto import the rest)
  **/
  @:uproperty public var SurroundSound : unreal.FEditorImportWorkflowDefinition;
  
  /**
    Import settings for the sound
  **/
  @:uproperty public var Sound : unreal.FEditorImportWorkflowDefinition;
  
  /**
    Import settings for the animation asset.  (Will automatically use the skeleton of the skeletal mesh above)
  **/
  @:uproperty public var Animation : unreal.FEditorImportWorkflowDefinition;
  
  /**
    Import settings for the skeletal mesh
  **/
  @:uproperty public var SkeletalMesh : unreal.FEditorImportWorkflowDefinition;
  
  /**
    Import settings for the morph mesh
  **/
  @:uproperty public var MorphMesh : unreal.FEditorImportWorkflowDefinition;
  
  /**
    Import settings for the blend shape
  **/
  @:uproperty public var BlendShapeMesh : unreal.FEditorImportWorkflowDefinition;
  
  /**
    Import settings for the static mesh to re-import
  **/
  @:uproperty public var ReimportStaticMesh : unreal.FEditorImportWorkflowDefinition;
  
  /**
    Import settings for the static mesh
  **/
  @:uproperty public var StaticMesh : unreal.FEditorImportWorkflowDefinition;
  
  /**
    Import settings for the Normalmap texture
  **/
  @:uproperty public var Normal : unreal.FEditorImportWorkflowDefinition;
  
  /**
    Import settings for the Diffuse texture
  **/
  @:uproperty public var Diffuse : unreal.FEditorImportWorkflowDefinition;
  
}

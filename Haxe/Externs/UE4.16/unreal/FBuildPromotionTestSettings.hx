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
  
  Holds settings for the editor build promotion test
**/
@:glueCppIncludes("Tests/AutomationTestSettings.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FBuildPromotionTestSettings {
  
  /**
    Material to modify for the content browser step *
  **/
  @:uproperty public var SourceControlMaterial : unreal.FFilePath;
  
  /**
    New project settings *
  **/
  @:uproperty public var NewProjectSettings : unreal.FBuildPromotionNewProjectSettings;
  
  /**
    Open assets settings *
  **/
  @:uproperty public var OpenAssets : unreal.FBuildPromotionOpenAssetSettings;
  
  /**
    Import workflow settings *
  **/
  @:uproperty public var ImportWorkflow : unreal.FBuildPromotionImportWorkflowSettings;
  
  /**
    Default static mesh asset to apply materials to *
  **/
  @:uproperty public var DefaultStaticMeshAsset : unreal.FFilePath;
  
}

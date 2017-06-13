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

@:umodule("UnrealEd")
@:glueCppIncludes("Factories/FbxMeshImportData.h")
@:uname("EFBXNormalGenerationMethod.Type")
@:uextern @:uenum extern enum EFBXNormalGenerationMethod {
  
  /**
    Use the legacy built in method to generate normals (faster in some cases)
  **/
  BuiltIn;
  
  /**
    Use MikkTSpace to generate normals and tangents
  **/
  MikkTSpace;
  
}

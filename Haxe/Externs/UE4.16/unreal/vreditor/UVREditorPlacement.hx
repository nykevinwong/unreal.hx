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
package unreal.vreditor;


/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  VR Editor interaction with the 3D world
**/
@:umodule("VREditor")
@:glueCppIncludes("VREditorPlacement.h")
@:noClass @:uextern @:uclass extern class UVREditorPlacement extends unreal.UObject {
  
  /**
    The material or texture asset we're dragging to place on an object
  **/
  @:uproperty private var PlacingMaterialOrTextureAsset : unreal.UObject;
  
  /**
    The UI used to drag an asset into the level
  **/
  @:uproperty private var FloatingUIAssetDraggedFrom : unreal.umg.UWidgetComponent;
  
  /**
    The actual ViewportWorldInteraction
  **/
  @:uproperty private var ViewportWorldInteraction : unreal.viewportinteraction.UViewportWorldInteraction;
  
  /**
    Owning object
  **/
  @:uproperty private var VRMode : unreal.vreditor.UVREditorMode;
  
}

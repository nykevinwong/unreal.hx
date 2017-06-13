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
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  -> will be exported to EngineDecalClasses.h
**/
@:glueCppIncludes("Components/PlaneReflectionCaptureComponent.h")
@:uextern @:uclass extern class UPlaneReflectionCaptureComponent extends unreal.UReflectionCaptureComponent {
  @:uproperty public var PreviewCaptureBox : unreal.UBoxComponent;
  @:uproperty public var PreviewInfluenceRadius : unreal.UDrawSphereComponent;
  
  /**
    Radius of the area that can receive reflections from this capture.
  **/
  @:uproperty public var InfluenceRadiusScale : unreal.Float32;
  
}

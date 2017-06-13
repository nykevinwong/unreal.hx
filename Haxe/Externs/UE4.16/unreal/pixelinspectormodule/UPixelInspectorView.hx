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
package unreal.pixelinspectormodule;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("PixelInspectorModule")
@:glueCppIncludes("Private/PixelInspectorView.h")
@:uextern @:uclass extern class UPixelInspectorView extends unreal.UObject {
  
  /**
    From the GBufferD A Channel.
  **/
  @:uproperty public var IrisDistance : unreal.Float32;
  
  /**
    From the GBufferD B Channel.
  **/
  @:uproperty public var IrisMask : unreal.Float32;
  
  /**
    From the GBufferD RG Channels.
  **/
  @:uproperty public var EyeTangent : unreal.FVector;
  
  /**
    From the GBufferD A Channel.
  **/
  @:uproperty public var Cloth : unreal.Float32;
  
  /**
    From the GBufferD B Channel.
  **/
  @:uproperty public var BackLit : unreal.Float32;
  
  /**
    From the GBufferD RG Channels.
  **/
  @:uproperty public var WorldNormal : unreal.FVector;
  
  /**
    From the GBufferD G Channel.
  **/
  @:uproperty public var ClearCoatRoughness : unreal.Float32;
  
  /**
    From the GBufferD R Channel.
  **/
  @:uproperty public var ClearCoat : unreal.Float32;
  
  /**
    From the GBufferD A Channel.
  **/
  @:uproperty public var Opacity : unreal.Float32;
  
  /**
    From the GBufferD RGB Channels.
  **/
  @:uproperty public var SubsurfaceProfile : unreal.FVector;
  
  /**
    From the GBufferD RGB Channels.
  **/
  @:uproperty public var SubSurfaceColor : unreal.FLinearColor;
  
  /**
    From the GBufferC A Channel encoded with IndirectIrradiance.
  **/
  @:uproperty public var AmbientOcclusion : unreal.Float32;
  
  /**
    From the GBufferC A Channel encoded with AmbientOcclusion.
  **/
  @:uproperty public var IndirectIrradiance : unreal.Float32;
  
  /**
    From the GBufferC RGB Channels.
  **/
  @:uproperty public var BaseColor : unreal.FLinearColor;
  
  /**
    From the GBufferB A Channel encoded with ShadingModel.
  **/
  @:uproperty public var SelectiveOutputMask : unreal.Int32;
  
  /**
    From the GBufferB A Channel encoded with SelectiveOutputMask.
  **/
  @:uproperty public var MaterialShadingModel : unreal.EMaterialShadingModel;
  
  /**
    From the GBufferB B Channel.
  **/
  @:uproperty public var Roughness : unreal.Float32;
  
  /**
    From the GBufferB G Channel.
  **/
  @:uproperty public var Specular : unreal.Float32;
  
  /**
    From the GBufferB R Channel.
  **/
  @:uproperty public var Metallic : unreal.Float32;
  
  /**
    From the GBufferA A Channel.
  **/
  @:uproperty public var PerObjectGBufferData : unreal.Float32;
  
  /**
    From the GBufferA RGB Channels.
  **/
  @:uproperty public var Normal : unreal.FVector;
  
  /**
    HDR RGB Color.
  **/
  @:uproperty public var HdrColor : unreal.FLinearColor;
  
  /**
    HDR Luminance.
  **/
  @:uproperty public var Luminance : unreal.Float32;
  
  /**
    HDR RGB Color.
  **/
  @:uproperty public var SceneColor : unreal.FLinearColor;
  
  /**
    Final RGBA 8bits Color after tone mapping, default value is black.
  **/
  @:uproperty public var FinalColor : unreal.FLinearColor;
  
}

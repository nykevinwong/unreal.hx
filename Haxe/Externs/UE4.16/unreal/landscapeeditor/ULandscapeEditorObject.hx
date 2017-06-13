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
package unreal.landscapeeditor;


/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("LandscapeEditor")
@:glueCppIncludes("LandscapeEditorObject.h")
@:noClass @:uextern @:uclass extern class ULandscapeEditorObject extends unreal.UObject {
  @:uproperty public var ShowUnusedLayers : Bool;
  
  /**
    Display order of the targets
  **/
  @:uproperty public var TargetDisplayOrder : unreal.landscape.ELandscapeLayerDisplayMode;
  
  /**
    Limits painting to only the components that already have the selected layer
  **/
  @:uproperty public var PaintingRestriction : unreal.landscape.ELandscapeLayerPaintingRestriction;
  
  /**
    Number of components X/Y to affect at once. 1 means 1x1, 2 means 2x2, etc
  **/
  @:uproperty public var BrushComponentSize : unreal.Int32;
  @:uproperty public var AlphaTextureData : unreal.TArray<unreal.UInt8>;
  @:uproperty public var AlphaTextureSizeY : unreal.Int32;
  @:uproperty public var AlphaTextureSizeX : unreal.Int32;
  
  /**
    Channel of Mask Texture to use
  **/
  @:uproperty public var AlphaTextureChannel : unreal.landscapeeditor.EColorChannel;
  
  /**
    Mask texture to use
  **/
  @:uproperty public var AlphaTexture : unreal.UTexture2D;
  @:uproperty public var WorldSpacePatternBrushSettings : unreal.landscapeeditor.FLandscapePatternBrushWorldSpaceSettings;
  @:uproperty public var bUseWorldSpacePatternBrush : Bool;
  
  /**
    Vertically offsets the brush mask texture
  **/
  @:uproperty public var AlphaBrushPanV : unreal.Float32;
  
  /**
    Horizontally offsets the brush mask texture
  **/
  @:uproperty public var AlphaBrushPanU : unreal.Float32;
  
  /**
    Rotates the brush mask texture
  **/
  @:uproperty public var AlphaBrushRotation : unreal.Float32;
  
  /**
    Rotate brush to follow mouse
  **/
  @:uproperty public var bAlphaBrushAutoRotate : Bool;
  
  /**
    Scale of the brush texture. A scale of 1.000 maps the brush texture to the landscape at a 1 pixel = 1 vertex size
  **/
  @:uproperty public var AlphaBrushScale : unreal.Float32;
  
  /**
    Selects the Clay Brush painting mode
  **/
  @:uproperty public var bUseClayBrush : Bool;
  
  /**
    The falloff at the edge of the brush, as a fraction of the brush's size. 0 = no falloff, 1 = all falloff
  **/
  @:uproperty public var BrushFalloff : unreal.Float32;
  
  /**
    The radius of the brush, in unreal units
  **/
  @:uproperty public var BrushRadius : unreal.Float32;
  
  /**
    The landscape layers that will be created. Only layer names referenced in the material assigned above are shown here. Modify the material to add more layers.
  **/
  @:uproperty public var ImportLandscape_Layers : unreal.TArray<unreal.landscapeeditor.FLandscapeImportLayer>;
  
  /**
    Whether the imported alpha maps are to be interpreted as "layered" or "additive" (UE4 uses additive internally)
  **/
  @:uproperty public var ImportLandscape_AlphamapType : unreal.landscape.ELandscapeImportAlphamapType;
  @:uproperty public var ImportLandscape_Height : unreal.FakeUInt32;
  @:uproperty public var ImportLandscape_Width : unreal.FakeUInt32;
  
  /**
    Specify a height map file in 16-bit RAW or PNG format
  **/
  @:uproperty public var ImportLandscape_HeightmapFilename : unreal.FString;
  @:uproperty public var ImportLandscape_HeightmapErrorMessage : unreal.FText;
  @:uproperty public var ImportLandscape_HeightmapImportResult : unreal.landscapeeditor.ELandscapeImportResult;
  
  /**
    The scale of the new landscape. This is the distance between each vertex on the landscape, defaulting to 100 units.
  **/
  @:uproperty public var NewLandscape_Scale : unreal.FVector;
  
  /**
    The rotation of the new landscape
  **/
  @:uproperty public var NewLandscape_Rotation : unreal.FRotator;
  
  /**
    The location of the new landscape
  **/
  @:uproperty public var NewLandscape_Location : unreal.FVector;
  
  /**
    The number of components in the X and Y direction, determining the overall size of the landscape.
  **/
  @:uproperty public var NewLandscape_ComponentCount : unreal.FIntPoint;
  
  /**
    The number of sections in a single landscape component. This along with the section size determines the size of each landscape component. A component is the base unit of rendering and culling.
  **/
  @:uproperty public var NewLandscape_SectionsPerComponent : unreal.Int32;
  
  /**
    The number of quads in a single landscape section. One section is the unit of LOD transition for landscape rendering.
  **/
  @:uproperty public var NewLandscape_QuadsPerSection : unreal.Int32;
  
  /**
    Material initially applied to the landscape. Setting a material here exposes properties for setting up layer info based on the landscape blend nodes in the material.
  **/
  @:uproperty public var NewLandscape_Material : unreal.TWeakObjectPtr<unreal.UMaterialInterface>;
  
  /**
    Determines how the new component size will be applied to the existing landscape geometry.
  **/
  @:uproperty public var ResizeLandscape_ConvertMode : unreal.landscapeeditor.ELandscapeConvertMode;
  
  /**
    Number of components in resulting landscape
  **/
  @:uproperty public var ResizeLandscape_ComponentCount : unreal.FIntPoint;
  
  /**
    Number of sections per landscape component
  **/
  @:uproperty public var ResizeLandscape_SectionsPerComponent : unreal.Int32;
  
  /**
    Number of quads per landscape component section
  **/
  @:uproperty public var ResizeLandscape_QuadsPerSection : unreal.Int32;
  
  /**
    Number of vertices either side of the mirror plane to smooth over
  **/
  @:uproperty public var MirrorSmoothingWidth : unreal.Int32;
  
  /**
    Type of mirroring operation to perform e.g. "Minus X To Plus X" copies and flips the -X half of the landscape onto the +X half
  **/
  @:uproperty public var MirrorOp : unreal.landscapeeditor.ELandscapeMirrorOperation;
  
  /**
    Location of the mirror plane, defaults to the center of the landscape. Doesn't normally need to be changed!
  **/
  @:uproperty public var MirrorPoint : unreal.FVector2D;
  @:uproperty public var GizmoImportLayers : unreal.TArray<unreal.landscapeeditor.FGizmoImportLayer>;
  @:uproperty public var GizmoImportSize : unreal.FIntPoint;
  @:uproperty public var GizmoHeightmapFilenameString : unreal.FString;
  
  /**
    Smooths the edges of the gizmo data into the landscape. Without this, the edges of the pasted data will be sharp
  **/
  @:uproperty public var bSmoothGizmoBrush : Bool;
  
  /**
    Makes sure the gizmo is snapped perfectly to the landscape so that the sample points line up, which makes copy/paste less blurry. Irrelevant if gizmo is scaled
  **/
  @:uproperty public var bSnapGizmo : Bool;
  
  /**
    If set, copies/pastes all layers, otherwise only copy/pastes the layer selected in the targets panel
  **/
  @:uproperty public var bApplyToAllTargets : Bool;
  
  /**
    Whether to paste will only raise, only lower, or both
  **/
  @:uproperty public var PasteMode : unreal.landscapeeditor.ELandscapeToolPasteMode;
  
  /**
    If enabled, protects the selected region from changes
    If disabled, only allows changes in the selected region
  **/
  @:uproperty public var bUseNegativeMask : Bool;
  
  /**
    Uses selected region as a mask for other tools
  **/
  @:uproperty public var bUseSelectedRegion : Bool;
  
  /**
    The size of the perlin noise filter used
  **/
  @:uproperty public var NoiseScale : unreal.Float32;
  
  /**
    Whether to apply noise that raises, lowers, or both
  **/
  @:uproperty public var NoiseMode : unreal.landscapeeditor.ELandscapeToolNoiseMode;
  
  /**
    Larger detail smoothing values remove more details, while smaller values preserve more details
  **/
  @:uproperty public var HErosionDetailScale : unreal.Float32;
  
  /**
    If checked, performs a detail-preserving smooth to the erosion effect using the specified detail smoothing value
  **/
  @:uproperty public var bHErosionDetailSmooth : Bool;
  
  /**
    The size of the noise filter for applying initial rain to the surface
  **/
  @:uproperty public var RainDistScale : unreal.Float32;
  
  /**
    Initial Rain Distribution
  **/
  @:uproperty public var RainDistMode : unreal.landscapeeditor.ELandscapeToolHydroErosionMode;
  
  /**
    Number of erosion iterations, more means more erosion but is slower
  **/
  @:uproperty public var HErodeIterationNum : unreal.Int32;
  
  /**
    The amount of sediment that the water can carry. Larger values will result in more erosion
  **/
  @:uproperty public var SedimentCapacity : unreal.Float32;
  
  /**
    The amount of rain to apply to the surface. Larger values will result in more erosion
  **/
  @:uproperty public var RainAmount : unreal.Int32;
  
  /**
    The size of the perlin noise filter used
  **/
  @:uproperty public var ErosionNoiseScale : unreal.Float32;
  
  /**
    Whether to erode by lowering, raising, or both
  **/
  @:uproperty public var ErosionNoiseMode : unreal.landscapeeditor.ELandscapeToolErosionMode;
  
  /**
    Number of erosion iterations, more means more erosion but is slower
  **/
  @:uproperty public var ErodeIterationNum : unreal.Int32;
  
  /**
    The thickness of the surface for the layer weight erosion effect
  **/
  @:uproperty public var ErodeSurfaceThickness : unreal.Int32;
  
  /**
    The minimum height difference necessary for the erosion effects to be applied. Smaller values will result in more erosion being applied
  **/
  @:uproperty public var ErodeThresh : unreal.Int32;
  
  /**
    Larger detail smoothing values remove more details, while smaller values preserve more details
  **/
  @:uproperty public var DetailScale : unreal.Float32;
  
  /**
    If checked, performs a detail preserving smooth using the specified detail smoothing value
  **/
  @:uproperty public var bDetailSmooth : Bool;
  
  /**
    The radius smoothing is performed over
    Higher values smooth out bigger details, lower values only smooth out smaller details
  **/
  @:uproperty public var SmoothFilterKernelSize : unreal.Int32;
  
  /**
    Falloff on side of ramp
  **/
  @:uproperty public var RampSideFalloff : unreal.Float32;
  
  /**
    Width of ramp
  **/
  @:uproperty public var RampWidth : unreal.Float32;
  @:uproperty public var FlattenEyeDropperModeDesiredTarget : unreal.Float32;
  
  /**
    Whether the Eye Dropper mode is activated
  **/
  @:uproperty public var bFlattenEyeDropperModeActivated : Bool;
  
  /**
    Whether to show the preview grid for the flatten target height
  **/
  @:uproperty public var bShowFlattenTargetPreview : Bool;
  
  /**
    Target height to flatten towards (in Unreal Units)
  **/
  @:uproperty public var FlattenTarget : unreal.Float32;
  
  /**
    Enable to flatten towards a target height
  **/
  @:uproperty public var bUseFlattenTarget : Bool;
  
  /**
    Constantly picks new values to flatten towards when dragging around, instead of only using the first clicked point
  **/
  @:uproperty public var bPickValuePerApply : Bool;
  
  /**
    Flattens to the angle of the clicked point, instead of horizontal
  **/
  @:uproperty public var bUseSlopeFlatten : Bool;
  
  /**
    Whether to flatten by lowering, raising, or both
  **/
  @:uproperty public var FlattenMode : unreal.landscapeeditor.ELandscapeToolFlattenMode;
  
  /**
    I have no idea what this is for but it's used by the noise and erosion tools, and isn't exposed to the UI
  **/
  @:uproperty public var MaximumValueRadius : unreal.Float32;
  
  /**
    Enable to make tools blend towards a target value
  **/
  @:uproperty public var WeightTargetValue : unreal.Float32;
  
  /**
    Enable to make tools blend towards a target value
  **/
  @:uproperty public var bUseWeightTargetValue : Bool;
  
  /**
    Strength of the tool. If you're using a pen/tablet with pressure-sensing, the pressure used affects the strength of the tool.
  **/
  @:uproperty public var ToolStrength : unreal.Float32;
  
}

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
package unreal;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  A StaticMesh is a piece of geometry that consists of a static set of polygons.
  Static Meshes can be translated, rotated, and scaled, but they cannot have their vertices animated in any way. As such, they are more efficient
  to render than other types of geometry such as USkeletalMesh, and they are often the basic building block of levels created in the engine.
  
  @see https://docs.unrealengine.com/latest/INT/Engine/Content/Types/StaticMeshes/
  @see AStaticMeshActor, UStaticMeshComponent
**/
@:glueCppIncludes("Engine/StaticMesh.h")
@:uextern @:uclass extern class UStaticMesh extends unreal.UObject implements unreal.IInterface_CollisionDataProvider implements unreal.IInterface_AssetUserData {
  
  /**
    Pre-build navigation collision
  **/
  @:uproperty public var NavCollision : unreal.UNavCollision;
  
  /**
    Array of user data stored with the asset
  **/
  @:uproperty private var AssetUserData : unreal.TArray<unreal.UAssetUserData>;
  
  /**
    Index of an element to ignore while gathering streaming texture factors.
    This is useful to disregard automatically generated vertex data which breaks texture factor heuristics.
  **/
  @:uproperty private var ElementToIgnoreForTexFactor : unreal.Int32;
  
  /**
    Original mesh bounds extended with Positive/NegativeBoundsExtension
  **/
  @:uproperty public var ExtendedBounds : unreal.FBoxSphereBounds;
  
  /**
    Bound extension values in the negative direction of XYZ, positive value increases bound size
  **/
  @:uproperty public var NegativeBoundsExtension : unreal.FVector;
  
  /**
    Bound extension values in the positive direction of XYZ, positive value increases bound size
  **/
  @:uproperty public var PositiveBoundsExtension : unreal.FVector;
  
  /**
    Array of named socket locations, set up in editor and used as a shortcut instead of specifying
    everything explicitly to AttachComponent in the StaticMeshComponent.
  **/
  @:uproperty public var Sockets : unreal.TArray<unreal.UStaticMeshSocket>;
  #if WITH_EDITORONLY_DATA
  
  /**
    If the user has modified collision in any way or has custom collision imported. Used for determining if to auto generate collision on import
  **/
  @:uproperty public var bCustomizedCollision : Bool;
  
  /**
    The stored camera position to use as a default for the static mesh editor
  **/
  @:uproperty public var EditorCameraPosition : unreal.FAssetEditorOrbitCameraPosition;
  
  /**
    Information for thumbnail rendering
  **/
  @:uproperty public var ThumbnailInfo : unreal.UThumbnailInfo;
  
  /**
    Date/Time-stamp of the file from the last import
  **/
  @:deprecated @:uproperty public var SourceFileTimestamp_DEPRECATED : unreal.FString;
  
  /**
    Path to the resource used to construct this static mesh
  **/
  @:deprecated @:uproperty public var SourceFilePath_DEPRECATED : unreal.FString;
  
  /**
    Importing data and options used for this mesh
  **/
  @:uproperty public var AssetImportData : unreal.UAssetImportData;
  #end // WITH_EDITORONLY_DATA
  
  /**
    If true, will keep geometry data CPU-accessible in cooked builds, rather than uploading to GPU memory and releasing it from CPU memory.
    This is required if you wish to access StaticMesh geometry data on the CPU at runtime in cooked builds (e.g. to convert StaticMesh to ProceduralMeshComponent)
  **/
  @:uproperty public var bAllowCPUAccess : Bool;
  
  /**
    Bias multiplier for Light Propagation Volume lighting
  **/
  @:uproperty public var LpvBiasMultiplier : unreal.Float32;
  
  /**
    If true, mesh will have NavCollision property with additional data for navmesh generation and usage.
              Set to false for distant meshes (always outside navigation bounds) to save memory on collision data.
  **/
  @:uproperty public var bHasNavigationData : Bool;
  
  /**
    If true, strips unwanted complex collision data aka kDOP tree when cooking for consoles.
                  On the Playstation 3 data of this mesh will be stored in video memory.
  **/
  @:deprecated @:uproperty public var bStripComplexCollisionForConsole_DEPRECATED : Bool;
  
  /**
    Specifies which mesh LOD to use for complex (per-poly) collision.
    Sometimes it can be desirable to use a lower poly representation for collision to reduce memory usage, improve performance and behaviour.
    Collision representation does not change based on distance to camera.
  **/
  @:uproperty public var LODForCollision : unreal.Int32;
  
  /**
    Physics data.
  **/
  @:uproperty public var BodySetup : unreal.UBodySetup;
  
  /**
    The light map coordinate index
  **/
  @:uproperty public var LightMapCoordinateIndex : unreal.Int32;
  
  /**
    The light map resolution
  **/
  @:uproperty public var LightMapResolution : unreal.Int32;
  @:uproperty public var LightmapUVDensity : unreal.Float32;
  @:uproperty public var StaticMaterials : unreal.TArray<unreal.FStaticMaterial>;
  
  /**
    Materials used by this static mesh. Individual sections index in to this array.
  **/
  @:deprecated @:uproperty public var Materials_DEPRECATED : unreal.TArray<unreal.UMaterialInterface>;
  
  /**
    Minimum LOD to use for rendering.  This is the default setting for the mesh and can be overridden by component settings.
  **/
  @:uproperty public var MinLOD : unreal.Int32;
  #if WITH_EDITORONLY_DATA
  @:uproperty public var MaterialRemapIndexPerImportVersion : unreal.TArray<unreal.FMaterialRemapIndex>;
  
  /**
    The last import version
  **/
  @:uproperty public var ImportVersion : unreal.Int32;
  
  /**
    If true, the distances at which LODs swap are computed automatically.
  **/
  @:uproperty public var bAutoComputeLODScreenSize : Bool;
  
  /**
    The LOD group to which this mesh belongs.
  **/
  @:uproperty public var LODGroup : unreal.FName;
  
  /**
    Imported raw mesh bulk data.
  **/
  @:uproperty public var SourceModels : unreal.TArray<unreal.FStaticMeshSourceModel>;
  #end // WITH_EDITORONLY_DATA
  // Interface_CollisionDataProvider interface implementation
  // Interface_AssetUserData interface implementation
  
}

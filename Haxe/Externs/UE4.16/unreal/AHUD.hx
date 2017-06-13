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
  Base class of the heads-up display. This has a canvas and a debug canvas on which primitives can be drawn.
  It also contains a list of simple hit boxes that can be used for simple item click detection.
  A method of rendering debug text is also included.
  Provides some simple methods for rendering text, textures, rectangles and materials which can also be accessed from blueprints.
  @see UCanvas
  @see FHUDHitBox
  @see FDebugTextInfo
**/
@:glueCppIncludes("GameFramework/HUD.h")
@:uextern @:uclass extern class AHUD extends unreal.AActor {
  @:uproperty private var DebugTextList : unreal.TArray<unreal.FDebugTextInfo>;
  
  /**
    'Foreground' debug canvas, will draw in front of Slate UI.
  **/
  @:uproperty private var DebugCanvas : unreal.UCanvas;
  
  /**
    Canvas to Draw HUD on.  Only valid during PostRender() event.
  **/
  @:uproperty private var Canvas : unreal.UCanvas;
  
  /**
    Array of names specifying what subsets of debug info to display for viewtarget actor.
  **/
  @:uproperty public var ToggledDebugCategories : unreal.TArray<unreal.FName>;
  
  /**
    Array of names specifying what debug info to display for viewtarget actor.
  **/
  @:uproperty public var DebugDisplay : unreal.TArray<unreal.FName>;
  
  /**
    Holds a list of Actors that need PostRender() calls.
  **/
  @:uproperty public var PostRenderedActors : unreal.TArray<unreal.AActor>;
  
  /**
    Put shadow on debug strings
  **/
  @:uproperty public var bEnableDebugTextShadow : Bool;
  
  /**
    If true, render actor overlays.
  **/
  @:uproperty public var bShowOverlays : Bool;
  
  /**
    If true, show hitbox debugging info.
  **/
  @:uproperty public var bShowHitBoxDebugInfo : Bool;
  
  /**
    If true, current ViewTarget shows debug information using its DisplayDebug().
  **/
  @:uproperty public var bShowDebugInfo : Bool;
  
  /**
    Whether or not the HUD should be drawn.
  **/
  @:uproperty public var bShowHUD : Bool;
  
  /**
    Tells whether the game was paused due to lost focus
  **/
  @:uproperty public var bLostFocusPaused : Bool;
  
  /**
    PlayerController which owns this HUD.
  **/
  @:uproperty public var PlayerOwner : unreal.APlayerController;
  
  /**
    hides or shows HUD
  **/
  @:ufunction public function ShowHUD() : Void;
  
  /**
    Toggles displaying properties of player's current ViewTarget
    DebugType input values supported by base engine include "AI", "physics", "net", "camera", and "collision"
  **/
  @:ufunction public function ShowDebug(@:opt("None") DebugType : unreal.FName) : Void;
  
  /**
    Toggles sub categories of show debug to customize display
  **/
  @:ufunction @:final public function ShowDebugToggleSubCategory(Category : unreal.FName) : Void;
  
  /**
    Toggles 'ShowDebug' from showing debug info between reticle target actor (of subclass <DesiredClass>) and camera view target
  **/
  @:ufunction @:final public function ShowDebugForReticleTargetToggle(DesiredClass : unreal.TSubclassOf<unreal.AActor>) : Void;
  
  /**
    Add debug text for a specific actor to be displayed via DrawDebugTextList().  If the debug text is invalid then it will
    attempt to remove any previous entries via RemoveDebugText().
    
    @param DebugText                             Text to draw
    @param SrcActor                              Actor to which this relates
    @param Duration                              Duration to display the string
    @param Offset                                Initial offset to render text
    @param DesiredOffset                 Desired offset to render text - the text will move to this location over the given duration
    @param TextColor                     Color of text to render
    @param bSkipOverwriteCheck   skips the check to see if there is already debug text for the given actor
    @param bAbsoluteLocation     use an absolute world location
    @param bKeepAttachedToActor  if this is true the text will follow the actor, otherwise it will be drawn at the location when the call was made
    @param InFont                                font to use
    @param FontScale                     scale
    @param bDrawShadow                   Draw shadow on this string
  **/
  @:ufunction @:final public function AddDebugText(DebugText : unreal.FString, SrcActor : unreal.AActor, Duration : unreal.Float32, Offset : unreal.FVector, DesiredOffset : unreal.FVector, TextColor : unreal.FColor, bSkipOverwriteCheck : Bool, bAbsoluteLocation : Bool, bKeepAttachedToActor : Bool, InFont : unreal.UFont, FontScale : unreal.Float32, bDrawShadow : Bool) : Void;
  
  /**
    Remove all debug strings added via AddDebugText
  **/
  @:ufunction @:final public function RemoveAllDebugStrings() : Void;
  
  /**
    Remove debug strings for the given actor
    
    @param       SrcActor                        Actor whose string you wish to remove
    @param       bLeaveDurationText      when true text that has a finite duration will be removed, otherwise all will be removed for given actor
  **/
  @:ufunction @:final public function RemoveDebugText(SrcActor : unreal.AActor, bLeaveDurationText : Bool) : Void;
  
  /**
    Hook to allow blueprints to do custom HUD drawing. @see bSuppressNativeHUD to control HUD drawing in base class.
    Note:  the canvas resource used for drawing is only valid during this event, it will not be valid if drawing functions are called later (e.g. after a Delay node).
  **/
  @:ufunction public function ReceiveDrawHUD(SizeX : unreal.Int32, SizeY : unreal.Int32) : Void;
  
  /**
    Called when a hit box is clicked on. Provides the name associated with that box.
  **/
  @:ufunction public function ReceiveHitBoxClick(BoxName : unreal.Const<unreal.FName>) : Void;
  
  /**
    Called when a hit box is unclicked. Provides the name associated with that box.
  **/
  @:ufunction public function ReceiveHitBoxRelease(BoxName : unreal.Const<unreal.FName>) : Void;
  
  /**
    Called when a hit box is moused over.
  **/
  @:ufunction public function ReceiveHitBoxBeginCursorOver(BoxName : unreal.Const<unreal.FName>) : Void;
  
  /**
    Called when a hit box no longer has the mouse over it.
  **/
  @:ufunction public function ReceiveHitBoxEndCursorOver(BoxName : unreal.Const<unreal.FName>) : Void;
  
  /**
    Returns the width and height of a string.
    @param Text                          String to draw
    @param OutWidth                      Returns the width in pixels of the string.
    @param OutHeight                     Returns the height in pixels of the string.
    @param Font                          Font to draw text.  If NULL, default font is chosen.
    @param Scale                         Scale multiplier to control size of the text.
  **/
  @:ufunction @:thisConst @:final public function GetTextSize(Text : unreal.FString, OutWidth : unreal.Float32, OutHeight : unreal.Float32, Font : unreal.UFont, Scale : unreal.Float32 = 1.000000) : Void;
  
  /**
    Draws a string on the HUD.
    @param Text                          String to draw
    @param TextColor                     Color to draw string
    @param ScreenX                       Screen-space X coordinate of upper left corner of the string.
    @param ScreenY                       Screen-space Y coordinate of upper left corner of the string.
    @param Font                          Font to draw text.  If NULL, default font is chosen.
    @param Scale                         Scale multiplier to control size of the text.
    @param bScalePosition        Whether the "Scale" parameter should also scale the position of this draw call.
  **/
  @:ufunction @:final public function DrawText(Text : unreal.FString, @:bpopt("(R=0,G=0,B=0,A=1)") TextColor : unreal.FLinearColor, ScreenX : unreal.Float32, ScreenY : unreal.Float32, Font : unreal.UFont, Scale : unreal.Float32 = 1.000000, bScalePosition : Bool = false) : Void;
  
  /**
    Draws a 2D line on the HUD.
    @param StartScreenX          Screen-space X coordinate of start of the line.
    @param StartScreenY          Screen-space Y coordinate of start of the line.
    @param EndScreenX            Screen-space X coordinate of end of the line.
    @param EndScreenY            Screen-space Y coordinate of end of the line.
    @param LineColor                     Color to draw line
    @param LineThickness         Thickness of the line to draw
  **/
  @:ufunction @:final public function DrawLine(StartScreenX : unreal.Float32, StartScreenY : unreal.Float32, EndScreenX : unreal.Float32, EndScreenY : unreal.Float32, @:bpopt("(R=0,G=0,B=0,A=1)") LineColor : unreal.FLinearColor, LineThickness : unreal.Float32 = 0.000000) : Void;
  
  /**
    Draws a colored untextured quad on the HUD.
    @param RectColor                     Color of the rect. Can be translucent.
    @param ScreenX                       Screen-space X coordinate of upper left corner of the quad.
    @param ScreenY                       Screen-space Y coordinate of upper left corner of the quad.
    @param ScreenW                       Screen-space width of the quad (in pixels).
    @param ScreenH                       Screen-space height of the quad (in pixels).
  **/
  @:ufunction @:final public function DrawRect(@:bpopt("(R=0,G=0,B=0,A=1)") RectColor : unreal.FLinearColor, ScreenX : unreal.Float32, ScreenY : unreal.Float32, ScreenW : unreal.Float32, ScreenH : unreal.Float32) : Void;
  
  /**
    Draws a textured quad on the HUD.
    @param Texture                       Texture to draw.
    @param ScreenX                       Screen-space X coordinate of upper left corner of the quad.
    @param ScreenY                       Screen-space Y coordinate of upper left corner of the quad.
    @param ScreenW                       Screen-space width of the quad (in pixels).
    @param ScreenH                       Screen-space height of the quad (in pixels).
    @param TextureU                      Texture-space U coordinate of upper left corner of the quad
    @param TextureV                      Texture-space V coordinate of upper left corner of the quad.
    @param TextureUWidth         Texture-space width of the quad (in normalized UV distance).
    @param TextureVHeight        Texture-space height of the quad (in normalized UV distance).
    @param TintColor                     Vertex color for the quad.
    @param BlendMode                     Controls how to blend this quad with the scene. Translucent by default.
    @param Scale                         Amount to scale the entire texture (horizontally and vertically)
    @param bScalePosition        Whether the "Scale" parameter should also scale the position of this draw call.
    @param Rotation                      Amount to rotate this quad
    @param RotPivot                      Location (as proportion of quad, 0-1) to rotate about
  **/
  @:ufunction @:final public function DrawTexture(Texture : unreal.UTexture, ScreenX : unreal.Float32, ScreenY : unreal.Float32, ScreenW : unreal.Float32, ScreenH : unreal.Float32, TextureU : unreal.Float32, TextureV : unreal.Float32, TextureUWidth : unreal.Float32, TextureVHeight : unreal.Float32, @:opt("(R=1.000000,G=1.000000,B=1.000000,A=1.000000)") TintColor : unreal.FLinearColor, BlendMode : unreal.EBlendMode = BLEND_Translucent, Scale : unreal.Float32 = 1.000000, bScalePosition : Bool = false, Rotation : unreal.Float32 = 0.000000, RotPivot : unreal.FVector2D) : Void;
  
  /**
    Draws a textured quad on the HUD. Assumes 1:1 texel density.
    @param Texture                       Texture to draw.
    @param ScreenX                       Screen-space X coordinate of upper left corner of the quad.
    @param ScreenY                       Screen-space Y coordinate of upper left corner of the quad.
    @param Scale                         Scale multiplier to control size of the text.
    @param bScalePosition        Whether the "Scale" parameter should also scale the position of this draw call.
  **/
  @:ufunction @:final public function DrawTextureSimple(Texture : unreal.UTexture, ScreenX : unreal.Float32, ScreenY : unreal.Float32, Scale : unreal.Float32 = 1.000000, bScalePosition : Bool = false) : Void;
  
  /**
    Draws a material-textured quad on the HUD.
    @param Material                      Material to use
    @param ScreenX                       Screen-space X coordinate of upper left corner of the quad.
    @param ScreenY                       Screen-space Y coordinate of upper left corner of the quad.
    @param ScreenW                       Screen-space width of the quad (in pixels).
    @param ScreenH                       Screen-space height of the quad (in pixels).
    @param MaterialU                     Texture-space U coordinate of upper left corner of the quad
    @param MaterialV                     Texture-space V coordinate of upper left corner of the quad.
    @param MaterialUWidth        Texture-space width of the quad (in normalized UV distance).
    @param MaterialVHeight       Texture-space height of the quad (in normalized UV distance).
    @param Scale                         Amount to scale the entire texture (horizontally and vertically)
    @param bScalePosition        Whether the "Scale" parameter should also scale the position of this draw call.
    @param Rotation                      Amount to rotate this quad
    @param RotPivot                      Location (as proportion of quad, 0-1) to rotate about
  **/
  @:ufunction @:final public function DrawMaterial(Material : unreal.UMaterialInterface, ScreenX : unreal.Float32, ScreenY : unreal.Float32, ScreenW : unreal.Float32, ScreenH : unreal.Float32, MaterialU : unreal.Float32, MaterialV : unreal.Float32, MaterialUWidth : unreal.Float32, MaterialVHeight : unreal.Float32, Scale : unreal.Float32 = 1.000000, bScalePosition : Bool = false, Rotation : unreal.Float32 = 0.000000, RotPivot : unreal.FVector2D) : Void;
  
  /**
    Draws a material-textured quad on the HUD.  Assumes UVs such that the entire material is shown.
    @param Material                      Material to use
    @param ScreenX                       Screen-space X coordinate of upper left corner of the quad.
    @param ScreenY                       Screen-space Y coordinate of upper left corner of the quad.
    @param ScreenW                       Screen-space width of the quad (in pixels).
    @param ScreenH                       Screen-space height of the quad (in pixels).
    @param Scale                         Amount to scale the entire texture (horizontally and vertically)
    @param bScalePosition        Whether the "Scale" parameter should also scale the position of this draw call.
  **/
  @:ufunction @:final public function DrawMaterialSimple(Material : unreal.UMaterialInterface, ScreenX : unreal.Float32, ScreenY : unreal.Float32, ScreenW : unreal.Float32, ScreenH : unreal.Float32, Scale : unreal.Float32 = 1.000000, bScalePosition : Bool = false) : Void;
  @:ufunction @:final public function DrawMaterialTriangle(Material : unreal.UMaterialInterface, V0_Pos : unreal.FVector2D, V1_Pos : unreal.FVector2D, V2_Pos : unreal.FVector2D, V0_UV : unreal.FVector2D, V1_UV : unreal.FVector2D, V2_UV : unreal.FVector2D, @:opt("(R=1.000000,G=1.000000,B=1.000000,A=1.000000)") V0_Color : unreal.FLinearColor, @:opt("(R=1.000000,G=1.000000,B=1.000000,A=1.000000)") V1_Color : unreal.FLinearColor, @:opt("(R=1.000000,G=1.000000,B=1.000000,A=1.000000)") V2_Color : unreal.FLinearColor) : Void;
  
  /**
    Transforms a 3D world-space vector into 2D screen coordinates
  **/
  @:ufunction @:thisConst @:final public function Project(Location : unreal.FVector) : unreal.FVector;
  
  /**
    Transforms a 2D screen location into a 3D location and direction
  **/
  @:ufunction @:thisConst @:final public function Deproject(ScreenX : unreal.Float32, ScreenY : unreal.Float32, WorldPosition : unreal.PRef<unreal.FVector>, WorldDirection : unreal.PRef<unreal.FVector>) : Void;
  
  /**
    Returns the array of actors inside a selection rectangle, with a class filter.
    
    Sample usage:
    
          TArray<AStaticMeshActor*> ActorsInSelectionRect;
                 Canvas->GetActorsInSelectionRectangle<AStaticMeshActor>(FirstPoint,SecondPoint,ActorsInSelectionRect);
    
    
    @param FirstPoint                                    The first point, or anchor of the marquee box. Where the dragging of the marquee started in screen space.
    @param SecondPoint                                   The second point, where the mouse cursor currently is / the other point of the box selection, in screen space.
    @return OutActors                                    The actors that are within the selection box according to selection rule
    @param bIncludeNonCollidingComponents        Whether to include even non-colliding components of the actor when determining its bounds
    @param bActorMustBeFullyEnclosed     The Selection rule: whether the selection box can partially intersect Actor, or must fully enclose the Actor.
  **/
  @:ufunction @:final public function GetActorsInSelectionRectangle(ClassFilter : unreal.TSubclassOf<unreal.AActor>, FirstPoint : unreal.Const<unreal.PRef<unreal.FVector2D>>, SecondPoint : unreal.Const<unreal.PRef<unreal.FVector2D>>, OutActors : unreal.PRef<unreal.TArray<unreal.AActor>>, bIncludeNonCollidingComponents : Bool = true, bActorMustBeFullyEnclosed : Bool = false) : Void;
  
  /**
    Add a hitbox to the hud
    @param Position                      Coordinates of the top left of the hit box.
    @param Size                          Size of the hit box.
    @param Name                          Name of the hit box.
    @param bConsumesInput        Whether click processing should continue if this hit box is clicked.
    @param Priority                      The priority of the box used for layering. Larger values are considered first.  Equal values are considered in the order they were added.
  **/
  @:ufunction @:final public function AddHitBox(Position : unreal.FVector2D, Size : unreal.FVector2D, InName : unreal.FName, bConsumesInput : Bool, Priority : unreal.Int32 = 0) : Void;
  
  /**
    Returns the PlayerController for this HUD's player.
  **/
  @:ufunction @:thisConst @:final private function GetOwningPlayerController() : unreal.APlayerController;
  
  /**
    Returns the Pawn for this HUD's player.
  **/
  @:ufunction @:thisConst @:final private function GetOwningPawn() : unreal.APawn;
  
}

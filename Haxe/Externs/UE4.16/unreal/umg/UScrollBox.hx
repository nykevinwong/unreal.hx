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
package unreal.umg;


/**
  An arbitrary scrollable collection of widgets.  Great for presenting 10-100 widgets in a list.  Doesn't support virtualization.
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class UScrollBox extends unreal.umg.UPanelWidget {
  @:uproperty public var AlwaysShowScrollbar : Bool;
  @:uproperty public var ScrollbarThickness : unreal.FVector2D;
  
  /**
    Enable to always consume mouse wheel event, even when scrolling is not possible
  **/
  @:uproperty public var ConsumeMouseWheel : unreal.slatecore.EConsumeMouseWheel;
  
  /**
    Visibility
  **/
  @:uproperty public var ScrollBarVisibility : unreal.umg.ESlateVisibility;
  
  /**
    The orientation of the scrolling and stacking in the box.
  **/
  @:uproperty public var Orientation : unreal.slatecore.EOrientation;
  @:deprecated @:uproperty public var BarStyle_DEPRECATED : unreal.slatecore.USlateWidgetStyleAsset;
  @:deprecated @:uproperty public var Style_DEPRECATED : unreal.slatecore.USlateWidgetStyleAsset;
  
  /**
    The bar style
  **/
  @:uproperty public var WidgetBarStyle : unreal.slatecore.FScrollBarStyle;
  
  /**
    The style
  **/
  @:uproperty public var WidgetStyle : unreal.slatecore.FScrollBoxStyle;
  
  /**
    Updates the scroll offset of the scrollbox.
    @param NewScrollOffset is in Slate Units.
  **/
  @:ufunction @:final public function SetScrollOffset(NewScrollOffset : unreal.Float32) : Void;
  
  /**
    Gets the scroll offset of the scrollbox in Slate Units.
  **/
  @:ufunction @:thisConst @:final public function GetScrollOffset() : unreal.Float32;
  
  /**
    Scrolls the ScrollBox to the top instantly
  **/
  @:ufunction @:final public function ScrollToStart() : Void;
  
  /**
    Scrolls the ScrollBox to the bottom instantly during the next layout pass.
  **/
  @:ufunction @:final public function ScrollToEnd() : Void;
  
  /**
    Scrolls the ScrollBox to the widget during the next layout pass.
  **/
  @:ufunction @:final public function ScrollWidgetIntoView(WidgetToFind : unreal.umg.UWidget, AnimateScroll : Bool = true) : Void;
  
}

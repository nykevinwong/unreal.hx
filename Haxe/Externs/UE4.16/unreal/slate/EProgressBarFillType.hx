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
package unreal.slate;


/**
  SProgressBar Fill Type
**/
@:umodule("Slate")
@:glueCppIncludes("Widgets/Notifications/SProgressBar.h")
@:uname("EProgressBarFillType.Type")
@:uextern @:uenum extern enum EProgressBarFillType {
  
  /**
    will fill up from the left side to the right
  **/
  LeftToRight;
  
  /**
    will fill up from the right side to the left side
  **/
  RightToLeft;
  
  /**
    will fill up from the center to the outer edges
  **/
  FillFromCenter;
  
  /**
    will fill up from the top to the the bottom
  **/
  TopToBottom;
  
  /**
    will fill up from the bottom to the the top
  **/
  BottomToTop;
  
}

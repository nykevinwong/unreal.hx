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
  
  Used to describe an element that can be linked to a segment in a montage or sequence.
     Usage:
             Inherit from FAnimLinkableElement and make sure to call LinkMontage or LinkSequence
             both on creation and on loading the element. From there SetTime and GetTime should be
             used to control where this element is in the montage or sequence.
  
             For more advanced usage, see this implementation used in FAnimNotifyEvent where
             we have a secondary link to handle a duration
             @see FAnimNotifyEvent
**/
@:glueCppIncludes("Animation/AnimLinkableElement.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FAnimLinkableElement {
  
  /**
    The Animation Sequence that this montage element will link to, when the sequence changes
    in either length or rate; the element will correctly place itself in relation to the sequence
  **/
  @:uproperty private var LinkedSequence : unreal.UAnimSequenceBase;
  
  /**
    The time of this montage. This will differ depending upon the method we are using to link the time for this element
  **/
  @:uproperty private var LinkValue : unreal.Float32;
  
  /**
    The absolute length of our currently linked segment
  **/
  @:uproperty private var SegmentLength : unreal.Float32;
  
  /**
    The absolute time in the montage that our currently linked segment begins
  **/
  @:uproperty private var SegmentBeginTime : unreal.Float32;
  
  /**
    Cached link method used to transform the time when LinkMethod changes, always relates to the currently stored time
  **/
  @:uproperty private var CachedLinkMethod : unreal.EAnimLinkMethod;
  
  /**
    The method we are using to calculate our times
  **/
  @:uproperty private var LinkMethod : unreal.EAnimLinkMethod;
  
  /**
    The index of the segment we are linked to within the slot we are using
  **/
  @:uproperty private var SegmentIndex : unreal.Int32;
  
  /**
    The slot index we are currently using within LinkedMontage
  **/
  @:uproperty private var SlotIndex : unreal.Int32;
  
  /**
    The montage that this element is currently linked to
  **/
  @:uproperty private var LinkedMontage : unreal.UAnimMontage;
  
}

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

@:glueCppIncludes("AI/Navigation/NavLinkProxy.h")
@:uextern @:uclass extern class ANavLinkProxy extends unreal.AActor implements unreal.INavLinkHostInterface implements unreal.INavRelevantInterface {
  #if WITH_EDITORONLY_DATA
  @:uproperty public var SpriteComponent : unreal.UBillboardComponent;
  @:uproperty public var EdRenderComp : unreal.UNavLinkRenderingComponent;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Smart link: toggle relevancy
  **/
  @:uproperty public var bSmartLinkIsRelevant : Bool;
  @:uproperty public var SmartLinkComp : unreal.UNavLinkCustomComponent;
  
  /**
    Navigation links (segment to segment) added to navigation data
         @todo hidden from use until we fix segment links. Not really working now
  **/
  @:uproperty public var SegmentLinks : unreal.TArray<unreal.FNavigationSegmentLink>;
  
  /**
    Navigation links (point to point) added to navigation data
  **/
  @:uproperty public var PointLinks : unreal.TArray<unreal.FNavigationLink>;
  
  /**
    called when agent reaches smart link during path following, use ResumePathFollowing() to give control back
  **/
  @:ufunction public function ReceiveSmartLinkReached(Agent : unreal.AActor, Destination : unreal.Const<unreal.PRef<unreal.FVector>>) : Void;
  
  /**
    resume normal path following
  **/
  @:ufunction @:final public function ResumePathFollowing(Agent : unreal.AActor) : Void;
  
  /**
    check if smart link is enabled
  **/
  @:ufunction @:thisConst @:final public function IsSmartLinkEnabled() : Bool;
  
  /**
    change state of smart link
  **/
  @:ufunction @:final public function SetSmartLinkEnabled(bEnabled : Bool) : Void;
  
  /**
    check if any agent is moving through smart link right now
  **/
  @:ufunction @:thisConst @:final public function HasMovingAgents() : Bool;
  // NavLinkHostInterface interface implementation
  // NavRelevantInterface interface implementation
  
}

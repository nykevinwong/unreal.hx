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
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("Actions/PawnAction_BlueprintBase.h")
@:uextern @:uclass extern class UPawnAction_BlueprintBase extends unreal.aimodule.UPawnAction {
  
  /**
    Blueprint interface
  **/
  @:ufunction public function ActionStart(ControlledPawn : unreal.APawn) : Void;
  @:ufunction public function ActionTick(ControlledPawn : unreal.APawn, DeltaSeconds : unreal.Float32) : Void;
  @:ufunction public function ActionPause(ControlledPawn : unreal.APawn) : Void;
  @:ufunction public function ActionResume(ControlledPawn : unreal.APawn) : Void;
  @:ufunction public function ActionFinished(ControlledPawn : unreal.APawn, WithResult : unreal.aimodule.EPawnActionResult) : Void;
  
}

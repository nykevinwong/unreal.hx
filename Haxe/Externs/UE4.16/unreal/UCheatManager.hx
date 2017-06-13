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
  Cheat Manager is a central blueprint to implement test and debug code and actions that are not to ship with the game.
  As the Cheat Manager is not instanced in shipping builds, it is for debugging purposes only
**/
@:glueCppIncludes("GameFramework/CheatManager.h")
@:uextern @:uclass extern class UCheatManager extends unreal.UObject {
  
  /**
    Debug camera - used to have independent camera without stopping gameplay
  **/
  @:uproperty public var DebugCameraControllerClass : unreal.TSubclassOf<unreal.ADebugCameraController>;
  
  /**
    Debug camera - used to have independent camera without stopping gameplay
  **/
  @:uproperty public var DebugCameraControllerRef : unreal.ADebugCameraController;
  
  /**
    Pause the game for Delay seconds.
  **/
  @:ufunction public function FreezeFrame(Delay : unreal.Float32) : Void;
  
  /**
    Teleport to surface player is looking at.
  **/
  @:ufunction public function Teleport() : Void;
  
  /**
    Scale the player's size to be F * default size.
  **/
  @:ufunction public function ChangeSize(F : unreal.Float32) : Void;
  
  /**
    Pawn can fly.
  **/
  @:ufunction public function Fly() : Void;
  
  /**
    Return to walking movement mode from Fly or Ghost cheat.
  **/
  @:ufunction public function Walk() : Void;
  
  /**
    Pawn no longer collides with the world, and can fly
  **/
  @:ufunction public function Ghost() : Void;
  
  /**
    Invulnerability cheat.
  **/
  @:ufunction public function God() : Void;
  
  /**
    Modify time dilation to change apparent speed of passage of time. e.g. "Slomo 0.1" makes everything move very slowly, while "Slomo 10" makes everything move very fast.
  **/
  @:ufunction public function Slomo(NewTimeDilation : unreal.Float32) : Void;
  
  /**
    Damage the actor you're looking at (sourced from the player).
  **/
  @:ufunction public function DamageTarget(DamageAmount : unreal.Float32) : Void;
  
  /**
    Destroy the actor you're looking at.
  **/
  @:ufunction public function DestroyTarget() : Void;
  
  /**
    Destroy all actors of class aClass
  **/
  @:ufunction public function DestroyAll(aClass : unreal.TSubclassOf<unreal.AActor>) : Void;
  
  /**
    Destroy all pawns except for the (pawn) target.  If no (pawn) target is found we don't destroy anything.
  **/
  @:ufunction public function DestroyAllPawnsExceptTarget() : Void;
  
  /**
    Destroys (by calling destroy directly) all non-player pawns of class aClass in the level
  **/
  @:ufunction public function DestroyPawns(aClass : unreal.TSubclassOf<unreal.APawn>) : Void;
  
  /**
    Load Classname and spawn an actor of that class
  **/
  @:ufunction public function Summon(ClassName : unreal.FString) : Void;
  
  /**
    Freeze everything in the level except for players.
  **/
  @:ufunction public function PlayersOnly() : Void;
  
  /**
    Make controlled pawn the viewtarget again.
  **/
  @:ufunction public function ViewSelf() : Void;
  
  /**
    View from the point of view of player with PlayerName S.
  **/
  @:ufunction public function ViewPlayer(S : unreal.FString) : Void;
  
  /**
    View from the point of view of AActor with Name ActorName.
  **/
  @:ufunction public function ViewActor(ActorName : unreal.FName) : Void;
  
  /**
    View from the point of view of an AActor of class DesiredClass.  Each subsequent ViewClass cycles through the list of actors of that class.
  **/
  @:ufunction public function ViewClass(DesiredClass : unreal.TSubclassOf<unreal.AActor>) : Void;
  
  /**
    Stream in the given level.
  **/
  @:ufunction public function StreamLevelIn(PackageName : unreal.FName) : Void;
  
  /**
    Load the given level.
  **/
  @:ufunction public function OnlyLoadLevel(PackageName : unreal.FName) : Void;
  
  /**
    Stream out the given level.
  **/
  @:ufunction public function StreamLevelOut(PackageName : unreal.FName) : Void;
  
  /**
    Toggle between debug camera/player camera without locking gameplay and with locking local player controller input.
  **/
  @:ufunction public function ToggleDebugCamera() : Void;
  
  /**
    toggles AI logging
  **/
  @:ufunction public function ToggleAILogging() : Void;
  @:ufunction public function ServerToggleAILogging() : Void;
  
  /**
    Toggle capsule trace debugging. Will trace a capsule from current view point and show where it hits the world
  **/
  @:ufunction public function DebugCapsuleSweep() : Void;
  
  /**
    Change Trace capsule size *
  **/
  @:ufunction public function DebugCapsuleSweepSize(HalfHeight : unreal.Float32, Radius : unreal.Float32) : Void;
  
  /**
    Change Trace Channel *
  **/
  @:ufunction public function DebugCapsuleSweepChannel(Channel : unreal.ECollisionChannel) : Void;
  
  /**
    Change Trace Complex setting *
  **/
  @:ufunction public function DebugCapsuleSweepComplex(bTraceComplex : Bool) : Void;
  
  /**
    Capture current trace and add to persistent list *
  **/
  @:ufunction public function DebugCapsuleSweepCapture() : Void;
  
  /**
    Capture current local PC's pawn's location and add to persistent list *
  **/
  @:ufunction public function DebugCapsuleSweepPawn() : Void;
  
  /**
    Clear persistent list for trace capture *
  **/
  @:ufunction public function DebugCapsuleSweepClear() : Void;
  
  /**
    Test all volumes in the world to the player controller's view location*
  **/
  @:ufunction public function TestCollisionDistance() : Void;
  
  /**
    Builds the navigation mesh (or rebuilds it). *
  **/
  @:ufunction public function RebuildNavigation() : Void;
  
  /**
    Sets navigation drawing distance. Relevant only in non-editor modes. *
  **/
  @:ufunction @:final public function SetNavDrawDistance(DrawDistance : unreal.Float32) : Void;
  
  /**
    Dump online session information
  **/
  @:ufunction public function DumpOnlineSessionState() : Void;
  
  /**
    Dump known party information
  **/
  @:ufunction public function DumpPartyState() : Void;
  
  /**
    Dump known chat information
  **/
  @:ufunction public function DumpChatState() : Void;
  
  /**
    Dump current state of voice chat
  **/
  @:ufunction public function DumpVoiceMutingState() : Void;
  
  /**
    This will move the player and set their rotation to the passed in values.
    We have this version of the BugIt family as it is easier to type in just raw numbers in the console.
  **/
  @:ufunction public function BugItGo(X : unreal.Float32, Y : unreal.Float32, Z : unreal.Float32, Pitch : unreal.Float32, Yaw : unreal.Float32, Roll : unreal.Float32) : Void;
  
  /**
    This function is used to print out the BugIt location.  It prints out copy and paste versions for both IMing someone to type in
    and also a gameinfo ?options version so that you can append it to your launching url and be taken to the correct place.
    Additionally, it will take a screen shot so reporting bugs is a one command action!
  **/
  @:ufunction public function BugIt(ScreenShotDescription : unreal.FString) : Void;
  
  /**
    This will create a BugItGo string for us.  Nice for calling form c++ where you just want the string and no Screenshots *
  **/
  @:ufunction public function BugItStringCreator(ViewLocation : unreal.FVector, ViewRotation : unreal.FRotator, GoString : unreal.PRef<unreal.FString>, LocString : unreal.PRef<unreal.FString>) : Void;
  
  /**
    This will force a flush of the output log to file
  **/
  @:ufunction public function FlushLog() : Void;
  
  /**
    Logs the current location in bugit format without taking screenshot and further routing.
  **/
  @:ufunction public function LogLoc() : Void;
  
  /**
    Translate world origin to this player position
  **/
  @:ufunction @:final public function SetWorldOrigin() : Void;
  
  /**
    Exec function to return the mouse sensitivity to its default value
  **/
  @:ufunction @:final public function SetMouseSensitivityToDefault() : Void;
  
  /**
    Backwards compatibility exec function for people used to it instead of using InvertAxisKey
  **/
  @:ufunction @:final public function InvertMouse() : Void;
  
  /**
    Executes commands listed in CheatScript.ScriptName ini section of DefaultGame.ini
  **/
  @:ufunction @:final public function CheatScript(ScriptName : unreal.FString) : Void;
  
  /**
    BP implementable event for when CheatManager is created to allow any needed initialization.
  **/
  @:ufunction public function ReceiveInitCheatManager() : Void;
  
  /**
    This is the End Play event for the CheatManager
  **/
  @:ufunction public function ReceiveEndPlay() : Void;
  
  /**
    Switch controller to debug camera without locking gameplay and with locking local player controller input
  **/
  @:ufunction private function EnableDebugCamera() : Void;
  
  /**
    Switch controller from debug camera back to normal controller
  **/
  @:ufunction private function DisableDebugCamera() : Void;
  
}

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
package unreal.functionaltesting;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("FunctionalTesting")
@:glueCppIncludes("FunctionalAITest.h")
@:uextern @:uclass extern class AFunctionalAITest extends unreal.functionaltesting.AFunctionalTest {
  @:uproperty private var PendingDelayedSpawns : unreal.TArray<unreal.functionaltesting.FPendingDelayedSpawn>;
  @:uproperty private var SpawnedPawns : unreal.TArray<unreal.APawn>;
  @:uproperty private var SpawnLocationRandomizationRange : unreal.Float32;
  @:uproperty private var SpawnSets : unreal.TArray<unreal.functionaltesting.FAITestSpawnSet>;
  
}

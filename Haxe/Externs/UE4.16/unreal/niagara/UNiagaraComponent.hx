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
package unreal.niagara;


/**
  UNiagaraComponent is the primitive component for a Niagara effect.
  @see ANiagaraActor
  @see UNiagaraEffect
**/
@:umodule("Niagara")
@:glueCppIncludes("NiagaraComponent.h")
@:uextern @:uclass extern class UNiagaraComponent extends unreal.UPrimitiveComponent {
  @:uproperty public var bRenderingEnabled : Bool;
  @:uproperty public var InstanceDataInterfaces : unreal.TArray<unreal.niagara.UNiagaraDataInterface>;
  #if WITH_EDITORONLY_DATA
  @:uproperty public var EditorTemporaries : unreal.TArray<unreal.niagara.UNiagaraDataInterface>;
  #end // WITH_EDITORONLY_DATA
  @:uproperty public var EffectDataInterfaceLocalOverrides : unreal.TArray<unreal.niagara.FNiagaraScriptDataInterfaceInfo>;
  @:uproperty public var EffectParameterLocalOverrides : unreal.TArray<unreal.niagara.FNiagaraVariable>;
  
  /**
    Sets a Niagara Vector3 parameter by name, overriding locally if necessary.
  **/
  @:ufunction @:final public function SetNiagaraVariableVec4(InVariableName : unreal.FString, InValue : unreal.Const<unreal.PRef<unreal.FVector4>>) : Void;
  
  /**
    Sets a Niagara Vector3 parameter by name, overriding locally if necessary.
  **/
  @:ufunction @:final public function SetNiagaraVariableVec3(InVariableName : unreal.FString, InValue : unreal.FVector) : Void;
  
  /**
    Sets a Niagara Vector3 parameter by name, overriding locally if necessary.
  **/
  @:ufunction @:final public function SetNiagaraVariableVec2(InVariableName : unreal.FString, InValue : unreal.FVector2D) : Void;
  
  /**
    Sets a Niagara float parameter by name, overriding locally if necessary.
  **/
  @:ufunction @:final public function SetNiagaraVariableFloat(InVariableName : unreal.FString, InValue : unreal.Float32) : Void;
  
  /**
    Sets a Niagara float parameter by name, overriding locally if necessary.
  **/
  @:ufunction @:final public function SetNiagaraVariableBool(InVariableName : unreal.FString, InValue : Bool) : Void;
  
  /**
    Sets a local Niagara emitter's spawn rate, overriding locally if necessary.
  **/
  @:ufunction @:final public function SetNiagaraEmitterSpawnRate(InEmitterName : unreal.FString, InValue : unreal.Float32) : Void;
  
  /**
    Sets a Niagara static mesh data interface's Source parameter by name, overriding locally if necessary.
  **/
  @:ufunction @:final public function SetNiagaraStaticMeshDataInterfaceActor(InVariableName : unreal.FString, InSource : unreal.AActor) : Void;
  
  /**
    Resets the effect to it's initial pre-simulated state.
  **/
  @:ufunction @:final public function ResetEffect() : Void;
  
  /**
    Called on when an external object wishes to force this effect to reinitialize itself from the effect data.
  **/
  @:ufunction @:final public function ReinitializeEffect() : Void;
  
  /**
    Sets whether or not rendering is enabled for this component.
  **/
  @:ufunction @:final public function SetRenderingEnabled(bInRenderingEnabled : Bool) : Void;
  
}

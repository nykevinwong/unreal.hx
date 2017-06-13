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
  Container for indicating a set of collision channels that this object will collide with.
**/
@:glueCppIncludes("Engine/EngineTypes.h")
@:uextern @:ustruct extern class FCollisionResponseContainer {
  
  /**
    30
  **/
  @:uproperty public var GameTraceChannel18 : unreal.ECollisionResponse;
  
  /**
    28
  **/
  @:uproperty public var GameTraceChannel17 : unreal.ECollisionResponse;
  
  /**
    28
  **/
  @:uproperty public var GameTraceChannel16 : unreal.ECollisionResponse;
  
  /**
    27
  **/
  @:uproperty public var GameTraceChannel15 : unreal.ECollisionResponse;
  
  /**
    26
  **/
  @:uproperty public var GameTraceChannel14 : unreal.ECollisionResponse;
  
  /**
    25
  **/
  @:uproperty public var GameTraceChannel13 : unreal.ECollisionResponse;
  
  /**
    24
  **/
  @:uproperty public var GameTraceChannel12 : unreal.ECollisionResponse;
  
  /**
    23
  **/
  @:uproperty public var GameTraceChannel11 : unreal.ECollisionResponse;
  
  /**
    22
  **/
  @:uproperty public var GameTraceChannel10 : unreal.ECollisionResponse;
  
  /**
    21
  **/
  @:uproperty public var GameTraceChannel9 : unreal.ECollisionResponse;
  
  /**
    20
  **/
  @:uproperty public var GameTraceChannel8 : unreal.ECollisionResponse;
  
  /**
    19
  **/
  @:uproperty public var GameTraceChannel7 : unreal.ECollisionResponse;
  
  /**
    18
  **/
  @:uproperty public var GameTraceChannel6 : unreal.ECollisionResponse;
  
  /**
    17
  **/
  @:uproperty public var GameTraceChannel5 : unreal.ECollisionResponse;
  
  /**
    16
  **/
  @:uproperty public var GameTraceChannel4 : unreal.ECollisionResponse;
  
  /**
    15
  **/
  @:uproperty public var GameTraceChannel3 : unreal.ECollisionResponse;
  
  /**
    14
  **/
  @:uproperty public var GameTraceChannel2 : unreal.ECollisionResponse;
  
  /**
    in order to use this custom channels
    we recommend to define in your local file
    - i.e. #define COLLISION_WEAPON               ECC_GameTraceChannel1
    and make sure you customize these it in INI file by
    
    in DefaultEngine.ini
    
    [/Script/Engine.CollisionProfile]
    GameTraceChannel1="Weapon"
    
    also in the INI file, you can override collision profiles that are defined by simply redefining
    note that Weapon isn't defined in the BaseEngine.ini file, but "Trigger" is defined in Engine
    +Profiles=(Name="Trigger",CollisionEnabled=QueryOnly,ObjectTypeName=WorldDynamic, DefaultResponse=ECR_Overlap, CustomResponses=((Channel=Visibility, Response=ECR_Ignore), (Channel=Weapon, Response=ECR_Ignore)))
  **/
  @:uproperty public var GameTraceChannel1 : unreal.ECollisionResponse;
  
  /**
    12
  **/
  @:uproperty public var EngineTraceChannel6 : unreal.ECollisionResponse;
  
  /**
    11
  **/
  @:uproperty public var EngineTraceChannel5 : unreal.ECollisionResponse;
  
  /**
    10
  **/
  @:uproperty public var EngineTraceChannel4 : unreal.ECollisionResponse;
  
  /**
    9
  **/
  @:uproperty public var EngineTraceChannel3 : unreal.ECollisionResponse;
  
  /**
    8
  **/
  @:uproperty public var EngineTraceChannel2 : unreal.ECollisionResponse;
  
  /**
    Unspecified Engine Trace Channels
  **/
  @:uproperty public var EngineTraceChannel1 : unreal.ECollisionResponse;
  
  /**
    6
  **/
  @:uproperty public var Destructible : unreal.ECollisionResponse;
  
  /**
    5
  **/
  @:uproperty public var Vehicle : unreal.ECollisionResponse;
  
  /**
    4
  **/
  @:uproperty public var PhysicsBody : unreal.ECollisionResponse;
  
  /**
    3
  **/
  @:uproperty public var Camera : unreal.ECollisionResponse;
  
  /**
    2
  **/
  @:uproperty public var Visibility : unreal.ECollisionResponse;
  
  /**
    1.
  **/
  @:uproperty public var Pawn : unreal.ECollisionResponse;
  
  /**
    0
  **/
  @:uproperty public var WorldDynamic : unreal.ECollisionResponse;
  
  /**
    Reserved Engine Trace Channels
    
    Note -        If you change this (add/remove/modify)
                          you should make sure it matches with ECollisionChannel (including DisplayName)
                          They has to be mirrored if serialized
  **/
  @:uproperty public var WorldStatic : unreal.ECollisionResponse;
  
}

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
package unreal.onlinesubsystemutils;


/**
  Types of reservation requests that can be made by this beacon
**/
@:umodule("OnlineSubsystemUtils")
@:glueCppIncludes("PartyBeaconClient.h")
@:uname("EClientRequestType")
@:class @:uextern @:uenum extern enum EClientRequestType {
  
  /**
    None pending
  **/
  NonePending;
  
  /**
    Make a reservation with an existing session
  **/
  ExistingSessionReservation;
  
  /**
    Make an update to an existing reservation
  **/
  ReservationUpdate;
  
  /**
    Reservation to configure an empty server
  **/
  EmptyServerReservation;
  
  /**
    Simple reconnect (checks for existing reservation)
  **/
  Reconnect;
  
  /**
    Abandon the reservation beacon (game specific handling)
  **/
  Abandon;
  
}

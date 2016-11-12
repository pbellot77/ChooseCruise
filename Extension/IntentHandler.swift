//
//  IntentHandler.swift
//  Extension
//
//  Created by Patrick Bellot on 11/12/16.
//  Copyright © 2016 Bell OS, LLC. All rights reserved.
//

import Intents
import UIKit

class IntentHandler: INExtension, INRidesharingDomainHandling {
  
  func handle(listRideOptions intent: INListRideOptionsIntent, completion: @escaping (INListRideOptionsIntentResponse) -> Void) {
    let result = INListRideOptionsIntentResponse(code: .success, userActivity: nil)
    let mini = INRideOption(name: "Mini Cooper", estimatedPickupDate: Date(timeIntervalSinceNow: 1000))
    let accord = INRideOption(name: "Honda Accord", estimatedPickupDate: Date(timeIntervalSinceNow: 800))
    let ferrari = INRideOption(name: "Ferrari F430", estimatedPickupDate: Date(timeIntervalSinceNow: 300))
    
    ferrari.disclaimerMessage = "This is bad for the environment"
    result.expirationDate = Date(timeIntervalSinceNow: 3600)
    result.rideOptions = [mini, accord, ferrari]
    completion(result)
  }
  
  func handle(requestRide intent: INRequestRideIntent, completion: @escaping (INRequestRideIntentResponse) -> Void) {
    
  }
  
  func handle(getRideStatus intent: INGetRideStatusIntent, completion: @escaping (INGetRideStatusIntentResponse) -> Void) {
    let result = INGetRideStatusIntentResponse(code: .success, userActivity: nil)
    completion(result)
  }
  
  func startSendingUpdates(forGetRideStatus intent: INGetRideStatusIntent, to observer: INGetRideStatusIntentResponseObserver) {
    
  }
  
  func stopSendingUpdates(forGetRideStatus intent: INGetRideStatusIntent) {
    
  }
  
  func resolvePickupLocation(forRequestRide intent: INRequestRideIntent, with completion: @escaping (INPlacemarkResolutionResult) -> Void) {
    
  }
  
  func resolveDropOffLocation(forListRideOptions intent: INListRideOptionsIntent, with completion: @escaping (INPlacemarkResolutionResult) -> Void) {
    
  }
  
} // end of class

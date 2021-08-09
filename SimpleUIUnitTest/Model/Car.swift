//
//  Car.swift
//  SimpleUIUnitTest
//
//  Created by NhutHuynh on 8/9/21.
//

import Foundation

enum CarType {
   
    case Sport
    case Economy
    case OffRoad
}

enum CarTransmissionMode {
    
    case Park
    case Drive
    case Reverse
    case Neutral
}

class Car {
    
    var miles = 0
    var type: CarType
    var transmissionMode: CarTransmissionMode
    
    init(type:CarType, transmissionMode:CarTransmissionMode){
         
        self.type = type
        self.transmissionMode = transmissionMode
    }
    
    func start(minutes: Int) {
        
        var speed = 0
        
        if self.type == .Economy && self.transmissionMode == .Drive { speed = 35 }
        
        if self.type == .OffRoad && self.transmissionMode == .Drive { speed = 50 }
        
        if self.type == .Sport && self.transmissionMode == .Drive { speed = 70 }
        
        self.miles = speed * (minutes / 60)
    }
    
    func foo() -> Bool {
        
        return true
    }
}

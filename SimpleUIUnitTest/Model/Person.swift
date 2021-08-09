//
//  Student.swift
//  SimpleUIUnitTest
//
//  Created by NhutHuynh on 8/9/21.
//

import Foundation

class Person: Decodable {
    
    var age : Int?
    var name: String?
    
    init(name: String, age: Int) {
        
        self.age  = age
        self.name = name
    }
}

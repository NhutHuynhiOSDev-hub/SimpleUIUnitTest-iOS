//
//  Service.swift
//  SimpleUIUnitTest
//
//  Created by NhutHuynh on 8/9/21.
//

import Foundation

class Service {
    func getListStudent() -> [Person] {
        
        var students: [Person] = []
        
        guard let url = Bundle.main.url(forResource: "student", withExtension: ".json") else { return students }
        
        do {
            
            let data    = try Data(contentsOf: url)
            let results = try JSONDecoder().decode([Person].self, from: data)
            
            students += results
            
        } catch { print("Can get data, error: \(error)") }
        
        return students
    }
}

//
//  CarTest.swift
//  SimpleUIUnitTestTests
//
//  Created by NhutHuynh on 8/9/21.
//

import XCTest
@testable import SimpleUIUnitTest

class CarTest: XCTestCase {
    
    var jeep    :Car!
    var honda   :Car!
    var ferrari :Car!

    override class func tearDown() {
        super.tearDown()
    }

    override func setUpWithError() throws {
        
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        honda   = Car(type: .Economy, transmissionMode: .Park)
        jeep    = Car(type: .OffRoad, transmissionMode: .Drive)
    }

    override func tearDownWithError() throws {
    
        ferrari = nil
        jeep    = nil
        honda   = nil
    }
    
    func testSportFasterThanJeep() {
       
        let minutes = 60
       
        ferrari.start(minutes: minutes)
        jeep.start(minutes: minutes)
       
        XCTAssertTrue(ferrari.miles >= jeep.miles)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

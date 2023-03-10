//
//  Emulator_Techne_v2_Tests.swift
//  Emulator_Techne_v2_Tests
//
//  Created by Caley Hamilton on 3/10/23.
//

import FirebaseCore
import FirebaseFirestore
import XCTest
@testable import Emulator_Techne


final class Emulator_Techne_v2_Tests: XCTestCase {

    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {

    }

    func testExample() throws {
        let database = Firebase_Service()
        database.add_data()
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}

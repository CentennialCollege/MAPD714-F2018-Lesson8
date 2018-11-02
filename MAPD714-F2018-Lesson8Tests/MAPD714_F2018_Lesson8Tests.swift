//
//  MAPD714_F2018_Lesson8Tests.swift
//  MAPD714-F2018-Lesson8Tests
//
//  Created by Tom Tsiliopoulos on 2018-11-01.
//  Copyright © 2018 CentennialCollege. All rights reserved.
//


import XCTest
import Foundation

@testable import MAPD714_F2018_Lesson8

class MAPD714_F2018_Lesson8Tests: XCTestCase {
    
    var myViewControllerToTest:ViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        myViewControllerToTest = (UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! ViewController)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatNumberOfMoviesIsEqualToEight() {
        
        XCTAssertEqual(myViewControllerToTest.movies.count, 8)
    }
    


}

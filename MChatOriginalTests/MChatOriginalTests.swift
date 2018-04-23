//
//  MChatOriginalTests.swift
//  MChatOriginalTests
//
//  Created by Dedeepya reddy Salla on 4/21/18.
//  Copyright © 2018 Dedeepya reddy Salla. All rights reserved.
//

import XCTest
@testable import MChatOriginal

class MChatOriginalTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    //MARK: MoodData Class Tests
    //Below function is called test case and methods like XCTAssertNotNil are tests
    //to test if initialization succeeds when valid parameters are passed
    func testMoodDataInitializationSucceeds()
    {
        let moodData1 = MoodData.init(emotionImg:"Jam.png", description:"You are happy", moodAsses:"Awesome")
          let moodData2 = MoodData.init(emotionImg:"9", description:"You are happy", moodAsses:"Awesome")
        //This method is expected to not written nil and if by any chance if this method returns nil then your test case has failed
        XCTAssertNotNil(moodData1)
        XCTAssertNotNil(moodData2)
    }
    
    func testMoodInitializationFails()
    {
        let moodData1 = MoodData.init(emotionImg:"", description:"fjalj", moodAsses:"")
          //This method is expected to written nil and if by any chance if this method does not return nil then your test case has failed
        XCTAssertNil(moodData1)
    }
    
    
}

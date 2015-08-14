//
//  TestMyBotsTests.swift
//  TestMyBotsTests
//
//  Created by Anthony Michael Fennell on 8/14/15.
//  Copyright © 2015 Ford Prefect. All rights reserved.
//

import XCTest

class TestMyBotsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testModel() {
        let model = AFModel.sharedModel
        let jake = model.addPerson("Jake", age: 25)
        XCTAssertEqual(model.people.count, 1)
        
        let peopleCount = model.people.count
        model.removePerson(jake)
        
        XCTAssertLessThan(model.people.count, peopleCount)
        
        let tyra = model.addPerson("Tyra", age: 24)
        XCTAssertEqual(tyra.name, "Tyra")
        
        let age = tyra.age
        tyra.birthday()
        XCTAssertLessThan(age, tyra.age)
        
        
        
        XCTAssertEqual(model.foobar(1), "1")
        XCTAssertEqual(model.foobar(7), "7")
        XCTAssertEqual(model.foobar(3), "foo")
        XCTAssertEqual(model.foobar(5), "bar")
        XCTAssertEqual(model.foobar(15), "foobar")
        
    }
    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock() {
//            // Put the code you want to measure the time of here.
//        }
//    }
    
}

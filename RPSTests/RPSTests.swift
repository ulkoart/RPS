//
//  RPSTests.swift
//  RPSTests
//
//  Created by user on 02/12/2019.
//  Copyright © 2019 Artem Ulko. All rights reserved.
//

import XCTest
@testable import RPS

class RPSTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRockResult() {
        let sign = Sign.rock
        print (sign)
        print (sign.emoji)
        XCTAssert(sign. getResult(.rock) == .draw)
    }


}

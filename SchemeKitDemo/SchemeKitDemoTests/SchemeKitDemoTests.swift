//
//  SchemeKitDemoTests.swift
//  SchemeKitDemoTests
//
//  Created by Daniel Chick on 6/21/18.
//  Copyright © 2018 Daniel Chick. All rights reserved.
//

import XCTest
import SchemeKit
@testable import SchemeKitDemo

class SchemeKitDemoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGenericBrowser() {
        let chosenBrowser = BrowserNames.chrome
        let installed = BrowserScheme.isBrowserInstalled(browserName: chosenBrowser)
        XCTAssert(installed)
    }
    
    func testIsChromeInstalled() {
        let installed = BrowserScheme.isChromeInstalled()
        XCTAssert(installed)
    }
    
    func testIsEdgeInstalled() {
        let installed = BrowserScheme.isEdgeInstalled()
        XCTAssert(installed)
    }
    
    func testListInstalledBrowser() {
        let browserList = BrowserScheme.listOfBrowsersInstalled()
        XCTAssertEqual(browserList, ["Safari", "Chrome", "Edge"])
    }
}

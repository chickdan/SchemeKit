import XCTest
@testable import SchemeKit

final class SchemeKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SchemeKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

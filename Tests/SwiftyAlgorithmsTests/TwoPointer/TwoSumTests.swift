import XCTest
@testable import SwiftyAlgorithms

final class TwoSumTests: XCTestCase {
  func testTwoSum() throws {
    XCTAssertEqual(twoSum([2,7,11,15], 9), [0,1])
    XCTAssertEqual(twoSum([3,2,4], 6), [1,2])
    XCTAssertEqual(twoSum([3,3], 6), [0,1])
  }
}

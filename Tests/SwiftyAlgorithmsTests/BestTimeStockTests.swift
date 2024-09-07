import Foundation
import XCTest
@testable import SwiftyAlgorithms

final class SwiftyAlgorithmsTests: XCTestCase {
  func testTwoSum() throws {
    XCTAssertEqual(maxProfit([7,1,5,3,6,4]), 5)
    XCTAssertEqual(maxProfit([7,6,4,3,1]), 0)
  }
}

import Foundation
import XCTest
@testable import SwiftyAlgorithms

final class MaximumSumSubarrayTests: XCTestCase {
    func testMaximumSumsubarray() throws {
      XCTAssertEqual(findMaximumSumSubarray(from: [-2,1,-3,4,-1,2,1,-5,4]), 6)
      XCTAssertEqual(findMaximumSumSubarray(from: [1]), 1)
      XCTAssertEqual(findMaximumSumSubarray(from: [5,4,-1,7,8]), 23)
    }
}

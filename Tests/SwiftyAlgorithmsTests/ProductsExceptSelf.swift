//
//  ProductsExceptSelf.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-08-19.
//

import XCTest
@testable import SwiftyAlgorithms

final class ProductsExceptSelf: XCTestCase {
  func testTwoSum() throws {
    XCTAssertEqual(productExceptSelf([1,2,3,4]), [24,12,8,6])
    XCTAssertEqual(productExceptSelf([-1,1,0,-3,3]), [0,0,9,0,0])
  }
}

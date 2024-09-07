//
//  ContainsDuplicateTests.swift
//  
//
//  Created by Mohshinsha Shahmadar on 2024-08-19.
//

import XCTest
@testable import SwiftyAlgorithms

final class ContainsDuplicateTests: XCTestCase {
  
  func testContainsDuplicate() throws {
    XCTAssertTrue(containsDuplicate([1,2,3,4,5,6,1]))
    XCTAssertFalse(containsDuplicate([1,2,3,4,5,6]))
    XCTAssertFalse(containsDuplicate([1,2]))
    XCTAssertTrue(containsDuplicate([1,1,1,1,1,1,1]))
  }
  
}

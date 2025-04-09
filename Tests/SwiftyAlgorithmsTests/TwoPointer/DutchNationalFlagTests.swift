//
//  DutchNationalFlagTests.swift
//  SwiftyAlgorithms
//
//  Created by Mohshinsha Shahmadar on 2025-04-09.
//

import Testing
@testable import SwiftyAlgorithms

struct DutchNationalFlagTests {
  
  @Test func testDutchNationalFlag() async throws {
    let inputs = [[2,0,2,1,1,0], [2,0,1]]
    let outputs = [[0,0,1,1,2,2], [0,1,2]]
    
    for i in 0..<inputs.count {
      var input = inputs[i]
      #expect(dutchNationalFlag(&input) == outputs[i])
    }
  }
}

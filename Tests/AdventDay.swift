//
//  AdventDay.swift
//  AOC2023 Tests
//
//  Emily Belnavis - emily@emilybelnavis.ca
//
import XCTest

@testable import AdventOfCode

// One off test to validate that basic data load testing works
final class AdventDayTests: XCTestCase {
  func testInitData() throws {
    let challenge = Day00()
    XCTAssertTrue(challenge.data.starts(with: "4514"))
  }
}
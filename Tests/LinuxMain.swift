import XCTest

import BuildableTests

var tests = [XCTestCaseEntry]()
tests += BuildableTests.allTests()
XCTMain(tests)

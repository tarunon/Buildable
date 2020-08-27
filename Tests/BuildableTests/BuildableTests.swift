import XCTest
@testable import Buildable

extension Array: Buildable {
    public static func empty() -> Array {
        []
    }

    public static func merge(_ lhs: Array, _ rhs: Array) -> Array {
        lhs + rhs
    }
}

final class BuildableTests: XCTestCase {
    func testFunctionBuilderWork() {
        let condition = true
        XCTAssertEqual(
            [Int].build {
                [1, 2, 3]
                if condition {
                    [4, 5]
                }
            },
            [1, 2, 3, 4, 5]
        )
        XCTAssertEqual(
            [Int].build {
                [1, 2, 3]
                if !condition {
                    [0]
                } else {
                    [4, 5]
                }
            },
            [1, 2, 3, 4, 5]
        )
    }

    static var allTests = [
        ("testFunctionBuilderWork", testFunctionBuilderWork),
    ]
}

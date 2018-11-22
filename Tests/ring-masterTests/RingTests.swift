
import XCTest
@testable import ring_master

class RingTests: XCTestCase {
    
    func doOperatorComputations<T: Ring>(x: T, y: T) -> T {
        let z = x * y
        let w = z - y;
        let v = -w;
        let u = v + x + y
        return u
    }
    
    func testOperators() {
        _ = doOperatorComputations(x: 5, y: 6)
        _ = doOperatorComputations(x: -4, y: 16)
        let zero = doOperatorComputations(x: 0, y: 0)
        XCTAssertEqual(zero, 0)
    }
    
    static var allTests = [
        ("testOperators", testOperators),
        ]
}

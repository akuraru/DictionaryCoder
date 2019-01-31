import XCTest

struct TModel: Encodable {
    let string: String
}

struct UModel: Decodable {
    let string: String
}

class CodeExchengerTests: XCTestCase {
    func test_TtoUModel() {
        let model = TModel(string: "hoge")
        let result = try! CodeExchenger().exchenge(from: model, to: UModel.self)
        XCTAssertEqual(result.string, "hoge")
    }
}

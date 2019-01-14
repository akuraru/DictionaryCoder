import XCTest

class TestSingleValueDecodingContainer: XCTestCase {
    enum SingleValueTestModel: String, Decodable {
        case first
        case second
    }
    
    struct Post: Decodable {
        let value: SingleValueTestModel
    }
    
    var value: [String: Any] = [:]
    var json: Data!
    override func setUp() {
        super.setUp()
        
        value = ["value":"first"]
        let string = """
            {"value":"first"}
        """
        json = string.data(using: .utf8)!
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testJSON() {
        let model = try! JSONDecoder().decode(Post.self, from: json)
        XCTAssertEqual(model.value, SingleValueTestModel.first)
    }
    
    func testDictionryCoder() {
        let model = try! DictionaryCoder().decode(Post.self, from: value)
        XCTAssertEqual(model.value, SingleValueTestModel.first)
    }
}

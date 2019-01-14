class DictionaryCoder {
    open func decode<T: Decodable>(_ type: T.Type, from dictionary: [String: Any]) throws -> T {
        let value = DictionaryDecoder(dictionary)
        return try! type.init(from: value)
    }
}

class DictionaryDecoder : Decoder {
    public var codingPath: [CodingKey] { get { return [] }}
    public var userInfo: [CodingUserInfoKey : Any] { get { return [:] } }
    
    var d: [String: Any]
    init(_ dictionary: [String: Any]) {
        d = dictionary
    }
    
    public func container<Key>(keyedBy type: Key.Type) throws -> KeyedDecodingContainer<Key> where Key : CodingKey {
        fatalError()
    }
    public func unkeyedContainer() throws -> UnkeyedDecodingContainer {
        fatalError()
    }
    public func singleValueContainer() throws -> SingleValueDecodingContainer {
        fatalError()
    }
}


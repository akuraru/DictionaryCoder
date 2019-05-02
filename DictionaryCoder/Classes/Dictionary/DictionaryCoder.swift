class DictictonayCoder {
    open func encode<Value : Encodable, ResultType>(_ value: Value) throws -> ResultType {
        return try DictionaryEncoder().encode(value)
    }
    
    func decode<T: Decodable>(type: T.Type,topLevel: Any) throws -> T {
        return try DictionaryDecoder().decode(type, from: topLevel)
    }
}

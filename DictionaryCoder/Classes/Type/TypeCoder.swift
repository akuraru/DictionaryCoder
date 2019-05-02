class TypeCoder {
    open func encode<Value : Encodable, ResultType>(_ value: Value) throws -> ResultType {
        return try TypeEncoder().encode(value)
    }
    
    func decode<T: Decodable>(type: T.Type,topLevel: Any) throws -> T {
        return try TypeDecoder().decode(type, from: topLevel)
    }
}

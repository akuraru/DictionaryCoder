class CodeExchenger {
    func exchenge<T: Encodable, U: Decodable>(from: T, to: U.Type) throws -> U {
        let coder = DictictonayCoder()
        return try coder.decode(type: to, topLevel: coder.encode(from))
    }
}

class CodeExchenger {
    func exchenge<T: Encodable, U: Decodable>(from: T, to: U.Type) throws -> U {
        let dictionary = try DictionaryEncoder().encodeToTopLevelContainer(from)
        return try DictionaryDecoder().decode(to, from: dictionary)
    }
}

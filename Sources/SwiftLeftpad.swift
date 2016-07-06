
extension String {
    public func leftpad (length: Int, character: Character = " ") -> String {
        
        var outString: String = self
        
        let extraLength = length - outString.characters.count
        
        var i = 0
        while (i < extraLength) {
            outString.insert(character, atIndex: outString.startIndex)
            i += 1
        }
        
        return outString
    }
}


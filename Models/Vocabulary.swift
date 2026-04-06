import Foundation

struct Vocabulary {
    var words: [String]

    /// - returns: `count` unique, random words from `words`, guaranteed unsorted
   mutating func selectRandomWords(count: Int) -> [String] {
        var newWords = Array(words.shuffled().prefix(count))
        while newWords.sorted() == newWords {
            newWords.shuffle()
        }
       removeSet(s: newWords)
        return newWords
    }
    
    // Each vocabulary word should have a corresponding emoji

    static let icons: [String: String] = [
            "Bear": "🐻",
            "Crab": "🦀",
            "Duck": "🦆",
            "Frog": "🐸",
            "Fox": "🦊",
            "Goose": "🪿",
            "Horse": "🐴",
            "Jellyfish": "🪼",
            "Lizard": "🦎",
            "Octopus": "🐙",
            "Panda": "🐼",
            "Rabbit": "🐰",
            "Sheep": "🐑",
            "Whale": "🐳",
        ]
    mutating func removeSet(s: [String]) {
        words.removeAll {word in
            s.contains(word)
             }
    }
}


extension Vocabulary {
    static let landAnimals = Vocabulary(words: [
        "Bear",
        "Duck",
        "Frog",
        "Fox",
        "Goose",
        "Lizard",
        "Panda",
        "Rabbit",
        "Sheep",
    ])

    static let oceanAnimals = Vocabulary(words: [
        "Crab",
        "Jellyfish",
        "Octopus",
        "Whale",
    ])
}

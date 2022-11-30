// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let round = try? newJSONDecoder().decode(Round.self, from: jsonData)

import Foundation

// MARK: - Round
class Round: Codable, Equatable {
    var roundItems: [RoundItem?]?
    var roundNumber: Int?

    internal init(roundItems: [RoundItem?]?, roundNumber: Int?) {
        self.roundItems = roundItems
        self.roundNumber = roundNumber
    }
    
    enum CodingKeys: String, CodingKey {
        case roundItems = "roundItems"
        case roundNumber = "roundNumber"
    }

    static func == (lhs: Round, rhs: Round) -> Bool {
        return lhs.roundItems == rhs.roundItems &&
        lhs.roundNumber == rhs.roundNumber
    }
}

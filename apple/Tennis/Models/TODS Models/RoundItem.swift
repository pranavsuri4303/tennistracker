// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let roundItem = try? newJSONDecoder().decode(RoundItem.self, from: jsonData)

import Foundation

// MARK: - RoundItem

struct RoundItem: Codable, Equatable {
    var loserGoesTo: GoesTo?
    var position: Int?
    var winnerGoesTo: GoesTo?

    internal init(loserGoesTo: GoesTo?, position: Int?, winnerGoesTo: GoesTo?) {
        self.loserGoesTo = loserGoesTo
        self.position = position
        self.winnerGoesTo = winnerGoesTo
    }

    enum CodingKeys: String, CodingKey {
        case loserGoesTo
        case position
        case winnerGoesTo
    }

    static func == (lhs: RoundItem, rhs: RoundItem) -> Bool {
        return lhs.loserGoesTo == rhs.loserGoesTo &&
            lhs.position == rhs.position &&
            lhs.winnerGoesTo == rhs.winnerGoesTo
    }
}

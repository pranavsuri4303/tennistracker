// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let rankingItem = try? newJSONDecoder().decode(RankingItem.self, from: jsonData)

import Foundation

// MARK: - RankingItem
class RankingItem: Codable, Equatable {
    var person: Person?
    var rank: Int?
    var rankingItemCode: String?
    var result: String?
    var sortOrder: Int?
    var team: Team?
    var type: String?

    internal init(person: Person?, rank: Int?, rankingItemCode: String?, result: String?, sortOrder: Int?, team: Team?, type: String?) {
        self.person = person
        self.rank = rank
        self.rankingItemCode = rankingItemCode
        self.result = result
        self.sortOrder = sortOrder
        self.team = team
        self.type = type
    }
    
    enum CodingKeys: String, CodingKey {
        case person = "person"
        case rank = "rank"
        case rankingItemCode = "rankingItemCode"
        case result = "result"
        case sortOrder = "sortOrder"
        case team = "team"
        case type = "type"
    }

    static func == (lhs: RankingItem, rhs: RankingItem) -> Bool {
        return lhs.person == rhs.person &&
        lhs.rank == rhs.rank &&
        lhs.rankingItemCode == rhs.rankingItemCode &&
        lhs.result == rhs.result &&
        lhs.sortOrder == rhs.sortOrder &&
        lhs.team == rhs.team &&
        lhs.type == rhs.type
    }
}

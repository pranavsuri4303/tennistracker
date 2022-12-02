// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let ranking = try? newJSONDecoder().decode(Ranking.self, from: jsonData)

import Foundation

// MARK: - Ranking

class Ranking: Codable, Equatable {
    var ageCategory: String? //TODO: add parser for age category
    var discipline: Discipline?
    var gender: Gender?
    var name: String?
    var rankingID: String?
    var rankingItems: [RankingItem?]?
    var rankingType: RankingType?
    var wheelchairClass: WheelchairClass?

    internal init(ageCategory: String?, discipline: Discipline?, gender: Gender?, name: String?, rankingID: String?, rankingItems: [RankingItem?]?, rankingType: RankingType?, wheelchairClass: WheelchairClass?) {
        self.ageCategory = ageCategory
        self.discipline = discipline
        self.gender = gender
        self.name = name
        self.rankingID = rankingID
        self.rankingItems = rankingItems
        self.rankingType = rankingType
        self.wheelchairClass = wheelchairClass
    }

    enum CodingKeys: String, CodingKey {
        case ageCategory
        case discipline
        case gender
        case name
        case rankingID = "rankingId"
        case rankingItems
        case rankingType
        case wheelchairClass
    }

    static func == (lhs: Ranking, rhs: Ranking) -> Bool {
        return lhs.ageCategory == rhs.ageCategory &&
            lhs.discipline == rhs.discipline &&
            lhs.gender == rhs.gender &&
            lhs.name == rhs.name &&
            lhs.rankingID == rhs.rankingID &&
            lhs.rankingItems == rhs.rankingItems &&
            lhs.rankingType == rhs.rankingType &&
            lhs.wheelchairClass == rhs.wheelchairClass
    }
}

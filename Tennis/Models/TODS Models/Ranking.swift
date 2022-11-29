// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let ranking = try Ranking(json)

import Foundation

// MARK: - Ranking
class Ranking: Codable {
    var ageCategory, discipline, gender, name: String?
    var rankingID: String?
    var rankingItems: [RankingItem?]?
    var rankingType, wheelchairClass: String?

    enum CodingKeys: String, CodingKey {
        case ageCategory, discipline, gender, name
        case rankingID = "rankingId"
        case rankingItems, rankingType, wheelchairClass
    }

    init(ageCategory: String?, discipline: String?, gender: String?, name: String?, rankingID: String?, rankingItems: [RankingItem?]?, rankingType: String?, wheelchairClass: String?) {
        self.ageCategory = ageCategory
        self.discipline = discipline
        self.gender = gender
        self.name = name
        self.rankingID = rankingID
        self.rankingItems = rankingItems
        self.rankingType = rankingType
        self.wheelchairClass = wheelchairClass
    }
}

// MARK: Ranking convenience initializers and mutators

extension Ranking {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Ranking.self, from: data)
        self.init(ageCategory: me.ageCategory, discipline: me.discipline, gender: me.gender, name: me.name, rankingID: me.rankingID, rankingItems: me.rankingItems, rankingType: me.rankingType, wheelchairClass: me.wheelchairClass)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        ageCategory: String?? = nil,
        discipline: String?? = nil,
        gender: String?? = nil,
        name: String?? = nil,
        rankingID: String?? = nil,
        rankingItems: [RankingItem?]?? = nil,
        rankingType: String?? = nil,
        wheelchairClass: String?? = nil
    ) -> Ranking {
        return Ranking(
            ageCategory: ageCategory ?? self.ageCategory,
            discipline: discipline ?? self.discipline,
            gender: gender ?? self.gender,
            name: name ?? self.name,
            rankingID: rankingID ?? self.rankingID,
            rankingItems: rankingItems ?? self.rankingItems,
            rankingType: rankingType ?? self.rankingType,
            wheelchairClass: wheelchairClass ?? self.wheelchairClass
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

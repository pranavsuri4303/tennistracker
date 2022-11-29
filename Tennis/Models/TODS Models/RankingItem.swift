// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let rankingItem = try RankingItem(json)

import Foundation

// MARK: - RankingItem
class RankingItem: Codable {
    var person: Person?
    var rank: Int?
    var rankingItemCode, result: String?
    var sortOrder: Int?
    var team: Team?
    var type: String?

    init(person: Person?, rank: Int?, rankingItemCode: String?, result: String?, sortOrder: Int?, team: Team?, type: String?) {
        self.person = person
        self.rank = rank
        self.rankingItemCode = rankingItemCode
        self.result = result
        self.sortOrder = sortOrder
        self.team = team
        self.type = type
    }
}

// MARK: RankingItem convenience initializers and mutators

extension RankingItem {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(RankingItem.self, from: data)
        self.init(person: me.person, rank: me.rank, rankingItemCode: me.rankingItemCode, result: me.result, sortOrder: me.sortOrder, team: me.team, type: me.type)
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
        person: Person?? = nil,
        rank: Int?? = nil,
        rankingItemCode: String?? = nil,
        result: String?? = nil,
        sortOrder: Int?? = nil,
        team: Team?? = nil,
        type: String?? = nil
    ) -> RankingItem {
        return RankingItem(
            person: person ?? self.person,
            rank: rank ?? self.rank,
            rankingItemCode: rankingItemCode ?? self.rankingItemCode,
            result: result ?? self.result,
            sortOrder: sortOrder ?? self.sortOrder,
            team: team ?? self.team,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

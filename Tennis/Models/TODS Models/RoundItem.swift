// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let roundItem = try RoundItem(json)

import Foundation

// MARK: - RoundItem
class RoundItem: Codable {
    var loserGoesTo: GoesTo?
    var position: Int?
    var winnerGoesTo: GoesTo?

    init(loserGoesTo: GoesTo?, position: Int?, winnerGoesTo: GoesTo?) {
        self.loserGoesTo = loserGoesTo
        self.position = position
        self.winnerGoesTo = winnerGoesTo
    }
}

// MARK: RoundItem convenience initializers and mutators

extension RoundItem {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(RoundItem.self, from: data)
        self.init(loserGoesTo: me.loserGoesTo, position: me.position, winnerGoesTo: me.winnerGoesTo)
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
        loserGoesTo: GoesTo?? = nil,
        position: Int?? = nil,
        winnerGoesTo: GoesTo?? = nil
    ) -> RoundItem {
        return RoundItem(
            loserGoesTo: loserGoesTo ?? self.loserGoesTo,
            position: position ?? self.position,
            winnerGoesTo: winnerGoesTo ?? self.winnerGoesTo
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

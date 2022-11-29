// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let round = try Round(json)

import Foundation

// MARK: - Round
class Round: Codable {
    var roundItems: [RoundItem?]?
    var roundNumber: Int?

    init(roundItems: [RoundItem?]?, roundNumber: Int?) {
        self.roundItems = roundItems
        self.roundNumber = roundNumber
    }
}

// MARK: Round convenience initializers and mutators

extension Round {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Round.self, from: data)
        self.init(roundItems: me.roundItems, roundNumber: me.roundNumber)
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
        roundItems: [RoundItem?]?? = nil,
        roundNumber: Int?? = nil
    ) -> Round {
        return Round(
            roundItems: roundItems ?? self.roundItems,
            roundNumber: roundNumber ?? self.roundNumber
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

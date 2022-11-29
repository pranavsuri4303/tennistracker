// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tournamentGroup = try TournamentGroup(json)

import Foundation

// MARK: - TournamentGroup
class TournamentGroup: Codable {
    var group: String?

    init(group: String?) {
        self.group = group
    }
}

// MARK: TournamentGroup convenience initializers and mutators

extension TournamentGroup {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(TournamentGroup.self, from: data)
        self.init(group: me.group)
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
        group: String?? = nil
    ) -> TournamentGroup {
        return TournamentGroup(
            group: group ?? self.group
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
